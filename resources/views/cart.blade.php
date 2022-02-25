@extends('layouts.main')
@section('content')


<!--  -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>My Cart</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<!--  -->
<!-- Inline Hose Start -->
<section class="my_hose">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="diameter">
                    <h2>Step 1 of 4: Review & Place Your Order</h2>
                    <!-- <p>This part has not yet been added to our database. However, please Call OR Text us toll free at <a href="tel: 888-297-3077">888-297-3077,</a>
                        or use the form below to send your inquiry for this part.</p> -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Inline Hose End -->
<!-- Add to cart start -->
<section class="add-to-cart">
    <div class="container">
        @include('layouts/flash-message')
        <div class="row">
            @if ($products)
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="table-responsive wow fadeInLeft" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInLeft;">
                    <div class="row">
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Shopping Cart</th>
                                <th>Price</th>
                                <th>Quantity </th>
                                <th>Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php $subtotal = 0; @endphp
                            @foreach($products as $value )
                            <tr class="space">
                                <td class="col-md-4 col-sm-4 col-xs-12">
                                    <div class="table-space">
                                        <!-- 2019 AUDI S3 - 2.0 liter L4 -CID RADIATOR GAS, MAIN -->
                                        <h3>{{$value->title}}
                                            <a href="{{route('UI_cart_delete', [$value->id])}}"><i class="fas fa-times"></i></a>
                                        </h3>
                                    </div>
                                </td>

                                <td class="col-md-1 col-sm-1 col-xs-12">
                                    <h4>${{$value->our_price}}</h4>
                                </td>

                                <td class=" col-md-1 col-sm-1 col-xs-12">
                                    <form action="{{route('UI_cart_update')}}" method="Post" class="quantity_form">
                                        @csrf
                                        <input type="number" hidden class="qtystyle" name="id" value="{{$value->id}}">
                                        <input type="number" class="qtystyle" name="quantity" value="{{$cart[$value->id]['quantity']}}">

                                        <button type="submit"><i class="fas fa-sync-alt"></i> Update
                                            Cart</button>
                                    </form>
                                </td>
                                <td class="col-md-1 col-sm-1 col-xs-12">
                                    <h4>${{$value->our_price * $cart[$value->id]['quantity'] + $cart[$value->id]['price'] }}</h4>
                                    @php $subtotal += $value->our_price * $cart[$value->id]['quantity'] + $cart[$value->id]['price'] @endphp

                                </td>
                            </tr>
                            @endforeach
                            <?php
                            session()->put('subtotal', $subtotal);
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="proceed">
                <div class="row">
                    <div class="col-md-7 col-sm-7 col-xs-12">

                    </div>
                    <div class="col-md-5 col-sm-5 col-xs-12">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="main_sub">
                                    <h5>Merchandise SubTotal:</h5>
                                    <h5>Shipping:</h5>
                                </div>

                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <div class="main_sub">


                                    <h6>${{$subtotal}} </h6>

                                    <h6>Free</h6>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="my_payment text-center">
                                    <h4>Payment Option</h4>
                                    <img src="./images/pay.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-">
                                <!-- <div class="main_pera">
                                    <p>Applicable ship/handling will be calculated at final page checkout</p>
                                    <p>Click blue asterick for more info on shipment and warranty inclusions</p>


                                </div> -->
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="con">
                        <a href="{{route('UI_home')}}">Continue Shopping <i class="fas fa-angle-double-right"></i></a>

                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="cart_bt">

                        <button type="submit"><i class="fas fa-cart-arrow-down"></i> <a href="{{route('UI_billing_information')}}">Begin Checkout</a></button>

                        <!-- <button type="submit"><i class="fas fa-sync-alt"></i> Update
                                Cart</button> -->
                    </div>
                </div>
            </div>
            @else
            <h4>This Cart is Empty</h4>
            @php session()->forget('subtotal') @endphp
            @endif

        </div>
    </div>
</section>
<!-- Add to cart end-->


@endsection