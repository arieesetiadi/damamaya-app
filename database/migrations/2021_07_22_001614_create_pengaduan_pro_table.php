<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengaduanProTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengaduan_pro', function (Blueprint $table) {
            $table->id();
            $table->date('tgl_pengaduan');
            $table->string('nama_pelapor');
            $table->string('topik');
            $table->string('kategori');
            $table->string('nama_pd');
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
        Schema::dropIfExists('pengaduan_pro');
    }
}
