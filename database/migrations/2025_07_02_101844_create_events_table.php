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
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->text('title');
            $table->text('short_details')->nullable();
            $table->text('details')->nullable();
            $table->boolean('has_start_date');
            $table->date('event_start_date')->nullable();
            $table->boolean('has_end_date');
            $table->date('event_end_date')->nullable();
            $table->boolean('has_time');
            $table->string('event_schedule',200)->nullable();
            $table->string('event_start_time',50)->nullable();
            $table->string('event_end_time',50)->nullable();
            $table->string('event_images');
            $table->boolean('has_videos');
            $table->string('event_videos')->nullable();
            $table->boolean('has_location');
            $table->string('event_location')->nullable();
            $table->string('show_contents')->nullable();
            $table->customDefaults();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('events');
    }
};
