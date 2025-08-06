<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Symfony\Component\HttpKernel\Exception\HttpExceptionInterface;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * The list of the inputs that are never flashed to the session on validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     */
    public function register(): void
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

    public function render($request, Throwable $exception)
    {
        if ($exception instanceof HttpExceptionInterface) {
            $statusCode = $exception->getStatusCode();

            if ($request->is('admin/*')) {
                // Admin error view
                if (view()->exists("backend.errors.$statusCode")) {
                    return response()->view("backend.errors.$statusCode", [], $statusCode);
                }
            } else {
                // Main site error view
                if (view()->exists("frontend.errors.$statusCode")) {
                    return response()->view("frontend.errors.$statusCode", [], $statusCode);
                }
            }
        }

        return parent::render($request, $exception);
    }
}
