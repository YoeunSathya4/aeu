<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFacultiesNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('faculties_news', function (Blueprint $table) {
            $table->increments('id', 11);
            $table->integer('faculty_id')->unsigned()->index()->nullable();
            $table->foreign('faculty_id')->references('id')->on('faculties')->onDelete('cascade');
            $table->integer('news_id')->unsigned()->index()->nullable();
            $table->foreign('news_id')->references('id')->on('news')->onDelete('cascade');
            $table->integer('creator_id')->unsigned()->index()->nullable();
            $table->foreign('creator_id')->references('id')->on('users');
            $table->integer('updater_id')->unsigned()->index()->nullable();
            $table->integer('deleter_id')->unsigned()->index()->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('faculties_news');
    }
}
