<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKontenSubdomainStatusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('layanan_konten_subdomain_status', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_konten');
            $table->string('name');
            $table->boolean('status');
            $table->boolean('is_uptodate')->nullable();
            $table->date('tanggal_update')->nullable();
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
        Schema::dropIfExists('layanan_konten_subdomain_status');
    }
}
