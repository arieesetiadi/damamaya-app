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
        'id_user'
    ];


    public static function getData()
    {
        return
            self
            ::from('layanan_tindak_lanjut AS A')
            ->join(
                'layanan_keamanan_informasi AS B',
                'A.id_keamanan',
                '=',
                'B.id'
            )
            ->join(
                'users AS C',
                'A.id_user',
                '=',
                'C.id'
            )
            ->orderBy('tanggal', 'DESC')
            ->orderBy('jam', 'DESC')
            ->select(
                'A.*',
                'B.link_website',
                'B.jam AS jam_laporan',
                'B.tanggal AS tanggal_laporan',
                'C.name as name'
            )
            ->get();
    }
}
