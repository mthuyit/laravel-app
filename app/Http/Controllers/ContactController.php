<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Http\Requests\ContactRequest;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactPlaced;

class ContactController extends Controller
{
    public function index()
    {
        return view('contact');
    }

    public function store(ContactRequest $request)
    {

        try {

            $contact = $this->addToContactTables($request, null);
            Mail::send(new ContactPlaced($contact));

            return redirect()->route('confirmation.index')->with('success_message', trans('generic.page_contact.send_success'));
        } catch (\Exception $e) {
            $this->addToContactTables($request, $e->getMessage());
            return back()->withErrors('Error! ' . $e->getMessage());
        }
    }

    protected function addToContactTables($request, $error)
    {
        // Insert into contact table
        $contact = Contact::create([
            'email' => $request->email,
            'name' => $request->name,
            'address' => $request->address,
            'phone' => $request->phone,
            'subject' => $request->subject,
            'message' => $request->message,
            'error' => $error,
        ]);
        return $contact;
    }

}
