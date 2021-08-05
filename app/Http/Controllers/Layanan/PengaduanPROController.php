<?php

namespace App\Http\Controllers\Layanan;

use App\Http\Controllers\ChartController;
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
            'pengaduan_pro' => PengaduanPRO::all()->reverse(),
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
            'kategori' => DB::table('kategori')->get(),
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
            'tgl_pengaduan' => 'required',
            'nama_pelapor' => 'required|max:255',
            'topik' => 'required|max:255',
            'kategori' => 'required',
            'nama_pd' => 'required'
        ]);

        // Insert data pengaduan PRO dengan Model
        PengaduanPRO::create([
            'tgl_pengaduan' => $request->tgl_pengaduan,
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

    public function chart(Request $request)
    {
        $chart = [];

        // Ambil tanggal Start dan End untuk menentukan periode Chart
        $start = Carbon::createFromFormat('Y-m-d', $request->start_date);
        $end = Carbon::createFromFormat('Y-m-d', $request->end_date);

        // Looping sebanyak periode tanggal
        foreach (CarbonPeriod::create($start, $end) as $p) {

            // Hitung jumlah data sesuai dengan tanggal pada looping sekarang
            $chart['counts'][] = PengaduanPRO::where('tgl_pengaduan', $p->toDateString())->count();

            // Ambil tanggal di looping saat ini
            // Tambah 8 jam agar sesuai format UTC +8 Beijing
            $chart['dates'][] = $p->addHour('8')->isoFormat('dddd - D MMMM');
        }

        // Ambil data didalam periode untuk ditampilkan di table
        $chart['data'] = PengaduanPRO::whereBetween(
            'tgl_pengaduan',
            [$start->subDay('1'), $end]
        )->orderBy('tgl_pengaduan', 'DESC')->get();

        // $chart['data'] = PengaduanPRO::where([
        //     ['tgl_pengaduan', '>=', $start],
        //     ['tgl_pengaduan', '<=', $end]
        // ])->orderBy('tgl_pengaduan', 'DESC')->get();

        return response()->json($chart);
    }
}
