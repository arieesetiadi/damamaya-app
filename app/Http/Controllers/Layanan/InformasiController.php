<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Layanan\Informasi;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

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
        // Ambil data tahun dalam periode 5 tahun terakhir
        $years = [];
        for ($i = 0; $i < 5; $i++) {
            $years[] = Carbon::now()->year - $i;
        }

        // Kirim data yang dibutuhkan ke halaman Report Layana  Informasi
        $data = [
            'title' => 'Report | Layanan Informasi',
            'informasi' => Informasi::getData(),
            'years' => array_reverse($years),
            'instansi' => DB::table('instansi')->orderBy('nama_pd', 'ASC')->get(),
            'active' => 'lInformasi'
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
            'title' => 'Input | Layanan Informasi',
            'active' => 'lInformasi'
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
            'nama_pd' => 'required',
            'tahun_update' => 'required',
        ]);

        // Insert data layanan informasi dengan Model
        Informasi::create([
            'nama_pd' => $request->nama_pd,
            'tahun_update' => $request->tahun_update,
            'id_user' => Auth::user()->id
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
}
