@extends('layouts.main')
@section('content')

<!--  -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Billing Information</h1>
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
                    <h2>Step 2 of 4: Enter Billing Information</h2>
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

        <form action="{{route('UI_add_billing_information')}}" method="POST">
            @csrf
            <div class="row">

                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
                <div class="col-md-7 col-sm-7 col-xs-12">
                    <div class="main_bill">
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>First Name:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="first_name" value="{{auth()->user() ? auth()->user()->first_name : ''}}" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12" required>
                                <div class="shipping_filed">
                                    <h3>Last Name:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="last_name" value="{{auth()->user() ? auth()->user()->last_name : ''}}" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Billing Address:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="billing_address" value="{{
                                    auth()->user() ? auth()->user()->address1 : ''}}" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>Business, Apt, Suit:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="business" value="{{
                                    auth()->user() ? auth()->user()->address2 : ''}}" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>City:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="city" value="{{auth()->user() ? auth()->user()->city : ''}}" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="shipping_filed">
                                    <h3>State:</h3>
                                </div>
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="bil_state">
                                    <input type="text" class="form-control" list="datalistOptions" id="exampleDataList" name="bil_state" value="{{auth()->user() ? auth()->user()->state : ''}}" required>

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
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="zip_code" value="{{auth()->user() ? auth()->user()->zip_code : ''}}" required>
                            </div>
                        </div>
                        <button type="submit"><i class="fas fa-check"></i> Go to Next
                            Step</button>
                    </div>
                </div>
                <div class="col-md-5 col-sm-5 col-xs-12">
                    <!-- <div class="main_coupan">
                        <h4>Coupan Code:</h4>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Eveniet sed" name="coupan_code">
                    </div> -->
                    <div class="referred">
                        <h3>Were you referred to Radiatorexpress.com? Enter the email address of the referrer here to
                            give them FREE Ecpress points!</h3>
                        <h4>Referred by:</h4>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="example@mail.com" name="ref_email">

                    </div>
                </div>

            </div>
        </form>
    </div>
</section>
<!-- Add to cart end-->


@endsection