<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Informasi extends Model
{
    use HasFactory;

    protected $table = "layanan_informasi";

    protected $fillable = ['nama_pd', 'tahun_update', 'id_user'];

    public static function getData()
    {
        return
            self
            ::from('layanan_informasi AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->limit(100)
            ->orderBy('id', 'DESC')
            ->select('A.*', 'B.name')
            ->get();
    }
}
