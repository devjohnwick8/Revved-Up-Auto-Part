<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\MyTestMail;
use App\Models\OrderModel;

class EmailController extends Controller
{
    //
    public function order_place($order_number){
        $order = OrderModel::with('get_shipping', 'user')->where('order_number', $order_number)->first();
        if($order){
            \Mail::to($order->get_user->email)->send(new MyTestMail($order));
        }else{
            return back()->with('Order Not Found');
        }

       
    }

}
