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
    ];
}
