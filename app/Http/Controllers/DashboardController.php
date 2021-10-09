<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {

        // Kirim data yang dibutuhkan ke halaman Dashboard
        $data = [
            'title' => 'Dashboard',
            'chart_period' => [
                'start' => Carbon::now()->subDay('5')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
        ];

        return view('dashboard', compact('data'));
    }
}
