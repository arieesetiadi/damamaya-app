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
        'instansi',
        'survey_kepuasan_masyarakat',
        'agenda',
        'foto_kegiatan',
        'berita',
        'foto_pimpinan',
        'struktur_organisasi',
        'tupoksi',
        'transparansi_anggaran',
    ];
}
