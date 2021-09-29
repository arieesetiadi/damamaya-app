<?php

namespace App\Models\Layanan;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KontenSubdomain extends Model
{
    use HasFactory;

    protected $table = 'layanan_konten_subdomain';

    protected $guarded = ['id'];

    public static function getData($bulan, $tahun)
    {
        return
            [
                self
                    ::from('layanan_konten_subdomain AS A')
                    ->join('users AS B', 'A.id_user', '=', 'B.id')
                    ->join('layanan_konten_subdomain_status AS C', 'A.id', '=', 'C.id_konten')
                    ->whereMonth('tanggal', $bulan)
                    ->whereYear('tanggal', $tahun)
                    ->orderBy('id', 'DESC')
                    ->limit(50)
                    ->select(
                        'A.*',
                        'B.name',
                        'C.name',
                        'C.status',
                        'C.is_uptodate',
                        'C.tanggal_update',
                    )
                    ->get()
            ];
    }

    public static function insertData($data)
    {
        self::create($data);

        return self::orderBy('id', 'DESC')->first()->id;
    }
}
