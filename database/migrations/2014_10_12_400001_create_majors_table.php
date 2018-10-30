<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMajorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('majors', function (Blueprint $table) {
            $table->increments('id', 11);
            $table->integer('faculty_id')->unsigned()->index()->nullable();
            $table->foreign('faculty_id')->references('id')->on('faculties')->onDelete('cascade');
            $table->string('en_title', 250)->default('');
            $table->string('kh_title', 250)->default('');
            $table->string('slug', 250)->default('');
            $table->text('en_introduction');
            $table->text('kh_introduction');
            $table->text('en_courses');
            $table->text('kh_courses');
            $table->text('en_courses_bachelor');
            $table->text('kh_courses_bachelor');
            $table->text('en_courses_associate');
            $table->text('kh_courses_associate');
            $table->boolean('is_published')->default(0);
            $table->boolean('is_deleted')->default(0);
             //The field that will appear for almost tables
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
        Schema::dropIfExists('majors');
    }
}
