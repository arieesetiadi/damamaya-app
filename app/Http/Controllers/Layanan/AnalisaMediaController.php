<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Layanan\AnalisaMedia;
use Illuminate\Support\Facades\Auth;

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
            'analisa_media' => AnalisaMedia::all()->reverse(),
            'kategori' => DB::table('kategori_analisa')->get(),
            'chart_period' => [
                'start' => Carbon::now()->subDay('6')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
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
            'now' => Carbon::now()->toDateString()
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
            'issue_lokal' => 'required|max:255',
            'issue_nasional' => 'required|max:255',
            'kategori' => 'required'
        ]);

        // Insert data analisa media dengan Model
        AnalisaMedia::create([
            'tanggal' => $request->tanggal,
            'issue_lokal' => $request->issue_lokal,
            'issue_nasional' => $request->issue_nasional,
            'kategori' => $request->kategori,
            'nama_petugas' => Auth::user()->name,
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
        $start = Carbon::createFromFormat('Y-m-d', $request->start_date);
        $end = Carbon::createFromFormat('Y-m-d', $request->end_date);

        // Looping sebanyak periode tanggal
        foreach (CarbonPeriod::create($start, $end) as $p) {

            // Hitung jumlah data sesuai dengan tanggal dan kategori yang diinputkan
            if ($request->kategori == 'Semua') {
                $report['counts'][] = AnalisaMedia::where(
                    'tanggal',
                    $p->toDateString()
                )->count();

                // Ambil data didalam periode untuk ditampilkan di table
                // $report['data'] = AnalisaMedia::whereBetween(
                //     'tanggal',
                //     [$start->subDay('1'), $end]
                // )
                //     ->orderBy('tanggal', 'DESC')
                //     ->get();
                $report['data'] = AnalisaMedia::where([
                    ['tanggal', '>=', $start],
                    ['tanggal', '<=', $end]
                ])
                    ->orderBy('tanggal', 'DESC')
                    ->get();
            } else {
                $report['counts'][] = AnalisaMedia::where([
                    ['tanggal', $p->toDateString()],
                    ['kategori', $request->kategori]
                ])->count();

                // Ambil data didalam periode sesuai kategori untuk ditampilkan di table
                $report['data'] = AnalisaMedia::where([
                    ['tanggal', '>=', $start],
                    ['tanggal', '<=', $end],
                    ['kategori', $request->kategori]
                ])
                    ->orderBy('tanggal', 'DESC')
                    ->get();
                // $report['data'] = AnalisaMedia::whereBetween(
                //     'tanggal',
                //     [$start->subDay('1'), $end]
                // )->where('kategori', $request->kategori)
                //     ->orderBy('tanggal', 'DESC')
                //     ->get();
            }

            // Ambil tanggal di looping saat ini
            // Tambah 8 jam agar sesuai format UTC +8 Beijing
            $report['dates'][] = $p->addHour('8')->isoFormat('dddd - D MMMM');
        }

        return response()->json($report);
    }
}
