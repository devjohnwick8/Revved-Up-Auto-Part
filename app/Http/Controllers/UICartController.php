<?php

namespace App\Http\Controllers;

use App\Models\ProductsModel;
use App\Models\User;
use App\Models\BillingModel;
use App\Models\ShippingModel;
use App\Models\OrderModel;
use App\Models\OrderItemsModel;
use GrahamCampbell\ResultType\Success;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UICartController extends EmailController
{
    public function cart()
    {

        $cart = session()->get('cart');

        if ($cart != []) {
            foreach ($cart as $value) {
                $products[] = ProductsModel::with('product_year')->where('id', $value['id'])->first();
            }
            return view('cart', compact('products', 'cart'));
        } else {
            $products = null;
            return view('cart', compact('products'));
        }
    }
    public function cart_update(Request $request)
    {
        $stocks = ProductsModel::where('id', $request->id)->first('stock');

        if ($request->quantity >= 1) {
            if ($request->quantity <= $stocks->stock) {
                $cart = session()->get('cart');
                $cart[$request->id]["quantity"] = $request->quantity;
                session()->put('cart', $cart);
            } else {
                return redirect()->route('UI_cart')->with('error', 'Out Of Stock');
            }
            // $cart = session()->get('cart');
            // $cart[$request->id]["quantity"] = $request->quantity;
            // session()->put('cart', $cart);
        }
        return redirect()->route('UI_cart')->with('success', 'Cart Updated');
    }

    public function cart_delete($id)
    {
        $cart = session()->get('cart');
        unset($cart[$id]);
        session()->put('cart', $cart);
        return redirect()->route('UI_cart')->with('error', 'Product Remove');
    }

    public function billing_information()
    {
        if (auth()->check()) {
            return view('billing-information');
        } else {
            $login_cart = 0;
            session()->put('login_cart', $login_cart);
            return redirect()->route('UI_Login');
        }
    }
    public function add_billing_information(Request $request)
    {
        $billing_information = $request->validate([
            "first_name" => "required|max:255",
            "last_name" => "required|max:255",
            "billing_address" => "required",
            "business" => "required",
            "city" => "required",
            "bil_state" => "required",
            "zip_code" => "required",
            "coupan_code" => "",
            "ref_email" => "",
        ]);
        $user = User::where('email', $billing_information['ref_email'])->first();
        session()->put('billing_information', $billing_information);
        // if ($user) {
        if ($billing_information['ref_email'] != null) {
            if ($user) {
                if (auth()->user()->email != $billing_information['ref_email']) {
                    return view('shipping');
                } else {
                    return redirect()->back()->with('error', 'Reffered Email Invalid');
                }
            } else {
                return redirect()->back()->with('error', 'Reffered Email Not Found');
            }
        } else {
            return view('shipping');
        }
    }


    public function shipping()
    {

        return view('shipping');
    }
    public function add_shipping(Request $request)
    {
        $shipping = $request->validate([
            "first_name" => "required|max:255",
            "last_name" => "required|max:255",
            "shipping_address" => "required",
            "business" => "required",
            "city" => "required",
            "ship_state" => "required",
            "zip_code" => "required",
            "phone" => "required",
            'type_address' => "required",
        ]);
        session()->put('shipping', $shipping);
        return redirect()->route('UI_review');

        // return view('shipping');
    }
    public function review()
    {

        $cart = session()->get('cart');
        if ($cart != []) {
            foreach ($cart as $value) {
                $products[] = ProductsModel::with('product_year')->where('id', $value['id'])->first();
            }
            return view('review', compact('products', 'cart'));
        } else {
            $products = null;
            return view('review', compact('products'));
        }
    }



    public function add_to_cart(Request $request)
    {

        $stocks = ProductsModel::where('id', $request->id)->first('stock');
        if ($request->quantity <= $stocks->stock) {
            $cart = session()->get('cart', []);
            if (isset($cart[$request->id])) {
                $cart[$request->id]['quantity'] += $request->quantity;
                $cart[$request->id]['price'] = $request->price_cart;

                $comment = "Product has been added Successfully";
            } else {
                $cart[$request->id] = [
                    "id" => $request->id,
                    "quantity" => $request->quantity,
                    "price" =>$request->price_cart,
                ];
                $comment = "Product has been added Successfully";
            }
            session()->put('cart', $cart);
            $cart = session()->get('cart');
        }
        return response()->json(['cart_data' => $cart, 'comment' => $comment, 'cart_length' => count(session()->get('cart', $cart)), 'status' => 1]);
    }
    public function my_orders()
    {
        $order = OrderModel::with('get_shipping' , 'get_user')->where('user_id', Auth()->user()->id)->get();
        return  view('my-orders' , compact('order'));
    }
    public function my_order_items($order)
    {
        $orders = OrderModel::with('get_shipping', 'get_user')->where('id', $order)->first();
        $order_items = OrderItemsModel::with('get_product','get_product.images_take1')->where('order_number', $orders->order_number)->get();
        // dd($order_items);
         return view('my-order-items'   , compact('orders', 'order_items'));
    
    }    

     public function event_stripe(Request $req)
    {
        $total = session()->get('subtotal');
        $order_number = rand(1999999999999999, 9999999999999999);
        $user = Auth::user();
        $desc = 'Payment CheckOut';
        $price = $total;
        $response = $this->stripe_payment($user->email, $req->stripeToken, $price, $desc);
        if ($response['status'] == 'succeeded') {

            $billing_info = session()->get('billing_information');
            // dd($billing_info['billing_address']);

            $data_billing = [
                'user_id' => auth()->user()->id,
                'billing_address' => $billing_info['billing_address'],
                'business' => $billing_info['business'],
                'city' => $billing_info['city'],
                'state' => $billing_info['bil_state'],
                'zip_code' => $billing_info['zip_code'],
                'ref_email' => $billing_info['ref_email'],
            ];
            $billing = BillingModel::create($data_billing);
            $shippings = session()->get('shipping');
            $data_shipping = [
                'user_id' => auth()->user()->id,
                'shipping_address' => $shippings['shipping_address'],
                'business' => $shippings['business'],
                'city' => $shippings['city'],
                'state' => $shippings['ship_state'],
                'zip_code' => $shippings['zip_code'],
                'phone' => $shippings['phone'],
                'type_address' => $shippings['type_address'],
            ];

            $shipping = ShippingModel::create($data_shipping);

            $data = [
                'order_number' => $order_number,
                'user_id' => auth()->user()->id,
                'order_total' => session()->get('subtotal'),
                'status' => 0,
                'billing_id' => $billing->id,
                'shipping_id' => $shipping->id,
                'payment_id' => $response['id'],
                'reciept_url' => $response['receipt_url'],
                'is_paid' => 1,
            ];
            $cart = session()->get('cart');
            foreach ($cart as $value) {
                $orderitem = new OrderItemsModel();
                $orderitem->order_number = $order_number;
                $orderitem->user_id = auth()->user()->id;
                $orderitem->product_id = $value['id'];
                $orderitem->quantity = $value['quantity'];
                $orderitem->save();
            }

            $i = 0;
            foreach ($cart as $value) {
                $products[$i] = ProductsModel::where('id', $value['id'])->first();
                $product = ($products[$i]->stock - $value['quantity']);
                $products[$i]->stock = $product;
                $products[$i]->save();
                $i++;
            }
          
            OrderModel::create($data);
            session()->forget('billing_information');
            session()->forget('shipping');
            session()->forget('cart');
        } else {
            return redirect(route('UI_review'));
        }

        $this->order_place($data['order_number']);
        return redirect()->route('UI_thank_you')->with('success', 'Thank you for purchasing...');
        
    }
}
