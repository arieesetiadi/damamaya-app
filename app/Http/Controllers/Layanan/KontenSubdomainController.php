<?php

namespace App\Http\Controllers\Layanan;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Layanan\KontenSubdomain;
use App\Models\Layanan\KontenSubdomainStatus;
use Illuminate\Support\Facades\Auth;

class KontenSubdomainController extends Controller
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
        // Kirim data yang dibutuhkan ke halaman Report Konten Subdomain
        $data = [
            'title' => 'Report | Konten Subdomain',
            'bulan_now' => Carbon::now()->month,
            'tahun_now' => Carbon::now()->year,
            'active' => 'kSubdomain'
        ];

        // Ambil semua nama-nama bulan
        for ($i = 1; $i <= 12; $i++) {
            $data['bulan_list'][] = [
                'name' => Carbon::now()->month($i)->monthName,
                'value' => $i
            ];
        }

        return view('konten_subdomain.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Kirim data yang dibutuhkan ke halaman Tambah Konten Subdomain
        $data = [
            'title' => 'Input | Konten Subdomain',
            'bulan_now' => Carbon::now()->month,
            'tahun_now' => Carbon::now()->year,
            'active' => 'kSubdomain'
        ];

        // Ambil semua nama-nama bulan
        for ($i = 1; $i <= 12; $i++) {
            $data['bulan_list'][] = [
                'name' => Carbon::now()->month($i)->monthName,
                'value' => $i
            ];
        }

        return view('konten_subdomain.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validasi input Konten Subdomain
        $request->validate(
            [
                'namaPd' => 'required|max:255'
            ],
            [
                'namaPd.required' => 'Perangkat Daerah is required'
            ]
        );

        // Insert data Konten Subdomain
        $kontenSubdomain = [
            'tanggal' => $request->tanggal,
            'nama_pd' => $request->namaPd,
            'id_user' => Auth::user()->id
        ];


        // Ambil ID dari data yang baru diinsert
        $kontenSubdomainId = KontenSubdomain::insertData($kontenSubdomain);

        $kontenSubdomainStatus = [
            [
                'name' => 'Survey Kepuasan Masyarakat',
                'status' => $request->statusSkm == 'on' ? 1 : 0,
                'is_uptodate' => self::checkIsuptodate($request->tanggalUpdateSkm),
                'tanggal_update' => $request->tanggalUpdateSkm
            ],
            [
                'name' => 'Transparansi Anggaran',
                'status' => $request->statusTa == 'on' ? 1 : 0,
                'is_uptodate' => self::checkIsuptodate($request->tanggalUpdateTa),
                'tanggal_update' => $request->tanggalUpdateTa
            ],
            [
                'name' => 'Foto Kegiatan',
                'status' => $request->statusFk == 'on' ? 1 : 0,
                'is_uptodate' => self::checkIsuptodate($request->tanggalUpdateFk),
                'tanggal_update' => $request->tanggalUpdateFk
            ],
            [
                'name' => 'Berita',
                'status' => $request->statusBerita == 'on' ? 1 : 0,
                'is_uptodate' => self::checkIsuptodate($request->tanggalUpdateBerita),
                'tanggal_update' => $request->tanggalUpdateBerita
            ],
            [
                'name' => 'Struktur Organisasi',
                'status' => $request->statusSo == 'on' ? 1 : 0,
                'is_uptodate' => $request->isUptodateSo == 'on' ? 1 : 0,
                'tanggal_update' => null

            ],
            [
                'name' => 'Foto Pimpinan',
                'status' => $request->statusFp == 'on' ? 1 : 0,
                'is_uptodate' => $request->isUptodateFp == 'on' ? 1 : 0,
                'tanggal_update' => null
            ],
            [
                'name' => 'Tupoksi',
                'status' => $request->statusTupoksi == 'on' ? 1 : 0,
                'is_uptodate' => $request->isUptodateTupoksi == 'on' ? 1 : 0,
                'tanggal_update' => null
            ],
            [
                'name' => 'Agenda',
                'status' => $request->statusAgenda == 'on' ? 1 : 0,
                'is_uptodate' => $request->isUptodateAgenda == 'on' ? 1 : 0,
                'tanggal_update' => null
            ]
        ];

        // Insert status konten subdomain
        foreach ($kontenSubdomainStatus as $status) {
            KontenSubdomainStatus::create([
                'id_konten' => $kontenSubdomainId,
                'name' => $status['name'],
                'status' => $status['status'],
                'is_uptodate' => $status['is_uptodate'],
                'tanggal_update' => $status['tanggal_update']
            ]);
        }

        return redirect()->route('konten-subdomain.index')->with('success', 'Berhasil Menambah Konten Subdomain');
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

    public static function report(Request $request)
    {
        // Ambil data Konten Subdomain yang bulan dan tahunnya sesuai filter
        $report['data'] = KontenSubdomain::getData($request->bulan, $request->tahun);


        // Ambil status dari masing masing Konten Subdomain
        foreach ($report['data'] as $data) {
            $report['status'][] = KontenSubdomain::getStatus($data->id);
        }

        return response()->json($report);
    }

    public function excell(Request $request)
    {
        // Ambil data Konten Subdomain yang bulan dan tahunnya sesuai filter
        $data['data'] = KontenSubdomain::getData($request->bulan, $request->tahun);

        // Ambil status dari masing masing Konten Subdomain
        foreach ($data['data'] as $dt) {
            $data['status'][] = KontenSubdomain::getStatus($dt->id);
        }

        $data['bulan'] = $request->bulan;
        $data['tahun'] = $request->tahun;

        for ($i = 1; $i <= 12; $i++) {
            $data['daftarBulan'][] = Carbon::now()->month($i)->isoFormat('MMMM');
        }

        return view('konten_subdomain.export_excell', compact('data'));
    }

    public static function checkIsuptodate($date)
    {
        if (!is_null($date)) {
            $year = Carbon::make($date)->year;
            $yearNow = Carbon::now()->year;

            return ($year == $yearNow) ? 1 : 0;
        }

        return 0;
    }
}
