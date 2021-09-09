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

    public static function getCountByDate($date)
    {
        return
            self
            ::whereDate('tanggal', $date)
            ->count();
    }

    public static function getDataByDate($date)
    {
        return
            self
            ::from('layanan_pinjam_ruangan AS A')
            ->join('users AS B', 'A.id_user', '=', 'B.id')
            ->whereDate('tanggal', $date)
            ->select('A.*', 'B.name')
            ->get();
    }
}
