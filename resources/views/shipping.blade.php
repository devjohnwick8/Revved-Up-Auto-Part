@extends('layouts.main')
@section('content')
<!--  -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Shipping Information</h1>
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
                    <h2>Step 3 of 4: Enter Shipping Information</h2>
                    <!-- <p>This part has not yet been added to our database. However, please Call OR Text us toll free at <a href="tel: 888-297-3077">888-297-3077,</a>
                        or use the form below to send your inquiry for this part.</p> -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Inline Hose End -->
<!-- Add to cart start -->
<section class="billing_infor">
    <div class="container">
        @include('layouts/flash-message')
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="bil_head">
                    <p>Enter Verified Credit Card Address(*Enter Shipping Address on Step 3)</p>
                </div>
            </div>
        </div>
        <form action="{{route('UI_add_shipping')}}" method="POST">
            @csrf
            <div class="row">

                <div class="col-md-7 col-sm-7 col-xs-12 centerCol">
                    <div class="main_bill">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>First Name:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="first_name" value="{{auth()->user()->first_name}}">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Last Name:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="last_name" value="{{auth()->user()->last_name}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Shipping Address:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="shipping_address" value="{{auth()->user()->address1}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Business, Apt, Suit:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="business" value="{{auth()->user()->address2}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>City:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="city" value="{{auth()->user()->city}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>State:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="ship_state" value="{{auth()->user()->state}}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Zip Code:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="zip_code" value="{{auth()->user()->zip_code}}">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Phone Number:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="ship">
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phone" value="{{auth()->user()->phone}}">
                                </div>
                                <!-- <p>Valid phone format should be (xxx),xxx,xxxx</p> -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Type Of Address:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="bill_radio">
                                    <div class="row">
                                        <div class="col-md-4  col-sm-4 col-xs-12">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="type_address" checked  id="flexRadioDefault1" value="0">
                                                <label class="form-check-label" for="flexRadioDefault1" required>
                                                    Residential
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-8 col-xs-12">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="type_address" id="flexRadioDefault2" value="1">
                                                <label class="form-check-label" for="flexRadioDefault2">
                                                    Business
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button><i class="fas fa-check"></i> Go to Next Step</button>
                    </div>




                </div>
            </div>
        </form>

    </div>

    </div>
</section>
<!-- Add to cart end-->

@endsection