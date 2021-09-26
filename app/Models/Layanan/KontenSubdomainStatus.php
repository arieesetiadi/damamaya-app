<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KontenSubdomainStatus extends Model
{
    use HasFactory;

    protected $table = 'layanan_konten_subdomain_status';

    protected $guarded = ['id'];

    public static function insertStatus($konten)
    {
        self::create($konten);

        return self::latest()->first()->id;
    }
}
