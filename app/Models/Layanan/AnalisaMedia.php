<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AnalisaMedia extends Model
{
    use HasFactory;

    protected $table = 'layanan_analisa_media';

    protected $fillable = [
        'tanggal',
        'issue_lokal',
        'issue_nasional',
        'kategori',
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
                ::from('layanan_analisa_media AS A')
                ->join(
                    'users AS B',
                    'A.id_user',
                    '=',
                    'B.id'
                )
                ->whereDate('tanggal', '>=', $start)
                ->whereDate('tanggal', '<=', $end)
                ->orderBy('id', 'DESC')
                ->limit(50)
                ->select('A.*', 'B.name')
                ->get();
        }

        return
            self
            ::from('layanan_analisa_media AS A')
            ->join(
                'users AS B',
                'A.id_user',
                '=',
                'B.id'
            )
            ->whereDate('tanggal', '>=', $start)
            ->whereDate('tanggal', '<=', $end)
            ->where('kategori', $kategori)
            ->orderBy('id', 'DESC')
            ->limit(50)
            ->select('A.*', 'B.name')
            ->get();
    }
}
