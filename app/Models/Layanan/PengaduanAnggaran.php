<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PengaduanAnggaran extends Model
{
    use HasFactory;

    protected $table = 'layanan_pengaduan_anggaran';

    protected $fillable = [
        'tgl_pengaduan',
        'nama_pelapor',
        'topik',
        'kategori',
        'instansi',
    ];
}
