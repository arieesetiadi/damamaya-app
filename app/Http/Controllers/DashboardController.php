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
                'start' => Carbon::now()->subDay('3')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ],
            'active' => 'dashboard'
        ];

        return view('dashboard', compact('data'));
    }
}
