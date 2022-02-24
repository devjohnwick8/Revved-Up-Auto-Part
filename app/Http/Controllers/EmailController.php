<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\MyTestMail;
use App\Mail\MyContactMail;
use App\Models\OrderModel;

class EmailController extends Controller
{
    //
    public function order_place($order_number){
        $order = OrderModel::with('get_shipping', 'get_user')->where('order_number', $order_number)->first();
        if($order){
            \Mail::to($order->get_user['email'])->send(new MyTestMail($order));
        }else{
            return back()->with('Order Not Found');
        }

       
    }

    public function contact_us_email($contact){
    
        if($contact){
            // \Mail::to($order->get_user['email'])->send(new MyTestMail($order));
            \Mail::to('revvedupautoparts@gmail.com')->send(new MyContactMail($contact));
        }else{
            return back()->with('Email Not Found');
        }

       
    }

}
