<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKontenSubdomainTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('layanan_konten_subdomain', function (Blueprint $table) {
            $table->id();
            $table->date('tanggal');
            $table->string('nama_pd');
            $table->boolean('survey_kepuasan_masyarakat');
            $table->boolean('agenda');
            $table->boolean('foto_kegiatan');
            $table->boolean('berita');
            $table->boolean('foto_pimpinan');
            $table->boolean('struktur_organisasi');
            $table->boolean('tupoksi');
            $table->boolean('transparansi_anggaran');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('konten_subdomain');
    }
}
