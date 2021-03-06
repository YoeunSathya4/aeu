<?php

namespace App\Http\Middleware\Customer;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\CamCyber\IpAddressController as IpAddress;
use Session ;

class AuthenticatedMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::guest()) {
            

            if ($request->ajax() || $request->wantsJson()) {
                return response('Unauthorized.', 401);
            } else {
                //Session::put('oldUrl', $request->url());
                return redirect()->route('customer.login');
            }
        }

        // if(Auth::check()){//Check if has logged in.
        //     $position_id = Auth::user()->position_id;
        //     if( $position_id == 2){ // This user is not an admin.
        //         $is_ip_validated = Auth::user()->is_ip_validated;
        //         if($is_ip_validated == 1){
        //             $ip         = IpAddress::getIP(); 
        //             if($ip == env('IP_ADDRESS', '203.189.141.165')){ //Check if ip address is valid;
        //                 return $next($request);
        //             }else{
        //                //return redirect()->route('customer.auth.not-allow');
        //             }
        //         }else{
        //            return $next($request);
        //         }
            
        //     }else{
        //         return $next($request);
        //     }
        // }
    }
}
