<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comtacts', function (Blueprint $table) {
            $table->increments('id', 11);
            $table->integer('faculty_id')->unsigned()->index()->nullable();
            $table->foreign('faculty_id')->references('id')->on('faculties')->onDelete('cascade');
            $table->text('en_content');
            $table->text('kh_content');
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
        Schema::dropIfExists('comtacts');
    }
}
