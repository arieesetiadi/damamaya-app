<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengaduanAnggaran extends Model
{
    use HasFactory;

    protected $table = 'layanan_pengaduan_anggaran';

    protected $fillable = [
        'tanggal',
        'nama_pelapor',
        'topik',
        'kategori',
        'nama_pd',
        'id_user'
    ];

    public static function getCountByDate($date, $kategori = null)
    {
        if (is_null($kategori)) {
            return
                self
                ::whereDate('tanggal', $date->toDateString())
                ->count();
        }

        return
            self
            ::whereDate('tanggal', $date)
            ->where('kategori', $kategori)
            ->count();
    }

    public static function getDataByPeriod($start, $end, $kategori = null)
    {
        if (is_null($kategori)) {
            return
                self
                ::from('layanan_pengaduan_anggaran AS A')
                ->join('users AS B', 'A.id_user', '=', 'B.id')
                ->whereDate('tanggal', '>=', $start)
                ->whereDate('tanggal', '<=', $end)
                ->orderBy('tanggal', 'DESC')
                ->select('A.*', 'B.name')
                ->get();
        }

        return
            self
            ::from('layanan_pengaduan_anggaran AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->whereDate('tanggal', '>=', $start)
            ->whereDate('tanggal', '<=', $end)
            ->where('kategori', $kategori)
            ->orderBy('tanggal', 'DESC')
            ->select('A.*', 'B.name')
            ->get();
    }
}
