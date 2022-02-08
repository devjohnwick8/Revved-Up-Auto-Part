<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\OrderItemsModel;
use App\Models\OrderModel;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;

class AdminOrdersController extends Controller
{

    function dashboard()
    {
        $orders = OrderModel::get();
        $user = User::get();
        $user_qty = count($user);
        $order = null;
        $order_qty = count($orders);
        foreach($orders as $value){
            $order =  $order += $value->order_total;
        }

        return view('admin.dashboard' , compact('order','order_qty', 'user_qty'));
    }


    function orders_list()
    {
        $orders = OrderModel::with('get_shipping', 'get_user')->orderBy('id', 'DESC')->get();
        return view('admin.orders.orders-list', compact('orders'));
    }

     function order_status(OrderModel $orders, $status)
     {
         $orders->status = $status;
         $orders->save();
         return back();
     }

     function view_order($order)
     {
         $orders = OrderModel::with('get_shipping', 'get_user')->where('id', $order)->first();
        $order_items = OrderItemsModel::with('get_product','get_product.images_take1')->where('order_number', $orders->order_number)->get();
        // dd($order_items);
         return view('admin.orders.orders-view'   , compact('orders', 'order_items'));
     }

    // function edit_order($order)
    // {
    //     $allProducts = ProductsModel::orderBy('id', 'ASC')->get();
    //     $orders = OrderModel::where('id', $order)->first();
    //     $order_items = OrderItemsModel::with('get_product.images_take1')->where('order_number', $orders->order_number)->get();
    //     // dd($order_items);
    //     return view('admin.orders.orders-edit', compact('orders', 'order_items', 'allProducts'));
    // }
    // function addnewproduct(OrderModel $order, Request $request)
    // {
    //     //for product
    //     $order_items = OrderItemsModel::where('order_number', $order->order_number)->where('product_id', $request->product_id)->first();
    //     $product = ProductsModel::where('id', $request->product_id)->first();
    //     if ($order_items) {
    //         $order_items->quantity += $request->quantity;
    //     } else {
    //         $order_items = new OrderItemsModel();
    //         $order_items->order_number = $order->order_number;
    //         $order_items->user_id = $order->user_id;
    //         $order_items->product_id = $request->product_id;
    //         $order_items->quantity = $request->quantity;
    //     }
    //     $order_items->save();
    //     return back()->with('success', 'Product Added Successfully');
    // }
    // function delete_order(OrderItemsModel $order_item)
    // {
    //     $order_item->delete();
    //     return back()->with('deleted', 'Product Deleted Successfully');
    // }
}
