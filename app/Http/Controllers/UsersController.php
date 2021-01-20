<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        $orders = Order::where('user_id', auth()->user()->id)->orderByDesc('created_at')->get();
        $status = DB::table('data_types')
                        ->where('data_types.slug', 'orders')
                        ->join('data_rows', 'data_rows.data_type_id', '=', 'data_types.id')
                        ->where('data_rows.field', 'status')
                        ->select('data_rows.details')
                        ->first();
        $status = json_decode($status->details);

        $payment_method = DB::table('data_types')
                        ->where('data_types.slug', 'orders')
                        ->join('data_rows', 'data_rows.data_type_id', '=', 'data_types.id')
                        ->where('data_rows.field', 'payment_method')
                        ->select('data_rows.details')
                        ->first();
        $payment_method = json_decode($payment_method->details);

        return view('my-profile')->with([
            'user' => auth()->user(),
            'orders' => $orders,
            'status' => $status,
            'payment_method' => $payment_method,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,'.auth()->id(),
            'password' => 'sometimes|nullable|string|min:6|confirmed',
        ]);

        $user = auth()->user();
        $input = $request->except('password', 'password_confirmation');

        if (! $request->filled('password')) {
            $user->fill($input)->save();

            return back()->with('success_message', trans('auth.profile_update_success'));
        }

        $user->password = bcrypt($request->password);
        $user->fill($input)->save();

        return back()->with('success_message', trans('auth.profile_update_password_success'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}