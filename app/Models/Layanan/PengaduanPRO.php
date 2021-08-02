<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengaduanPRO extends Model
{
    use HasFactory;

    protected $table = 'layanan_pengaduan_pro';

    protected $fillable = [
        'tgl_pengaduan',
        'nama_pelapor',
        'topik',
        'kategori',
        'instansi',
    ];
}
