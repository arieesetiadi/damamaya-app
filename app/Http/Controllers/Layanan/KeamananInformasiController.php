<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\TindakLanjutController;
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
            'nowTime' => Carbon::now()->toTimeString(),
            'periodStart' => Carbon::now()->subDay('6')->toDateString(),
            'periodEnd' => Carbon::now()->toDateString()
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
            'nowTime' => Carbon::now()->toTimeString()
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
            'linkWebsite' => 'required|max:255',
            'statusWebsite' => 'required',
            'capture' => 'image|mimes:png,jpg,jpeg,bmp'
        ]);

        // Upload image, sekaligus ambil nama baru dari image untuk insert ke database
        $captureName = ImageController::store(
            $request->file('capture'),
            public_path('img\capture\laporan\\')
        );

        // Insert data keamanan informasi dengan Model
        KeamananInformasi::create([
            'tanggal' => $request->tanggal,
            'jam' => $request->jam,
            'link_website' => $request->linkWebsite,
            'status_website' => $request->statusWebsite,
            'keterangan' => $request->keterangan,
            'capture' => $captureName,
            'id_user' => Auth::user()->id
        ]);

        if ($request->statusWebsite == 'Tidak Bisa Diakses') {
            return redirect()->route('web-tidak-bisa-diakses.index')->with('success', 'Berhasil Menambah Data Keamanan Informasi');
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
    public function destroy(Request $request, $id)
    {
        $keamananInformasi = KeamananInformasi::where('id', $id);
        $tindakLanjut = TindakLanjut::where('id_keamanan', $id);

        // Hapus file gambar dari Keamanan Informasi
        $keamananInformasiCapture = $keamananInformasi->get()[0]->capture;
        $keamananInformasiPath = public_path('img\capture\laporan\\') . $keamananInformasiCapture;

        File::delete($keamananInformasiPath);
        $keamananInformasi->delete();

        // Jika ada data Tindak Lanjut, hapus file gambar dari Tindak Lanjut
        if ($tindakLanjut->count() > 0) {
            $tindakLanjutCapture = $tindakLanjut->get()[0]->capture;
            $tindakLanjutPath = public_path('img\capture\tindak_lanjut\\') . $tindakLanjutCapture;

            File::delete($tindakLanjutPath);
            $tindakLanjut->delete();
        }

        if ($request->bidang == 'tik') {
            return redirect()->route('tik.index')->with('success', 'Berhasil Menghapus Data Keamanan Informasi');
        }

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

    public function getData(Request $request)
    {
        $id = $request->id;

        $data = TindakLanjut::where('id', $id)->get()[0];

        return response()->json($data);
    }
}
