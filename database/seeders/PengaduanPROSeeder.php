<?php

namespace Database\Seeders;

use App\Models\Layanan\PengaduanPRO;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Auth;

class PengaduanPROSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $pengaduanPRO = [];

        for ($i = 1; $i <= 100; $i++) {
            $pengaduanPRO[] = [
                'tanggal' => Carbon::now()->addDay(rand(-7, 0))->toDateString(),
                'nama_pelapor' => 'Nama Pelapor Dummy',
                'topik' => 'Topik Laporan Dummy ',
                'kategori' => 'Pengaduan ' . rand(1, 5),
                'nama_pd' => 'Perangkat Daerah Dummy',
                'id_user' => rand(1, 2)
            ];
        }

        foreach ($pengaduanPRO as $pengaduan) {
            PengaduanPRO::create($pengaduan);
        }
    }
}
