<?php

namespace App\Http\Controllers;

class ConfirmationController extends Controller
{
    public function index()
    {
        if (session()->has('success_message') || session()->has('error_message')) {
            return view('thankyou');
        }else{
            return redirect('/');
        }  
    }

}
