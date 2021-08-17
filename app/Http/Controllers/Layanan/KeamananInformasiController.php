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
            'now_time' => Carbon::now()->toTimeString()
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

    public static function report(Request $request)
    {
        $report = [];

        // Ambil tanggal Start dan End untuk menentukan periode Chart
        $start = Carbon::createFromFormat('Y-m-d', $request->start_date);
        $end = Carbon::createFromFormat('Y-m-d', $request->end_date);
        $periods = CarbonPeriod::create($start, $end);

        // Looping sebanyak periode tanggal
        foreach ($periods as $period) {
            switch ($request->kategori) {
                case 'Normal':
                    // Data Chart Berstatus Normal
                    $report['counts']['normal'][] = KeamananInformasi
                        ::whereDate('tanggal', $period->toDateString())
                        ->where('status_website', 'Normal')
                        ->count();

                    // Data untuk Table yang berstatus Normal
                    $report['data'] = KeamananInformasi
                        ::whereDate('tanggal', '>=', $start)
                        ->whereDate('tanggal', '<=', $end)
                        ->where('status_website', 'Normal')
                        ->orderBy('tanggal', 'DESC')
                        ->get();
                    break;

                case 'Deface':
                    // Data Chart Berstatus Deface
                    $report['counts']['deface'][] = KeamananInformasi
                        ::whereDate('tanggal', $period->toDateString())
                        ->where('status_website', 'Deface')
                        ->count();

                    // Data untuk Table yang berstatus Deface
                    $report['data'] = KeamananInformasi
                        ::whereDate('tanggal', '>=', $start)
                        ->whereDate('tanggal', '<=', $end)
                        ->where('status_website', 'Deface')
                        ->orderBy('tanggal', 'DESC')
                        ->get();
                    break;

                case 'Tidak Bisa Diakses':
                    // Data Chart Berstatus Tidak Bisa Diakses
                    $report['counts']['tidak_bisa_diakses'][] = KeamananInformasi
                        ::whereDate('tanggal', $period->toDateString())
                        ->where('status_website', 'Tidak Bisa Diakses')
                        ->count();

                    // Data untuk Table yang berstatus Tidak Bisa Diakses
                    $report['data'] = KeamananInformasi
                        ::whereDate('tanggal', '>=', $start)
                        ->whereDate('tanggal', '<=', $end)
                        ->where('status_website', 'Tidak Bisa Diakses')
                        ->orderBy('tanggal', 'DESC')
                        ->get();
                    break;

                default:
                    // Data Chart Semua Status
                    $report['counts']['normal'][] = KeamananInformasi
                        ::whereDate('tanggal', $period->toDateString())
                        ->where('status_website', 'Normal')
                        ->count();
                    $report['counts']['deface'][] = KeamananInformasi
                        ::whereDate('tanggal', $period->toDateString())
                        ->where('status_website', 'Deface')
                        ->count();
                    $report['counts']['tidak_bisa_diakses'][] = KeamananInformasi
                        ::whereDate('tanggal', $period->toDateString())
                        ->where('status_website', 'Tidak Bisa Diakses')
                        ->count();

                    // Data untuk Table untuk semua Status
                    $report['data'] = KeamananInformasi
                        ::whereDate('tanggal', '>=', $start)
                        ->whereDate('tanggal', '<=', $end)
                        ->orderBy('tanggal', 'DESC')
                        ->get();
            }

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $period->isoFormat('dddd - D/M');
        }


        return response()->json($report);
    }
}
