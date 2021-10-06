<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        // Kirim data yang dibutuhkan ke halaman Users
        $data = [
            'title' => 'Users',
            'users' => User::all()
        ];

        return view('user.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Kirim data yang dibutuhkan ke halaman Tambah Users
        $data = [
            'title' => 'Tambah User',
            'roles' => Role::all()
        ];

        return view('user.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validasi data dari form input
        $request->validate([
            'username' => 'required|max:255|unique:users',
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|confirmed',
            'role' => 'required',
            'gender' => 'required'
        ]);

        // Insert data User dengan Model
        User::create([
            'username' => $request->username,
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role_id' => $request->role,
            'gender' => $request->gender,
        ]);

        return redirect()->route('user.index')->with('success', 'Berhasil Menambah User Baru');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Kirim data yang dibutuhkan ke halaman Edit User
        $data = [
            'title' => 'Ubah User',
            'user' => User::find($id),
            'roles' => Role::all(),
            'genders' => [
                ['l', 'Laki - laki', 'gender1'],
                ['p', 'Perempuan', 'gender2']
            ]
        ];

        return view('user.edit', compact('data'));
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
        // Validasi data dari form input
        $request->validate([
            'username' => 'required|max:255',
            'name' => 'required|max:255',
            'email' => 'required|email|max:255',
            'role' => 'required',
            'gender' => 'required'
        ]);

        // Jika kolom reset password diisi, maka validasi password tersebut
        if (!is_null($request->password)) {
            $request->validate([
                'password' => 'confirmed'
            ]);

            // Update data user beserta password baru
            User::where('id', $id)->update([
                'username' => $request->username,
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'role_id' => $request->role,
                'gender' => $request->gender,
            ]);

            return redirect()->route('user.index')->with('success', 'Berhasil Mengubah Data User');
        }

        // Update data user tanpa perubahan password
        User::find($id)->update([
            'username' => $request->username,
            'name' => $request->name,
            'email' => $request->email,
            'role_id' => $request->role,
            'gender' => $request->gender,
        ]);

        return redirect()->route('user.index')->with('success', 'Berhasil Mengubah Data User');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Hapus data user berdasarkan id tertentu
        User::find($id)->delete();

        return redirect()->route('user.index')->with('success', 'Berhasil Menghapus Data User');
    }

    public function reset(Request $request, $id)
    {
        // Validasi password baru
        $request->validate([
            'password' => 'required|confirmed'
        ]);

        // Reset password user berdasarkan id tertentu
        User::find($id)->update([
            'password' => Hash::make($request->password)
        ]);

        return redirect()->route('user.account')->with('success', 'Berhasil Mengubah Password User');
    }

    public function search(Request $request)
    {
        // Cari nama user berdasarkan keywoard
        $data = [
            'title' => 'Users',
            'users' => User::where('name', 'like', "%$request->keyword%")->get()
        ];

        return view('user.index', compact('data'));
    }

    public function account()
    {
        // Kirim data yang dibutuhkan ke halaman Akun User
        $data = [
            'title' => 'Akun'
        ];

        return view('user.account', compact('data'));
    }
}
