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
        'nama_petugas'
    ];
}
