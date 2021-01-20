<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Carbon\Carbon;

use App\Models\Newsletter;
use App\Models\Rating;

class AjaxController extends Controller
{
    public function newsletter(Request $request)
    { 
        try {

            if (Newsletter::where('email', '=', $request->email)->exists()) {

                return back()->with([
                    'message'    => trans('generic.newsletter.exist'),
                    'alert-type' => 'warning',
                ]);
            }

            Newsletter::create([
                'email' => $request->email
            ]);

            return back()->with([
                'message'    => trans('generic.newsletter.create'),
                'alert-type' => 'success',
            ]);
        } catch (\Exception $e) {

            return back()->with([
                'message'    => $e->getMessage(),
                'alert-type' => 'error',
            ]);

        }

    }

    public function rating(Request $request)
    { 
        try {
            $client_ip = request()->ip();
            $rating = Rating::where('ip', $client_ip)->first();

            if($rating && $rating->created_at->diffInDays(Carbon::now()) == 0){ 
                return back()->with([
                    'message'    => trans('generic.ajax.rating_exist'),
                    'alert-type' => 'error',
                ]);
            }

            Rating::create([
                'fullname' => $request->fullname,
                'review' => $request->review,
                'email' => $request->email,
                'ip' => $client_ip,
                'product_id' => $request->product_id,
                'star' => $request->star,
            ]);

            return back()->with([
                'message'    => trans('generic.ajax.rating_success', ['star' => $request->star]),
                'alert-type' => 'success',
            ]);
        } catch (\Exception $e) {

            return back()->with([
                'message'    => $e->getMessage(),
                'alert-type' => 'error',
            ]);

        }

    }

    public function notification()
    { 
        try {

            auth()->user()->unreadNotifications->markAsRead();

            return back();
        } catch (\Exception $e) {

            return back()->with([
                'message'    => $e->getMessage(),
                'alert-type' => 'error',
            ]);

        }

    }

    public function MarkAsRead(Request $request)
    { 
        try {

            $notification = auth()->user()->Notifications->find($request->id);
            if($notification) {
                if($notification->read_at){
                    $notification->update(['read_at' => null]);
                }else{
                    $notification->markAsRead();
                }
                
            }

            return response()->json(['success' => true]);
        } catch (\Exception $e) {

            return back()->with([
                'message'    => $e->getMessage(),
                'alert-type' => 'error',
            ]);
        }

    }

}
