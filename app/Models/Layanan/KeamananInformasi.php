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
        'id_user',
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
                ::from('layanan_keamanan_informasi AS A')
                ->join('users AS B', 'A.id_user', '=', 'B.id')
                ->whereDate('tanggal', '>=', $start)
                ->whereDate('tanggal', '<=', $end)
                ->where('status_website', '!=', 'Tidak Bisa Diakses')
                ->orderBy('id', 'DESC')
                ->orderBy('jam', 'DESC')
                ->limit(50)
                ->select('A.*', 'B.name')
                ->get();
        }

        return
            self
            ::from('layanan_keamanan_informasi AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->whereDate('tanggal', '>=', $start)
            ->whereDate('tanggal', '<=', $end)
            ->where('status_website', $kategori)
            ->orderBy('id', 'DESC')
            ->orderBy('jam', 'DESC')
            ->limit(50)
            ->select('A.*', 'B.name')
            ->get();
    }

    public static function getStatusPeriksa($linkWebsite, $month)
    {
        return self
            ::from('layanan_keamanan_informasi AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->where('link_website', 'https://' . $linkWebsite)
            ->whereMonth('tanggal', $month)
            ->orderBy('tanggal', 'DESC')
            ->orderBy('jam', 'DESC')
            ->select('A.*', 'B.name')
            ->first();
    }
}
