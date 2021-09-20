<?php

namespace Database\Seeders;

use App\Models\Layanan\Informasi;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LayananInformasiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $layananInformasi = [];
        $instansi = DB::table('instansi')->get('nama_pd');

        foreach ($instansi as $pd) {
            $layananInformasi[] = [
                'nama_pd' => $pd->nama_pd,
                'tahun_update' => rand(2017, 2021),
                'id_user' => rand(1, 2)
            ];
        }

        foreach ($layananInformasi as $informasi) {
            Informasi::create($informasi);
        }
    }
}
