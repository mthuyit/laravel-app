<?php

namespace App\Http\Controllers\Voyager;

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;

use App\Models\User;
use App\Notifications\UserNotification;

class UserController extends Controller
{
    public function notification(Request $request)
    {
        $title = $request->title;
        $description = $request->description;
        $url = $request->url;
        $ids = $request->ids;

        $users = User::whereIn('id', explode(',', $ids))->get();

        $message = [
            'title' => $title, 
            'description' => $description, 
            'url' => $url
        ];

        Notification::send($users, new UserNotification($message));

        return back()->with([
            'message'    => trans('auth.notification_success'),
            'alert-type' => 'success',
        ]);
    }

}
