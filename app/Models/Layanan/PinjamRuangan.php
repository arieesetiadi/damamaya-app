<?php

namespace App\Models\Layanan;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PinjamRuangan extends Model
{
    use HasFactory;

    protected $table = 'layanan_pinjam_ruangan';

    protected $fillable = [
        'tanggal',
        'jam_mulai',
        'jam_selesai',
        'peminjam',
        'keterangan',
        'id_user'
    ];

    public static function getCountByDate($date)
    {
        $nowTime = Carbon::now()->toTimeString();
        $nowDate = Carbon::now()->toDateString();
        $data = [];

        $data['activeCounts'] = self
            ::whereDate('tanggal', $date)
            ->where([
                ['tanggal', '>=', $nowDate],
                // ['jam_selesai', '<=', $nowTime]
            ])
            ->count();

        $data['counts'] = self
            ::whereDate('tanggal', $date)
            ->count();

        return $data;
    }

    public static function getDataByDate($date)
    {
        $nowTime = Carbon::now()->toTimeString();
        $nowDate = Carbon::now()->toDateString();

        return
            self
            ::from('layanan_pinjam_ruangan AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->whereDate('tanggal', $date)
            // ->where([
            //     ['tanggal', '>=', $nowDate],
            //     // ['jam_selesai', '<=', $nowTime]
            // ])
            ->orderBy('A.jam_mulai', 'ASC')
            ->select('A.*', 'B.name')
            ->get();
    }

    public static function validatePinjaman($tanggal, $jamMulai, $jamSelesai)
    {
        // Metode asal asal
        $pinjaman = self
            ::whereDate('tanggal', $tanggal)
            ->get();

        foreach ($pinjaman as $p) {
            if ($jamMulai < $p->jam_mulai) {
                $rules =
                    ($p->jam_mulai >= $jamMulai) &&
                    ($p->jam_mulai < $jamSelesai)
                    ||
                    ($p->jam_selesai >= $jamMulai) &&
                    ($p->jam_selesai <= $jamSelesai);
            } else if ($jamMulai >= $p->jam_mulai) {
                $rules =
                    ($jamMulai >= $p->jam_mulai) &&
                    ($jamMulai < $p->jam_selesai)
                    ||
                    ($jamSelesai >= $p->jam_mulai) &&
                    ($jamSelesai <= $p->jam_selesai);
            }

            if ($rules) {
                return false;
            }
        }

        // Metode dengan Looping Period

        return true;
    }
}
