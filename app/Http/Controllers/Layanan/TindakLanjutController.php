<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Layanan\TindakLanjut;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\Facades\Image;
use App\Models\Layanan\KeamananInformasi;

class TindakLanjutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [
            'title' => 'Report Tindak Lanjut',
            'tindak_lanjut' => TindakLanjut::getData(),
            'carbon' => Carbon::now()
        ];

        return view('tindak_lanjut.index', compact('data'));
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
        // Validasi data dari form input
        $request->validate([
            'id_keamanan' => 'required',
            'tanggal' => 'required',
            'jam' => 'required',
            'keterangan' => 'required',
            'capture' => 'image|mimes:png,jpg,jpeg,bmp'
        ]);

        // Upload image, sekaligus ambil nama baru dari image untuk insert ke database
        $capture_name = self::upload_image($request->file('capture'));

        // Insert data keamanan informasi dengan Model
        TindakLanjut::create([
            'id_keamanan' => $request->id_keamanan,
            'tanggal' => $request->tanggal,
            'jam' => $request->jam,
            'keterangan' => $request->keterangan,
            'capture' => $capture_name,
            'nama_petugas' => Auth::user()->name
        ]);

        KeamananInformasi::find($request->id_keamanan)->update([
            'is_tindak_lanjut' => 1
        ]);

        return redirect()->route('keamanan-informasi.index')->with('success', 'Berhasil Melakukan Tindak Lanjut');
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

    public static function upload_image($image)
    {
        // Buat nama baru untuk file gambar
        $capture_name = strtolower(
            time() . '_' . $image->getClientOriginalName()
        );

        $capture_object = Image::make($image);

        // Resize gambar jika diatas  1MB
        if ($capture_object->filesize() > 1000000) {
            $capture_object->resize(1080, 1080, function ($constraint) {
                $constraint->aspectRatio();
            });
        }

        // Save gambar ke path tujuan
        $capture_object->save(
            public_path('img\capture\\') .  $capture_name
        );

        return $capture_name;
    }
}
