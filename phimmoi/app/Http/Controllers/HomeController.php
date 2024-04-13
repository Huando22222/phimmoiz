<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PragmaRX\Tracker\Vendor\Laravel\Facade as Tracker;
use PragmaRX\Tracker\Vendor\Laravel\Support\Session;
use DB;
use Carbon\Carbon;


use Illuminate\Support\Facades\Mail as FacadesMail;
use Mail;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

        $this->middleware('auth',['except'=>['reset-password']]);

        $this->middleware('auth');


        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
      
        return view('home');
    }
    // public function testEmail()
    // {
    //     $name = 'test name for email';
        
    //     FacadesMail::send('emails.test',compact('name'),function($email){
    //         $email->to('minhquang2002nt@gmail.com', 'Minh Quang');
    //     });
    // }

}
