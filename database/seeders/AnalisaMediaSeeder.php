<?php

namespace Database\Seeders;

use App\Models\Layanan\AnalisaMedia;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class AnalisaMediaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $analisaMedia = [];

        for ($i = 1; $i <= 100; $i++) {
            $analisaMedia[] = [
                'tanggal' => Carbon::now()->addDay(rand(-7, 0))->toDateString(),
                'issue_lokal' => 'Issue Lokal Dummy',
                'issue_nasional' => 'Issue Nasional Dummy',
                'kategori' => 'Analisa ' . rand(1, 5),
                'id_user' => rand(1, 2)
            ];
        }

        foreach ($analisaMedia as $analisa) {
            AnalisaMedia::create($analisa);
        }
    }
}
