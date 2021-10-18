<?php

namespace Database\Seeders;

use App\Models\Layanan\KeamananInformasi;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KeamananInformasiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $keamananInformasi = [];

        $status = [
            'Normal',
            'Deface',
            'Tidak Bisa Diakses',
            'Lainnya'
        ];

        $linkWebsite = DB::table('website_subdomains')->get('link_website');

        for ($i = 1; $i <= 1000; $i++) {
            $keamananInformasi[] = [
                'tanggal' => Carbon::now()->addDay(rand(-30, 0))->toDateString(),
                'jam' => Carbon::now()->addHour(rand(-7, 7))->toTimeString(),
                'link_website' => 'https://' . $linkWebsite[rand(0, $linkWebsite->count() - 1)]->link_website,
                'status_website' => $status[rand(0, 3)],
                'keterangan' => 'Keterangan Dummy',
                'capture' => 'default-laporan.png',
                'id_user' => rand(1, 2)
            ];
        }

        KeamananInformasi::truncate();

        foreach ($keamananInformasi as $keamanan) {
            KeamananInformasi::create($keamanan);
        }
    }
}
