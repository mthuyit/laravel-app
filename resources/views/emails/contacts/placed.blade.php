@component('mail::message')
# Order Received

Thank you for your contact.

**Contact Name:** {{ $contact->name }}

**Contact Email:** {{ $contact->email }}

**Contact Address:** {{ $contact->address }}

**Contact Phone:** {{ $contact->phone }}

**Contact Subject:** {{ $contact->subject }}

**Contact Message:** {{ $contact->message }}

You can get further details about your order by logging into our website.

@component('mail::button', ['url' => config('app.url'), 'color' => 'green'])
Go to Website
@endcomponent

Thank you again for choosing us.

Regards,<br>
{{ config('app.name') }}
@endcomponent
