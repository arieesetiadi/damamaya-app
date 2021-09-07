<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PinjamRuangan extends Model
{
    protected $table = 'layanan_pinjam_ruangan';

    protected $fillable = [
        'tanggal',
        'jam_mulai',
        'jam_selesai',
        'peminjam',
        'keterangan',
        'id_user'
    ];

    use HasFactory;
}
