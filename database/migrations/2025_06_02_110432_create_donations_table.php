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
        Schema::create('donations', function (Blueprint $table) {
            $table->id();
            $table->string('full_name',30);
            $table->string('phone',14);
            $table->string('email',30);
            $table->string('country',30);
            $table->string('address',60);
            $table->string('message',200);
            $table->string('donation_type',30);
            $table->float('donation');
            $table->string('currency',10);
            $table->string('payment_method',30);
            $table->boolean('payment_status')->default(0)->comment('0=Unpaid & 1=Paid');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('donations');
    }
};
