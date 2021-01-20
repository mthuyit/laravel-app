<?php

namespace App\Http\Controllers\Voyager;

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\NewsletterPlaced;

class NewsletterController extends Controller
{
    public function send_email (Request $request)
    {
        Mail::send(new NewsletterPlaced($request));

        return back()->with([
            'message'    => trans('generic.newsletter.success'),
            'alert-type' => 'success',
        ]);
    }

}
