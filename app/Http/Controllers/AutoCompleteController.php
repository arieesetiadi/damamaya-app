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
        // Ambil nama instansi sesuai dengan apa yang diketik oleh user
        return response()->json(
            DB::table('instansi')->where('name', 'like', "%$request->key%")->get()
        );
    }
}
