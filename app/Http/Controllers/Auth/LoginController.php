<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function index()
    {
        return view('auth.login');
    }

    public function store(Request $request)
    {
        // Validasi input dari halaman Login
        $request->validate([
            'username' => 'required|max:255',
            'password' => 'required'
        ]);

        // Jika remember me = on, maka masukan nilai true, selain itu false
        $remember_me = $request->remember_me == "on" ? true : false;

        // Cek apakah proses Login berhasil atau gagal
        if (!Auth::attempt($request->only('username', 'password'), $remember_me)) {
            return back()->with('failed', 'Username atau Password Salah');
        }

        return redirect()->route('dashboard');
    }
}
