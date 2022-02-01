@extends('layouts.main')
@section('content')

<!-- banner start -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Track Order</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- banner end -->
<!-- BEGIN Track Order Start -->
<section class="main_track">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="my_track">
                    <ul>
                        <li><a href="javascript:void(0)">My Account /</a></li>
                        <li><a href="javascript:void(0)">My Order /</a></li>
                        <li><a href="javascript:void(0)">Order Details</a></li>
                    </ul>
                </div>

                <div class="order_details">
                    <h4>Order Details</h4>
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="first_order">
                                <h2>{{$orders ? $orders->created_at : ''}}</h2>
                                <h2>Order #{{ $orders ? $orders->order_number : ''}}</h2>
                                <div class="in_order">
                                    
                                    <h4>Packages in this order: <span>1</span></h4>
                                    <h4>Total Item: {{$order_items ? $order_items : 0}}</h4>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="main_ship">
                            <h4>phone Number</h4>
                                <!-- <ul> -->
                                    <li>{{$orders ? $orders->get_shipping ? $orders->get_shipping->phone : '' : ''}}</li>
                                <!-- </ul> -->
                                <br/>

                                <h4>Email</h4>
                                <!-- <ul> -->
                                    <li>{{$orders ? $orders->get_user ? $orders->get_user->email : '' : ''}}</li>
                                    <br/>
                                <h4>Ship To</h4>
                                <!-- <ul> -->
                                    <li>{{$orders ? $orders->get_shipping ? $orders->get_shipping->shipping_address : '' : ''}}</li>
                                <!-- </ul> -->
                                <!-- <h5>Payment Information</h5>
                                <img src="./images/order_pay.png" class="img-fluid" alt="">
                                <span>$6.49</span> -->
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <h4>Order Summary</h4>
                            <div class="order_summary">
                               
                                <ul>
                                    <li>ORDER STATUS</li>
                                    
                                    <li><strong>
                                    @if($orders ? $orders->status === 0 : '')
                                Pending
                                @elseif($orders ? $orders->status === 1 : '')
                                Processing
                                @elseif($orders ? $orders->status === 2 : '' )
                                OnHold
                                @elseif($orders ?  $orders->status === 3 : '')
                                Completed
                                @elseif($orders ?  $orders->status === 4 :'')
                                Canceled
                                @elseif($orders ? $orders->status === 5 : '')
                                Refunded
                                @elseif($orders ? $orders->status === 6 : '')
                                Failed
                                @endif</strong>
                                   </li>
                                </ul>
                            </div>
                            <div class="summary">
                                <ul>
                                    <li> <span></span></li>
                                    <li><span></span></li>
                                    <li>Total <span>${{$orders ? $orders->order_total : ''}}</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="modify">
                                <button class="btn btn_red">Modify / Cancel Order</button>
                                <h6></h6>
                                <button class="btn btn_red">Learn How</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<!-- END Track Order End -->
@endsection