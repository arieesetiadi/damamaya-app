<?php

namespace Database\Seeders;

use App\Models\Layanan\PengaduanAnggaran;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class PengaduanAnggaranSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $pengaduanAnggaran = [];

        for ($i = 1; $i <= 100; $i++) {
            $pengaduanAnggaran[] = [
                'tanggal' => Carbon::now()->addDay(rand(-7, 0))->toDateString(),
                'nama_pelapor' => 'Nama Pelapor Dummy',
                'topik' => 'Topik Laporan Dummy ',
                'kategori' => 'Pengaduan ' . rand(1, 5),
                'nama_pd' => 'Perangkat Daerah Dummy',
                'id_user' => rand(1, 2)
            ];
        }

        foreach ($pengaduanAnggaran as $pengaduan) {
            PengaduanAnggaran::create($pengaduan);
        }
    }
}
