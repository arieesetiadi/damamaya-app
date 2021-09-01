<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
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
        // Ambil tanggal Start dan End untuk menentukan periode Chart
        $start = Carbon::createFromFormat('Y-m-d', $request->start_date);
        $end = Carbon::createFromFormat('Y-m-d', $request->end_date);
        $periods = CarbonPeriod::create($start, $end);

        // Looping sebanyak periode tanggal
        foreach ($periods as $date) {
            // Data Chart Berstatus Tidak Bisa Diakses
            $report['counts'][] = KeamananInformasi::getCountByDate($date, 'Tidak Bisa Diakses');

            // Data untuk Table yang berstatus Tidak Bisa Diakses
            $report['data'] =
                KeamananInformasi::getDataByPeriod($start, $end, 'Tidak Bisa Diakses');

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $date->isoFormat('dddd - D/M');
        }

        return response()->json($report);
    }

    public function storeTindakLanjut()
    {
    }

    public function indexTindakLanjut()
    {
    }
}
