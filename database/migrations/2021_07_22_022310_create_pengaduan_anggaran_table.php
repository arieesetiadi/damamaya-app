<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengaduanAnggaranTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('layanan_pengaduan_anggaran', function (Blueprint $table) {
            $table->id();
            $table->date('tanggal');
            $table->string('nama_pelapor');
            $table->string('topik');
            $table->string('kategori');
            $table->string('nama_pd');
            $table->foreignId('id_user');
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
        Schema::dropIfExists('pengaduan_anggaran');
    }
}
