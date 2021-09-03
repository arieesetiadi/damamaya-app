<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use App\Models\Layanan\PengaduanAnggaran;
use Illuminate\Support\Facades\Auth;

class PengaduanAnggaranController extends Controller
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
        // Kirim data yang dibutuhkan ke halaman Report Pengaduan Anggaran
        $data = [
            'title' => 'Pengaduan Anggaran',
            'kategori' => DB::table('kategori_pengaduan')->get(),
            'chart_period' => [
                'start' => Carbon::now()->subDay('6')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
        ];

        return view('pengaduan_anggaran.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Kirim data yang dibutuhkan ke halaman Tambah Pengaduan PRO
        $data = [
            'title' => 'Tambah Pengaduan Anggaran',
            'kategori' => DB::table('kategori_pengaduan')->get(),
            'now' => Carbon::now()->toDateString()
        ];

        return view('pengaduan_anggaran.create', compact('data'));
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
            'nama_pelapor' => 'required|max:255',
            'topik' => 'required|max:255',
            'kategori' => 'required',
            'nama_pd' => 'required'
        ]);

        // Insert data pengaduan anggaran dengan Model
        PengaduanAnggaran::create([
            'tanggal' => $request->tanggal,
            'nama_pelapor' => $request->nama_pelapor,
            'topik' => $request->topik,
            'kategori' => $request->kategori,
            'nama_pd' => $request->nama_pd,
            'id_user' => Auth::user()->id
        ]);

        return redirect()->route('pengaduan-anggaran.index')->with('success', 'Berhasil Menambah Pengaduan');
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
            $report['counts'][] = PengaduanAnggaran::getCountByDate($date, $request->kategori);

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $date->isoFormat('dddd - D/M');
        }

        // Data untuk Tabel
        $report['data'] = PengaduanAnggaran::getDataByPeriod($start, $end, $request->kategori);

        return response()->json($report);
    }
}
