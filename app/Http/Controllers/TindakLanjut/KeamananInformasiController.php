<?php

namespace App\Http\Controllers\TindakLanjut;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Layanan\TindakLanjut;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use App\Http\Controllers\ImageController;
use App\Models\Layanan\KeamananInformasi;

class KeamananInformasiController extends Controller
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
        $data = [
            'title' => 'Report Tindak Lanjut - Keamanan Informasi',
            'tindakLanjut' => TindakLanjut::getDataByBidang('persandian')
        ];

        return view('keamanan_informasi.tindak_lanjut', compact('data'));
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
            'idKeamanan' => 'required',
            'tanggal' => 'required',
            'jam' => 'required',
            'keterangan' => 'required',
            'capture' => 'image|mimes:png,jpg,jpeg,bmp'
        ]);

        // Upload image, sekaligus ambil nama baru dari image untuk insert ke database
        $captureName = ImageController::store(
            $request->file('capture'),
            public_path('img\capture\tindak_lanjut\\')
        );

        // Hitung response time penindak lanjutan
        $idKeamanan = $request->input('idKeamanan');
        $tanggalLaporan = KeamananInformasi::where('id', $idKeamanan)->get()[0]->tanggal;
        $tanggalTindakLanjut = Carbon::createFromFormat('Y-m-d', $request->tanggal);

        $responseTime = $tanggalTindakLanjut->diffInDays($tanggalLaporan);

        // Insert data keamanan informasi dengan Model
        TindakLanjut::create([
            'id_keamanan' => $idKeamanan,
            'tanggal' => $request->tanggal,
            'jam' => $request->jam,
            'keterangan' => $request->keterangan,
            'capture' => $captureName,
            'response_time' => $responseTime,
            'id_user' => Auth::user()->id
        ]);

        KeamananInformasi::find($idKeamanan)->update([
            'is_tindak_lanjut' => 1
        ]);

        return redirect()->route('keamanan-informasi-tindak.index')->with('success', 'Berhasil Melakukan Tindak Lanjut');
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
            $captureName = ImageController::store(
                $request->file('capture'),
                public_path('img\capture\tindak_lanjut\\')
            );

            // Hapus file gambar lama di storage
            $gambar = TindakLanjut::where('id', $request->id)->get()[0]->capture;
            $path = public_path('img\capture\tindak_lanjut\\') . $gambar;
            File::delete($path);

            // Update data keamanan informasi dengan Model
            TindakLanjut::where('id',  $request->id)->update([
                'tanggal' => $request->tanggal,
                'jam' => $request->jam,
                'keterangan' => $request->keterangan,
                'capture' => $captureName,
                'id_user' => Auth::user()->id
            ]);
        } else {
            // Update data keamanan informasi dengan Model
            TindakLanjut::where('id',  $request->id)->update([
                'tanggal' => $request->tanggal,
                'jam' => $request->jam,
                'keterangan' => $request->keterangan,
                'id_user' => Auth::user()->id
            ]);
        }

        return redirect()->route('keamanan-informasi-tindak.index')->with('success', 'Berhasil Menghapus Data Tindak Lanjut');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $tindakLanjut = TindakLanjut::where('id', $request->id);

        // Hapus file gambar di storage
        $gambar = $tindakLanjut->get()[0]->capture;
        $path = public_path('img\capture\tindak_lanjut\\') . $gambar;
        File::delete($path);

        // Ubah is_tindak_lanjut pada Keamanan Informasi menjadi false
        $idKeamanan = $tindakLanjut->get()[0]->id_keamanan;
        // dd($id_keamanan);
        KeamananInformasi::where('id', $idKeamanan)->update([
            'is_tindak_lanjut' => 0
        ]);

        // Hapus data di database tindak lanjut
        $tindakLanjut->delete();

        return redirect()->route('keamanan-informasi-tindak.index')->with('success', 'Berhasil Menghapus Data Tindak Lanjut');
    }
}
