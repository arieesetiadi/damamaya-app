<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AutoCompleteController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getInstansi(Request $request)
    {
        $instansi = [];

        // Ambil nama instansi sesuai dengan apa yang diketik oleh user
        $res = DB::table('instansi')->where('nama_pd', 'like', "%$request->key%")->get('nama_pd');

        foreach ($res as $r) {
            $instansi[] = $r->nama_pd;
        }

        return response()->json($instansi);
    }
}
