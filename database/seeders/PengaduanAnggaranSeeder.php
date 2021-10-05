<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Layanan\PengaduanAnggaran;

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
        $kategori = DB::table('kategori_pengaduan')->get();
        $instansi = DB::table('instansi')->get();

        for ($i = 1; $i <= 100; $i++) {
            $pengaduanAnggaran[] = [
                'tanggal' => Carbon::now()->addDay(rand(-7, 0))->toDateString(),
                'nama_pelapor' => 'Nama Pelapor Dummy',
                'topik' => 'Topik Laporan Dummy ',
                'kategori' => $kategori[rand(0, count($kategori) - 1)]->name,
                'nama_pd' => $instansi[rand(0, count($instansi) - 1)]->nama_pd,
                'id_user' => rand(1, 2)
            ];
        }

        foreach ($pengaduanAnggaran as $pengaduan) {
            PengaduanAnggaran::create($pengaduan);
        }
    }
}
