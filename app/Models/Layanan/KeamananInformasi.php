<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KeamananInformasi extends Model
{
    use HasFactory;

    protected $table = 'layanan_keamanan_informasi';

    protected $fillable = [
        'tanggal',
        'jam',
        'link_website',
        'status_website',
        'keterangan',
        'capture',
        'nama_petugas',
        'is_tindak_lanjut'
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
            ->where('status_website', $kategori)
            ->count();
    }

    public static function getDataByPeriod($start, $end, $kategori = null)
    {
        if (is_null($kategori)) {
            return
                self
                ::whereDate('tanggal', '>=', $start)
                ->whereDate('tanggal', '<=', $end)
                ->where('status_website', '!=', 'Tidak Bisa Diakses')
                ->orderBy('tanggal', 'DESC')
                ->orderBy('jam', 'DESC')
                ->get();
        }

        return
            self
            ::whereDate('tanggal', '>=', $start)
            ->whereDate('tanggal', '<=', $end)
            ->where('status_website', $kategori)
            ->orderBy('tanggal', 'DESC')
            ->orderBy('jam', 'DESC')
            ->get();
    }
}
