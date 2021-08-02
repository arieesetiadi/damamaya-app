<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
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
            'kategori' => DB::table('kategori')->get(),
            'chart_period' => [
                'start' => Carbon::now()->subDay('4')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
        ];

        return view('dashboard', compact('data'));
    }
}
