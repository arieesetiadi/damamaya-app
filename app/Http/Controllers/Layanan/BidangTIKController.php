<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Layanan\KeamananInformasi;

class BidangTIKController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Bidang TIK',
            'now' => Carbon::now()->toDateString(),
            'now_time' => Carbon::now()->toTimeString(),
            'chart_period' => [
                'start' => Carbon::now()->subDay('6')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
        ];

        return view('bidang_tik.index', compact('data'));
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
}
