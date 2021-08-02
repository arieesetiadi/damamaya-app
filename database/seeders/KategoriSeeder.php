<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kategori = [
            'Kategori 1',
            'Kategori 2',
            'Kategori 3',
            'Kategori 4',
            'Kategori 5'
        ];

        foreach ($kategori as $kt) {
            DB::table('kategori')->insert([
                'name' => $kt
            ]);
        }
    }
}
