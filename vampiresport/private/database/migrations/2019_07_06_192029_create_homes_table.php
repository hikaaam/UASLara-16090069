<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHomesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('footer',100);
            $table->string('logo',150);
            $table->string('slider1',150);
            $table->string('slider2',150);
            $table->string('slider3',150);
            $table->integer('paginate');
            $table->integer('mostread');
            $table->string('facebook',200)->nullable();
            $table->string('whatsapp',200)->nullable();
            $table->string('twitter',200)->nullable();
            $table->string('instagram',200)->nullable();
            $table->string('youtube',200)->nullable();
            $table->string('telegram',200)->nullable();
            $table->integer('visitor');
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
        Schema::dropIfExists('homes');
    }
}
