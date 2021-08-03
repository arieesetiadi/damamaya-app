<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Layanan\Informasi;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class InformasiController extends Controller
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
        // Kirim data yang dibutuhkan ke halaman Report Layana  Informasi
        $data = [
            'title' => 'Layanan Informasi',
            'informasi' => Informasi::all()->reverse()
        ];

        return view('informasi.index', compact('data'));
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
            'title' => 'Tambah Informasi'
        ];

        return view('informasi.create', compact('data'));
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
            'instansi' => 'required',
            'tahun_update' => 'required',
        ]);

        // Insert data layanan informasi dengan Model
        Informasi::create([
            'instansi' => $request->instansi,
            'tahun_update' => $request->tahun_update,
        ]);

        return redirect()->route('informasi.index')->with('success', 'Berhasil Menambah Layanan Informasi');
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

    public static function chart()
    {
        $chart = [];
        $instansi = DB::table('instansi')->get();
        $tahun_berjalan = Carbon::now()->addHour(8)->year;

        foreach ($instansi as $i => $ins) {
            $chart['instansi'][] = $ins->name;

            $chart['tahun_update'][] =
                Informasi::where('instansi', $ins->name)->get('tahun_update');

            $chart['tahun_berjalan'][] = $tahun_berjalan;
        }

        // $chart = [
        //     'instansi' => $instansi[0]->name,
        //     'tahun_berjalan' => $tahun_berjalan
        // ];

        return response()->json($chart);
    }
}
