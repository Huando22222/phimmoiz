<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CustomersMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {

        // if (!Auth::guard('cus')->check()) {
        //     return redirect()->route('login2')->with('no','Vui lòng đăng nhập');
        // }elseif(Auth::guard('cus')->user()->status == 0){
        //     Auth::guard('cus')->logout();
        //     return redirect()->route('login2')->with('no',' Tài khoản chủa bạn chưa được kích hoạt');
        // }

        // return $next($request);
    }
}
