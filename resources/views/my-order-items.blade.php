@extends('layouts.main')
@section('content')

<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>My Order Item</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- banner end -->

<section class="my_hose">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="diameter">
                    <h2>My Order Item</h2>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mein_order">
    <div class="container">
    
        <div class="row">
                <div class="col-md-10 col-sm-10 col-xs-10 centerCol">
                    <table id="example" class="display">
                        <thead>
                            <tr>
                                            <th scope="col">S.No</th>
                                            <th scope="col">Date & Time</th>
                                            <th scope="col">Order Number</th>
                                            <th scope="col">Product Image</th>
                                            <th scope="col">Product Name</th>
                                            <th scope="col">Brand</th>
                                            <th scope="col">Sku</th>
                                            <th scope="col">Oem</th>
                                            <th scope="col">QTY</th>
                                            <th scope="col">Unit Price</th>
                            </tr>
                        </thead>
                        <tbody>
                                            @foreach($order_items as $key=>$value)
                                            
                                        <tr>
                                            
                                            <td>1</td>
                                            <td>{{$value->created_at}}</td>
                                            <td>{{$value->order_number}}</td>
                                            <td> <img class="img-list" style="widht:75px ; height:75px" 
                                            src="{{asset('uploads/products/'.$value->get_product->images_take1->title)}}"
                                            alt="{{$value->title}}">
                                        </td>
                                            <td>{{$value->get_product ? $value->get_product->title : ''}}</td>
                                            <td>{{$value->get_product ?  $value->get_product->brand : ''}}</td>
                                            <td>{{$value->get_product ?  $value->get_product->sku : ''}}</td>
                                            <td>{{$value->get_product ?  $value->get_product->oem : ''}}</td>
                                            <td>{{$value->quantity}}</td>
                                            <td>${{$value->get_product ?  $value->get_product->our_price : ''}}</td>
                                           
                                        </tr>
                                        @endforeach
                                        </tbody>

                    </table>
                </div>
            </div>

<br/>
<a style="margin-left:100px" href="{{route('UI_home')}}" class="btn btn_red">Go To Back</a>

        </div>
</section>

@endsection