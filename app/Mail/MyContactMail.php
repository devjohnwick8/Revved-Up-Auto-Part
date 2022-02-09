<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class MyContactMail extends Mailable
{
    use Queueable, SerializesModels;
    public $details;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($contact)
    {
        $this->details = $contact;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        dd($this->details['subject']);
        // return $this->view('view.name');
        return $this->subject($this->details['subject'])
                    ->view('emails.myContactMail');
    }
}
