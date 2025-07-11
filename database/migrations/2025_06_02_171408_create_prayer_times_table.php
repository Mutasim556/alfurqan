<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('prayer_times', function (Blueprint $table) {
            $table->id();
            $table->string('fajr')->nullable();
            $table->string('duha')->nullable();
            $table->string('dhuhr')->nullable();
            $table->string('asr')->nullable();
            $table->string('maghrib')->nullable();
            $table->string('isha')->nullable();
            $table->string('jummah')->nullable();
            $table->date('last_update')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('prayer_times');
    }
};
