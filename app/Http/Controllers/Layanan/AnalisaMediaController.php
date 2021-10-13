<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Layanan\AnalisaMedia;
use Illuminate\Support\Facades\Auth;

use function PHPUnit\Framework\isNull;

class AnalisaMediaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        // Kirim data yang dibutuhkan ke halaman Report Analisa Media
        $data = [
            'title' => 'Analisa Media',
            'kategori' => DB::table('kategori_analisa')->get(),
            'chart_period' => [
                'start' => Carbon::now()->subDay('6')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ],
            'active' => 'aMedia'
        ];

        return view('analisa_media.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Kirim data yang dibutuhkan ke halaman Tambah Analisa Media
        $data = [
            'title' => 'Tambah Analisa Media',
            'kategori' => DB::table('kategori_analisa')->get(),
            'now' => Carbon::now()->toDateString(),
            'active' => 'aMedia'
        ];

        return view('analisa_media.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validasi data dari form input
        $request->validate([
            'tanggal' => 'required',
            'isu_lokal' => 'required|max:255',
            'isu_nasional' => 'required|max:255',
            'kategori' => 'required'
        ]);

        // Insert data analisa media dengan Model
        AnalisaMedia::create([
            'tanggal' => $request->tanggal,
            'isu_lokal' => $request->isu_lokal,
            'isu_nasional' => $request->isu_nasional,
            'kategori' => $request->kategori,
            'id_user' => Auth::user()->id,
        ]);

        return redirect()->route('analisa-media.index')->with('success', 'Berhasil Menambah Analisa Media');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function report(Request $request)
    {
        $report = [];

        // Ambil tanggal Start dan End untuk menentukan periode Chart
        $start = Carbon::createFromFormat('Y-m-d', $request->startDate);
        $end = Carbon::createFromFormat('Y-m-d', $request->endDate);
        $periods = CarbonPeriod::create($start, $end);

        foreach ($periods as $date) {
            // Data count untuk Chart 
            $report['counts'][] = AnalisaMedia::getCountByDate($date, $request->kategori);

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $date->isoFormat('dddd - D/M');
        }

        // Data untuk Tabel
        $report['data'] = AnalisaMedia::getDataByPeriod($start, $end, $request->kategori);

        return response()->json($report);
    }
}
