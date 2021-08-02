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
        'nama_petugas'
    ];
}
