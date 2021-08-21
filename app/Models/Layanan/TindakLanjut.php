<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TindakLanjut extends Model
{
    use HasFactory;

    protected $table = 'layanan_tindak_lanjut';

    protected $fillable = [
        'id_keamanan',
        'tanggal',
        'jam',
        'keterangan',
        'capture',
        'nama_petugas'
    ];
}
