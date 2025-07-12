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
        Schema::create('about_us', function (Blueprint $table) {
            $table->id();
            $table->string('about_us_title')->nullable();
            $table->text('short_details')->nullable();
            $table->text('details')->nullable();
            $table->string('email',50)->nullable();
            $table->string('phone',20)->nullable();
            $table->text('address')->nullable();
            $table->string('image1')->nullable();
            $table->string('image2')->nullable();
            $table->customDefaults();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('about_us');
    }
};
