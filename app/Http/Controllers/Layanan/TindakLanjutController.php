<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Layanan\TindakLanjut;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use App\Models\Layanan\KeamananInformasi;

class TindakLanjutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index_persandian()
    {
        $data = [
            'title' => 'Report Tindak Lanjut Bidang Persandian',
            'tindak_lanjut' => TindakLanjut::getDataByBidang('persandian'),
        ];

        return view('tindak_lanjut.index_persandian', compact('data'));
    }

    public function index_tik()
    {
        $data = [
            'title' => 'Report Tindak Lanjut Bidang TIK',
            'tindak_lanjut' => TindakLanjut::getDataByBidang('tik'),
        ];

        return view('tindak_lanjut.index_tik', compact('data'));
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

        // Hitung response time penindak lanjutan
        $tanggal_laporan = KeamananInformasi::where('id', $request->id_keamanan)->get()[0]->tanggal;
        $tanggal_tindak_lanjut = Carbon::createFromFormat('Y-m-d', $request->tanggal);

        $response_time = $tanggal_tindak_lanjut->diffInDays($tanggal_laporan);

        // Insert data keamanan informasi dengan Model
        TindakLanjut::create([
            'id_keamanan' => $request->id_keamanan,
            'tanggal' => $request->tanggal,
            'jam' => $request->jam,
            'keterangan' => $request->keterangan,
            'capture' => $capture_name,
            'response_time' => $response_time,
            'id_user' => Auth::user()->id
        ]);

        KeamananInformasi::find($request->id_keamanan)->update([
            'is_tindak_lanjut' => 1
        ]);

        if ($request->bidang == 'tik') {
            return redirect()->route('tik.index')->with('success', 'Berhasil Melakukan Tindak Lanjut');
        }

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
        // Validasi data dari form input
        $request->validate([
            'tanggal' => 'required',
            'jam' => 'required',
            'keterangan' => 'required',
            'capture' => 'image|mimes:png,jpg,jpeg,bmp'
        ]);

        if (!is_null($request->file('capture'))) {
            // Upload image, sekaligus ambil nama baru dari image untuk insert ke database
            $capture_name = self::upload_image($request->file('capture'));

            // Update data keamanan informasi dengan Model
            TindakLanjut::where('id',  $id)->update([
                'tanggal' => $request->tanggal,
                'jam' => $request->jam,
                'keterangan' => $request->keterangan,
                'capture' => $capture_name,
                'id_user' => Auth::user()->id
            ]);
        } else {
            // Update data keamanan informasi dengan Model
            TindakLanjut::where('id',  $id)->update([
                'tanggal' => $request->tanggal,
                'jam' => $request->jam,
                'keterangan' => $request->keterangan,
                'id_user' => Auth::user()->id
            ]);
        }

        if ($request->bidang == 'tik') {
            return redirect()->route('tindak-lanjut.index-tik')->with('success', 'Berhasil Mengubah Data Tindak Lanjut');
        }

        return redirect()->route('tindak-lanjut.index-persandian')->with('success', 'Berhasil Mengubah Data Tindak Lanjut');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $tindak_lanjut = TindakLanjut::where('id', $id);

        // Hapus file gambar di storage
        $gambar = $tindak_lanjut->get()[0]->capture;
        $path = public_path('img\capture\tindak_lanjut\\') . $gambar;
        File::delete($path);

        // Ubah is_tindak_lanjut pada Keamanan Informasi menjadi false
        $id_keamanan = $tindak_lanjut->get()[0]->id_keamanan;
        // dd($id_keamanan);
        KeamananInformasi::where('id', $id_keamanan)->update([
            'is_tindak_lanjut' => 0
        ]);

        // Hapus data di database tindak lanjut
        $tindak_lanjut->delete();

        if ($request->bidang == 'tik') {
            return redirect()->route('tindak-lanjut.index-tik')->with('success', 'Berhasil Menghapus Data Tindak Lanjut');
        }

        return redirect()->route('tindak-lanjut.index-persandian')->with('success', 'Berhasil Menghapus Data Tindak Lanjut');
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
            public_path('img\capture\tindak_lanjut\\') .  $capture_name
        );

        return $capture_name;
    }

    public function get_data(Request $request)
    {
        $id = $request->id;

        $data = TindakLanjut::where('id', $id)->get()[0];

        return response()->json($data);
    }
}
