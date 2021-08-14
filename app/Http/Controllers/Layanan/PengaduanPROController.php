<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Layanan\PengaduanPRO;
use Carbon\CarbonPeriod;

class PengaduanPROController extends Controller
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

        // Kirim data yang dibutuhkan ke halaman Report Pengaduan PRO
        $data = [
            'title' => 'Pengaduan PRO Denpasar',
            'chart_period' => [
                'start' => Carbon::now()->subDay('6')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
        ];

        return view('pengaduan_pro.index', compact('data'));
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
            'title' => 'Tambah Pengaduan PRO Denpasar',
            'kategori' => DB::table('kategori_pengaduan')->get(),
            'now' => Carbon::now()->toDateString()
        ];

        return view('pengaduan_pro.create', compact('data'));
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

        // Insert data pengaduan PRO dengan Model
        PengaduanPRO::create([
            'tanggal' => $request->tanggal,
            'nama_pelapor' => $request->nama_pelapor,
            'topik' => $request->topik,
            'kategori' => $request->kategori,
            'nama_pd' => $request->nama_pd
        ]);

        return redirect()->route('pengaduan-pro.index')->with('success', 'Berhasil Menambah Pengaduan');
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
        $periods = CarbonPeriod::create($start, $end);

        // Looping sebanyak periode tanggal
        foreach ($periods as $period) {
            // Hitung jumlah data sesuai dengan tanggal pada looping sekarang
            $report['counts'][] = PengaduanPRO::whereDate('tanggal', $period->toDateString())->count();

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $period->isoFormat('dddd - D/M');
        }

        // Ambil data didalam periode untuk ditampilkan di table
        // Menggunakan whereDate karena metode lain ada problem
        $report['data'] = PengaduanPRO
            ::whereDate('tanggal', '>=', $start)
            ->whereDate('tanggal', '<=', $end)
            ->orderBy('tanggal', 'DESC')
            ->get();

        return response()->json($report);
    }
}
