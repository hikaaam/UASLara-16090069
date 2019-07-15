<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Articles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table){
            $table->bigIncrements('id')->unique();
            $table->string('judul',40);
            $table->string('foto');
            $table->string('sampul')->nullable();
            $table->string('isi',2000);
            $table->string('kategori');
            $table->boolean('deleted')->default(0);
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
        //
    }
}
