<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Layanan\AnalisaMedia;

class AnalisaMediaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kategori = DB::table('kategori_analisa')->get();
        $analisaMedia = [];

        for ($i = 1; $i <= 1000; $i++) {
            $analisaMedia[] = [
                'tanggal' => Carbon::now()->addDay(rand(-30, 0))->toDateString(),
                'isu' => 'Isu Dummy',
                'kategori' => $kategori[rand(0, count($kategori) - 1)]->name,
                'id_user' => rand(1, 2)
            ];
        }

        AnalisaMedia::truncate();

        foreach ($analisaMedia as $analisa) {
            AnalisaMedia::create($analisa);
        }
    }
}
