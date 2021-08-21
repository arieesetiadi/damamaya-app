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
                ::whereDate('tanggal', '>=', $start)
                ->whereDate('tanggal', '<=', $end)
                ->orderBy('tanggal', 'DESC')
                ->get();
        }

        return
            self
            ::whereDate('tanggal', '>=', $start)
            ->whereDate('tanggal', '<=', $end)
            ->where('kategori', $kategori)
            ->orderBy('tanggal', 'DESC')
            ->get();
    }
}
