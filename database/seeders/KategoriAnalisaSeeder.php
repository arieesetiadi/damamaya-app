<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriAnalisaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kategori = [
            'Isu Lokal',
            'Isu Nasional',
        ];

        DB::table('kategori_analisa')->truncate();

        foreach ($kategori as $kt) {
            DB::table('kategori_analisa')->insert([
                'name' => $kt
            ]);
        }
    }
}
