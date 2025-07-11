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
        Schema::create('jummahs', function (Blueprint $table) {
            $table->id();
            $table->time('jummah_azan_time');
            $table->time('jummah_khutba_time');
            $table->string('jummah_imam');
            $table->string('jummah_khutba_topic');
            $table->text('jummah_khutba_details')->nullable();
            $table->time('jummah_prayer_time');
            $table->date('jummah_date');
            $table->string('image')->nullable();
            $table->customDefaults();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
       Schema::dropIfExists('jummahs');
    }
};
