<?php

namespace Database\Seeders;

use App\Models\Layanan\KontenSubdomain;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class KontenSubdomainSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kontenSubdomain = [];

        for ($i = 1; $i <= 100; $i++) {
            $kontenSubdomain[] = [
                'tanggal' => Carbon::now()->addDay(rand(-7, 0))->toDateString(),
                'nama_pd' => 'Perangkat Daerah Dummy',
                'survey_kepuasan_masyarakat' => rand(0, 1),
                'agenda' => rand(0, 1),
                'foto_kegiatan' => rand(0, 1),
                'berita' => rand(0, 1),
                'foto_pimpinan' => rand(0, 1),
                'struktur_organisasi' => rand(0, 1),
                'tupoksi' => rand(0, 1),
                'transparansi_anggaran' => rand(0, 1),
                'id_user' => rand(1, 2)
            ];
        }

        foreach ($kontenSubdomain as $konten) {
            KontenSubdomain::create($konten);
        }
    }
}
