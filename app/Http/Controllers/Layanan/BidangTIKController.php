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
        foreach ($periods as $period) {
            // Data Chart Berstatus Tidak Bisa Diakses
            $report['counts'][] = KeamananInformasi
                ::whereDate('tanggal', $period->toDateString())
                ->where('status_website', 'Tidak Bisa Diakses')
                ->count();

            // Data untuk Table yang berstatus Tidak Bisa Diakses
            $report['data'] = KeamananInformasi
                ::whereDate('tanggal', '>=', $start)
                ->whereDate('tanggal', '<=', $end)
                ->where('status_website', 'Tidak Bisa Diakses')
                ->orderBy('tanggal', 'DESC')
                ->orderBy('jam', 'DESC')
                ->get();

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $period->isoFormat('dddd - D/M');
        }

        return response()->json($report);
    }
}
