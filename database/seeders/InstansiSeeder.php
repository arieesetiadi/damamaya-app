<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class InstansiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $instansi = [
            'Instansi 1',
            'Instansi 2',
            'Instansi 3',
            'Instansi 4',
            'Instansi 5',
            'Instansi 6',
            'Instansi 7',
            'Instansi 8',
            'Instansi 9',
            'Instansi 10',
        ];

        foreach ($instansi as $ins) {
            DB::table('instansi')->insert([
                'name' => $ins
            ]);
        }
    }
}
