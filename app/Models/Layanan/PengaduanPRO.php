<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengaduanPRO extends Model
{
    use HasFactory;

    protected $table = 'layanan_pengaduan_pro';

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
                ::from('layanan_pengaduan_pro AS A')
                ->join('users AS B', 'A.id_user', '=', 'B.id')
                ->whereDate('tanggal', '>=', $start)
                ->whereDate('tanggal', '<=', $end)
                ->orderBy('id', 'DESC')
                ->limit(50)
                ->select('A.*', 'B.name')
                ->get();
        }

        return
            self
            ::from('layanan_pengaduan_pro AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->whereDate('tanggal', '>=', $start)
            ->whereDate('tanggal', '<=', $end)
            ->where('kategori', $kategori)
            ->orderBy('id', 'DESC')
            ->limit(50)
            ->select('A.*', 'B.name')
            ->get();
    }
}
