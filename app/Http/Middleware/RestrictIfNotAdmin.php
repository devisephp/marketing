<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RestrictIfNotAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @param  string|null $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (
            $request->is('api/devise*')
            &&
            !$request->isMethod('get')
            &&
            Auth::guard($guard)->check()
            &&
            Auth::user()->id > 0)
        {
            return abort(403, 'Action Not Authorized');
        }

        return $next($request);
    }
}
