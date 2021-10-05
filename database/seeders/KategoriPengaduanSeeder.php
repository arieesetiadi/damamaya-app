<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriPengaduanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kategori = [
            'Wistle Blowing',
            'Konseling Covid 19',
            'Covid 19',
            'Layanan Publik',
            'Lingkungan',
            'Infrastruktur',
            'Lalu Lintas',
            'Sosial & Tenaga Kerja',
            'Klinik Pengelolaan Keuangan Daerah',
            'Lain - lain'
        ];

        DB::table('kategori_pengaduan')->truncate();

        foreach ($kategori as $kt) {
            DB::table('kategori_pengaduan')->insert([
                'name' => $kt
            ]);
        }
    }
}
