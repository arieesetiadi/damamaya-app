<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Layanan\TindakLanjut;
use Illuminate\Support\Facades\File;
use App\Models\Layanan\KeamananInformasi;

class WebTidakBisaDiaksesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [
            'title' => 'Bidang TIK',
            'now' => Carbon::now()->toDateString(),
            'nowTime' => Carbon::now()->toTimeString(),
            'periodStart' => Carbon::now()->subDay('6')->toDateString(),
            'periodEnd' => Carbon::now()->toDateString()
        ];

        return view('web_tidak_bisa_diakses.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //        TindakLanjut::getData()
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
    public function destroy(Request $request, $id)
    {
        $keamananInformasi = KeamananInformasi::where('id', $request->id);
        $tindakLanjut = TindakLanjut::where('id_keamanan', $request->id);

        // Hapus file gambar dari Keamanan Informasi
        $keamananInformasiCapture = $keamananInformasi->get()[0]->capture;
        $keamananInformasiPath = public_path('img\capture\laporan\\') . $keamananInformasiCapture;

        File::delete($keamananInformasiPath);
        $keamananInformasi->delete();

        // Jika ada data Tindak Lanjut, hapus file gambar dari Tindak Lanjut
        if ($tindakLanjut->count() > 0) {
            $tindakLanjutCapture = $tindakLanjut->get()[0]->capture;
            $tindakLanjutPath = public_path('img\capture\tindak_lanjut\\') . $tindakLanjutCapture;

            File::delete($tindakLanjutPath);
            $tindakLanjut->delete();
        }

        return redirect()->route('web-tidak-bisa-diakses.index')->with('success', 'Berhasil Menghapus Data Keamanan Informasi');
    }

    public function report(Request $request)
    {
        // Ambil tanggal Start dan End untuk menentukan periode Chart
        $start = Carbon::createFromFormat('Y-m-d', $request->startDate);
        $end = Carbon::createFromFormat('Y-m-d', $request->endDate);
        $periods = CarbonPeriod::create($start, $end);

        // Looping sebanyak periode tanggal
        foreach ($periods as $date) {
            // Data Chart Berstatus Tidak Bisa Diakses
            $report['counts'][] = KeamananInformasi::getCountByDate($date, 'Tidak Bisa Diakses');

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $date->isoFormat('dddd - D/M');
        }

        // Data untuk Table yang berstatus Tidak Bisa Diakses
        $report['data'] =
            KeamananInformasi::getDataByPeriod($start, $end, 'Tidak Bisa Diakses');


        return response()->json($report);
    }
}
