<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\Facades\Image;
use App\Models\Layanan\KeamananInformasi;
use App\Models\Layanan\TindakLanjut;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

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
        // Kirim data yang dibutuhkan ke halaman Report Keamanan Informasi
        $data = [
            'title' => 'Keamanan Informasi',
            'now' => Carbon::now()->toDateString(),
            'now_time' => Carbon::now()->toTimeString(),
            'chart_period' => [
                'start' => Carbon::now()->subDay('6')->toDateString(),
                'end' => Carbon::now()->toDateString()
            ]
        ];

        return view('keamanan_informasi.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Kirim data yang dibutuhkan ke halaman Tambah Keamanan Informasi
        $data = [
            'title' => 'Tambah Keamanan Informasi',
            'now' => Carbon::now()->toDateString(),
            'now_time' => Carbon::now()->toTimeString()
        ];

        return view('keamanan_informasi.create', compact('data'));
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
            'tanggal' => 'required',
            'jam' => 'required',
            'link_website' => 'required|max:255',
            'status_website' => 'required',
            'capture' => 'image|mimes:png,jpg,jpeg,bmp'
        ]);

        // Upload image, sekaligus ambil nama baru dari image untuk insert ke database
        $capture_name = self::upload_image($request->file('capture'));

        // Insert data keamanan informasi dengan Model
        KeamananInformasi::create([
            'tanggal' => $request->tanggal,
            'jam' => $request->jam,
            'link_website' => $request->link_website,
            'status_website' => $request->status_website,
            'keterangan' => $request->keterangan,
            'capture' => $capture_name,
            'id_user' => Auth::user()->id
        ]);

        if ($request->status_website == 'Tidak Bisa Diakses') {
            return redirect()->route('tik.index')->with('success', 'Berhasil Menambah Data Keamanan Informasi');
        }

        return redirect()->route('keamanan-informasi.index')->with('success', 'Berhasil Menambah Data Keamanan Informasi');
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
        dd([$request->all, $id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $keamanan_informasi = KeamananInformasi::where('id', $id);
        $tindak_lanjut = TindakLanjut::where('id_keamanan', $id);

        // Hapus file gambar di storage
        $gambar_1 = $keamanan_informasi->get()[0]->capture;
        // $gambar_2 = $tindak_lanjut->get()[0]->capture;

        $path_1 = public_path('img\capture\\') . $gambar_1;
        // $path_2 = public_path('img\capture\\') . $gambar_2;

        File::delete($path_1);
        // File::delete($path_2);

        // Hapus data di database tindak lanjut
        $tindak_lanjut->delete();

        // Hapus data utama
        $keamanan_informasi->delete();

        return redirect()->route('keamanan-informasi.index')->with('success', 'Berhasil Menghapus Data Keamanan Informasi');
    }

    public static function report(Request $request)
    {
        $report = [];

        // Ambil tanggal Start dan End untuk menentukan periode Chart
        $start = Carbon::createFromFormat('Y-m-d', $request->start_date);
        $end = Carbon::createFromFormat('Y-m-d', $request->end_date);
        $periods = CarbonPeriod::create($start, $end);

        // Looping sebanyak periode tanggal
        foreach ($periods as $date) {
            switch ($request->kategori) {
                case 'Normal':
                    // Data Chart Berstatus Normal
                    $report['counts']['normal'][] = KeamananInformasi::getCountByDate($date, 'Normal');

                    // Data untuk Table yang berstatus Normal
                    $report['data'] = KeamananInformasi::getDataByPeriod($start, $end, 'Normal');
                    break;

                case 'Deface':
                    // Data Chart Berstatus Deface
                    $report['counts']['deface'][] = KeamananInformasi::getCountByDate($date, 'Deface');

                    // Data untuk Table yang berstatus Deface
                    $report['data'] = KeamananInformasi::getDataByPeriod($start, $end, 'Deface');
                    break;
                default:
                    // Data Chart Semua Status
                    $report['counts']['normal'][] = KeamananInformasi::getCountByDate($date, 'Normal');
                    $report['counts']['deface'][] = KeamananInformasi::getCountByDate($date, 'Deface');

                    // Data untuk Table untuk semua Status
                    $report['data'] = KeamananInformasi::getDataByPeriod($start, $end);
            }

            // Ambil tanggal di looping saat ini
            $report['dates'][] = $date->isoFormat('dddd - D/M');
        }

        return response()->json($report);
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
