<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KontenSubdomain extends Model
{
    use HasFactory;

    protected $table = 'layanan_konten_subdomain';

    protected $fillable = [
        'tanggal',
        'nama_pd',
        'survey_kepuasan_masyarakat',
        'agenda',
        'foto_kegiatan',
        'berita',
        'foto_pimpinan',
        'struktur_organisasi',
        'tupoksi',
        'transparansi_anggaran',
        'id_user'
    ];

    public static function getData($bulan, $tahun)
    {
        return
            self
            ::from('layanan_konten_subdomain AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->whereMonth('tanggal', $bulan)
            ->whereYear('tanggal', $tahun)
            ->orderBy('id', 'DESC')
            ->limit(50)
            ->select('A.*', 'B.name')
            ->get();
    }
}
