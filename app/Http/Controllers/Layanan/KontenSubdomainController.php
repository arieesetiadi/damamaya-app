<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Layanan\KontenSubdomain;

class KontenSubdomainController extends Controller
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
        // Kirim data yang dibutuhkan ke halaman Report Konten Subdomain
        $data = [
            'title' => 'Konten Subdomain',
            'konten_subdomain' => KontenSubdomain::limit(10)->get()->reverse()
        ];

        return view('konten_subdomain.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Kirim data yang dibutuhkan ke halaman Tambah Konten Subdomain
        $data = [
            'title' => 'Tambah Konten Subdomain',
            'now' => Carbon::now()->toDateString()
        ];

        return view('konten_subdomain.create', compact('data'));
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
            'nama_pd' => 'required|max:255'
        ]);

        // Insert data konten subdomain dengan Model
        // Karena tipe data boolean, maka yang diinsert hanya angka 1 atau 0, dengan menggunakan ternary operator
        KontenSubdomain::create([
            'tanggal' => $request->tanggal,
            'nama_pd' => $request->nama_pd,
            'survey_kepuasan_masyarakat' => $request->survey == 'on' ? 1 : 0,
            'agenda' => $request->agenda == 'on' ? 1 : 0,
            'foto_kegiatan' => $request->foto_kegiatan == 'on' ? 1 : 0,
            'berita' => $request->berita == 'on' ? 1 : 0,
            'foto_pimpinan' => $request->foto_pimpinan == 'on' ? 1 : 0,
            'struktur_organisasi' => $request->struktur_organisasi == 'on' ? 1 : 0,
            'tupoksi' => $request->tupoksi == 'on' ? 1 : 0,
            'transparansi_anggaran' => $request->transparansi_anggaran == 'on' ? 1 : 0,
        ]);

        return redirect()->route('konten-subdomain.index')->with('success', 'Berhasil Menambah Konten Subdomain');
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

        for ($i = 0; $i < 7; $i++) {
            // Ambil tanggal dari $i hari kebelakang
            $date = Carbon::now()->subRealDay($i)->toDateString();

            // Ambil jumlah data aduan dan tanggal
            $chart['counts'][] = KontenSubdomain::where('tanggal', $date)->count();
            $chart['dates'][] = Carbon::now()->subRealDay($i)->isoFormat("dddd - D MMMM");
        }

        return response()->json($chart);
    }
}
