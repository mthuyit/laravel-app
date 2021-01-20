<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Config;

class LocaleController extends Controller
{
	public function index($locale)
	{
		if (in_array($locale, Config::get('app.locales'))) {
            Session::put('locale', $locale);
        }
        return redirect()->back();
		
	}
}