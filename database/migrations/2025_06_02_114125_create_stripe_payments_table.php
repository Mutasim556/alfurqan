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
        Schema::create('stripe_payments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('donation_id')->constrained('donations');
            $table->string('session_id');
            $table->string('payment_id')->nullable();
            $table->string('currency1')->nullable();
            $table->string('currency2')->nullable();
            $table->float('amount1')->default(0);
            $table->float('amount2')->default(0);
            $table->float('conversion_rate')->default(0);
            $table->text('receipt_url')->nullable();
            $table->boolean('status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('stripe_payments');
    }
};
