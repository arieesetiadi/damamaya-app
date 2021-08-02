<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\Layanan\KeamananInformasi;

class KeamananInformasiController extends Controller
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
        // Kirim data yang dibutuhkan ke halaman Report Keamanan Informasi
        $data = [
            'title' => 'Keamanan Informasi',
            'keamanan_informasi' => KeamananInformasi::all()->reverse(),
            'chart_period' => [
                'start' => Carbon::now()->subDay('6')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
        ];

        return view('keamanan_informasi.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Kirim data yang dibutuhkan ke halaman Tambah Keamanan Informasi
        $data = [
            'title' => 'Tambah Keamanan Informasi',
            'now' => Carbon::now()->toDateString(),
            'now_time' => Carbon::now()->subHours(16)->toTimeString()
        ];

        return view('keamanan_informasi.create', compact('data'));
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
            'jam' => 'required',
            'link_website' => 'required|max:255',
            'status_website' => 'required',
        ]);

        // Insert data keamanan informasi dengan Model
        KeamananInformasi::create([
            'tanggal' => $request->tanggal,
            'jam' => $request->jam,
            'link_website' => $request->link_website,
            'status_website' => $request->status_website,
            'nama_petugas' => Auth::user()->name
        ]);

        return redirect()->route('keamanan-informasi.index')->with('success', 'Berhasil Menambah Keamanan Informasi');
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

    public static function chart(Request $request)
    {
        $chart = [];

        // Ambil tanggal Start dan End untuk menentukan periode Chart
        $start = Carbon::createFromFormat('Y-m-d', $request->start_date);
        $end = Carbon::createFromFormat('Y-m-d', $request->end_date);

        // Looping sebanyak periode tanggal
        foreach (CarbonPeriod::create($start, $end) as $p) {
            $date = $p->toDateString();

            // Hitung jumlah data sesuai dengan tanggal dan kategori yang diinputkan
            $chart['counts']['normal'][] = KeamananInformasi::where([
                ['tanggal', $date],
                ['status_website', 'Normal']
            ])->count();

            $chart['counts']['deface'][] = KeamananInformasi::where([
                ['tanggal', $date],
                ['status_website', 'Deface']
            ])->count();

            $chart['counts']['tidak_bisa_diakses'][] = KeamananInformasi::where([
                ['tanggal', $date],
                ['status_website', 'Tidak Bisa Diakses']
            ])->count();

            // Ambil tanggal di looping saat ini
            // Tambah 8 jam agar sesuai format UTC +8 Beijing
            $chart['dates'][] = $p->addHour('8')->isoFormat('dddd - D MMMM');
        }

        return response()->json($chart);
    }
}
