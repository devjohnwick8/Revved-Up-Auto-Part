<?php

namespace App\Http\Controllers;

use App\Models\OrderItemsModel;
use App\Models\OrderModel;
use App\Models\ProductMakeModel;
use App\Models\ProductsModel;
use App\Models\PartNotFoundModel;
use App\Models\ProductImageModel;
use App\Models\SpecificationModel;
use App\Models\ProductAvailableModel;
use App\Models\ProductOptionModel;
use App\Models\SubCategoriesModel;
use App\Models\VehicleFitmentModel;
use Illuminate\Http\Request;
use Stripe\Order;
use Stripe\OrderItemModel;

class UIController extends Controller
{
    public function home()
    {
        session()->forget('login_cart');
        $make = ProductMakeModel::orderby('id', 'ASC')->get();
        // $make = SubCategoriesModel::orderby('id', 'ASC')->get();

        return view('index', compact('make'));
    }
    public function single_product($id)
    {
        $single_product = ProductsModel::with('images_take1')->where('id', $id)->first();
        $image_product = ProductImageModel::where('product_id', $id)->get();
        $category = SubCategoriesModel::where('id', $single_product->sub_categories)->first();
        $product_available = ProductAvailableModel::where('product_id', $id)->get();
        $product_option = null;
        if($product_available){
            foreach($product_available as $key => $value){
               if($product_available[$key]->id){
                   $product_option[] = ProductOptionModel::where('product_id', $id)->where('available_id' , $product_available[$key]->id)->get();
               }
            } 
        }
      
      
        $product_fitment = VehicleFitmentModel::where('product_id', $id)->get()->last();
        $product_specification = SpecificationModel::where('product_id', $id)->first();
        $related_product = ProductsModel::with('images_take1')->where('make', $single_product->make)->get();

        return view('single-product', compact('single_product', 'related_product', 'product_specification', 'product_available', 'product_option','product_fitment', 'category', 'image_product'));
    }
    public function part_not_found()
    {
        $product = null;
        return view('part-not-found', compact('product'));
    }
    public function part_not_found_porduct($id)
    {
        $product = ProductsModel::with('product_category', 'product_year', 'product_model', 'product_submodel', 'product_engine', 'product_make')
            ->where('id', $id)->first();
        return view('part-not-found', compact('product'));
    }

    public function add_part_not_found(Request $request, PartNotFoundModel $pnf)
    {
        $pnf->product_id = $request->product_id;
        $pnf->ac   = $request->ac;
        $pnf->how_can = $request->how_can;
        $pnf->first_name = $request->first_name;
        $pnf->last_name = $request->last_name;
        $pnf->email = $request->email;
        $pnf->phone = $request->phone;
        $pnf->message = $request->message;
        $pnf->save();
        // dd($request);
        // $product = ProductsModel::with('product_category', 'product_year', 'product_model', 'product_submodel', 'product_engine', 'product_make')
        //     ->where('id', $id)->first();
        return redirect()->back()->with('success', 'Form Submitted');
    }
    public function available_option(Request $request)
    {
        if($request->id == 0){
          $product = ProductsModel::find($request->product_id);
          $total = $product->our_price ;
          session()->put('option_price', 0);
          return response()->json([ 'opt_option' => $total , 'status' => 1]);

        }else{
            $product_option = ProductOptionModel::find($request->id);
            $product = ProductsModel::find($product_option->product_id);
            
            $total = $product->our_price + $product_option->price;
            // session()->put('option_price', $product_option->price);
            return response()->json([ 'opt_option' => $total , 'status' => 1]);
        }
    }


    public function thank_you()
    {
        return view('thank-you');
    }

    public function about_us()
    {
        return view('about-us');
    }
    
    // public function product_list()
    // {
    //     // $product ::ProductsModel::
    //     return view('product-list');
    // }

    public function product_list($id)
    {
        $products = ProductsModel::with('images_take1')->where('sub_categories', $id)->get();
        $productss = ProductsModel::with('images_take1')->where('sub_categories', $id)->first();
        $category = SubCategoriesModel::where('id', $id)->first();
        // $product ::ProductsModel::
 
        return view('product-list' , compact('products', 'category','productss'));
    }
    

    public function ask_a_question()
    {
        return view('ask_a_question');
    }

    public function backorders()
    {
        return view('backorders');
    }

    public function contact_us()
    {
        return view('contact-us');
    }
    public function contact_us_post(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required | email',
            'subject' => 'required',
            'comment' => 'required',
        ]);
        $contact = ContactModel::create($validated);


        return view('contact-us');
    }

    public function customer_support()
    {
        return view('customer_support');
    }

    public function damage_part()
    {
        return view('damage_part');
    }

    public function defective_claims()
    {
        return view('defective_claims');
    }

    public function fitment_issue()
    {
        return view('fitment_issue');
    }

    public function help()
    {
        return view('help');
    }

    public function pick_up_availability()
    {
        return view('pick_up_availability');
    }

    public function price_match()
    {
        return view('price_match');
    }

    public function privacy_policy()
    {
        return view('privacy_policy');
    }

    public function restocking()
    {
        return view('restocking');
    }

    public function return_process()
    {
        return view('return_process');
    }

    public function shipping_policy()
    {
        return view('shipping-policy');
    }

    public function submit_returns()
    {
        return view('submit_returns');
    }

    public function warranty_policy()
    {
        return view('warranty_policy');
    }

    public function track()
    {
        return view('track');
    }

    public function order_track()
    {    $orders = null;
       $order_items = null;

        return view('order-track', compact('orders', 'order_items'));
    }
    public function track_post(Request $request)
    {
       
        $order = OrderModel::where('order_number', $request->order_number)->first();
        if($order){
            return redirect()->route('UI_get_order_track' , [$order->order_number]);
        }else{ 
            return back()->with('warning', 'Order Not Found');
        }
        
    }
    public function get_data_order_track($order_number) 
    {
        $orders = OrderModel::with('get_shipping')->where('order_number',$order_number)->first();
        $order_it = OrderItemsModel::where('order_number', $orders->order_number)->get();
        $order_items = count($order_it);
        return view('order-track' , compact('orders', 'order_items' ));
    }
}
