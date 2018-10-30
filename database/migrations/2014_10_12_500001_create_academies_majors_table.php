<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAcademiesMajorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('academies_majors', function (Blueprint $table) {
            $table->increments('id', 11);
            $table->integer('academy_id')->unsigned()->index()->nullable();
            $table->foreign('academy_id')->references('id')->on('academic_programs')->onDelete('cascade');
            $table->integer('major_id')->unsigned()->index()->nullable();
            $table->foreign('major_id')->references('id')->on('majors')->onDelete('cascade');
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
        Schema::dropIfExists('academies_majors');
    }
}
