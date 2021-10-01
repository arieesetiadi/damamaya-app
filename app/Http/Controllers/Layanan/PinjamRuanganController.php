<?php

namespace App\Http\Controllers\Layanan;

use App\Http\Controllers\Controller;
use App\Models\Layanan\PinjamRuangan;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PinjamRuanganController extends Controller
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
            'title' => 'Schedule Peminjaman Ruangan',
        ];

        return view('pinjam_ruangan.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = [
            'title' => 'Tambah Peminjaman Ruangan',
            'now' => Carbon::now()->toDateString(),
            'nowTime' => Carbon::now()->toTimeString()
        ];

        return view('pinjam_ruangan.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'tanggal' => 'required',
            'jamMulai' => 'required',
            'durasi' => 'required',
            'peminjam' => 'required',
            'keterangan' => 'required'
        ]);

        $tanggal = Carbon
            ::create($request->tanggal)
            ->toDateString();

        $jamMulai = Carbon
            ::create($request->jamMulai)
            ->toTimeString();

        $jamSelesai = Carbon
            ::create($request->jamMulai)
            ->addHour($request->durasi)
            ->toTimeString();

        $validatePinjaman = PinjamRuangan::validatePinjaman(
            $tanggal,
            $jamMulai,
            $jamSelesai
        );

        if (!$validatePinjaman) {
            return back()->withInput()->with('failed', 'Ruangan Sudah Terpakai');
        }

        PinjamRuangan::create([
            'tanggal' => $request->tanggal,
            'jam_mulai' => $request->jamMulai,
            'jam_selesai' => $jamSelesai,
            'peminjam' => $request->peminjam,
            'keterangan' => $request->keterangan,
            'id_user' => Auth::user()->id,
        ]);

        return redirect()->route('pinjam-ruangan.index')->with('success', 'Berhasil Menambah Peminjaman Ruangan');
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
        dd($id);
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
        echo $id;
        dd($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        dump($id);
        dd($request->all());
    }

    public static function generatePeriods(Carbon $month)
    {
        $startDate = $month->startOfMonth()->toDateString();
        $endDate = $month->endOfMonth()->toDateString();

        return CarbonPeriod::create($startDate, $endDate);
    }

    public function report(Request $request)
    {
        $month = Carbon
            ::now()
            ->addMonth($request->monthCounter);

        $periods = self::generatePeriods($month);

        foreach ($periods as $date) {
            $report['dates'][] = [
                'day' => $date->isoFormat('D'),
                'name' => $date->isoFormat('dddd'),
                'full' => $date->toDateString()
            ];

            $report['pinjamCounts'][] = PinjamRuangan::getCountByDate($date->toDateString());
        }

        $report['month'] = $date->isoFormat('MMMM');
        $report['year'] = $date->isoFormat('YYYY');

        return response()->json($report);
    }

    public function getData(Request $request)
    {
        $date = Carbon::createFromFormat('Y-m-d', $request->date);
        $data = PinjamRuangan::getDataByDate($date);

        return response()->json($data);
    }
}
