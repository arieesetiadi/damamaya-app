<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLayananTindakLanjutTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('layanan_tindak_lanjut', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_keamanan');
            $table->date('tanggal');
            $table->time('jam');
            $table->text('keterangan')->nullable();
            $table->string('capture')->nullable();
            $table->string('nama_petugas');
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
        Schema::dropIfExists('layanan_tindak_lanjut');
    }
}
