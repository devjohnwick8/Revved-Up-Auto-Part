 
@extends('layouts.main')
@section('content')
  <!-- banner start -->
  <section class="inner_banner">
    <div class="container">
      <!--       <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="banner_text black_bg">
            <h1>Contact Us</h1>
          </div>
        </div>
      </div> -->
    </div>
  </section>
  <!-- banner end -->
  <!-- BEGIN Contact Us -->
  <section class="my_link">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <h3>You Can Easily Find The Answers</h3>
          <!--<p>A place you can easily find answers and submit return tickets</p>-->
          <!--<p> <small>Don't see what you're looking for?</small> </p>-->
          <div class="link_search">
            <div class="my_sear">
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Search">
              <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
            </div>
          </div>
          <div class="helplinks">
            <ul>
              <li><a href="{{route('UI_defective_claims')}}">Defective Parts</a></li>
              <li><a href="{{route('UI_damage_part')}}">Damaged Parts</a></li>
              <li><a href="{{route('UI_warranty_policy')}}">Warranty Policy</a></li>
              <li><a href="{{route('UI_return_process')}}">Return Process</a></li>
              <li><a href="{{route('UI_fitment_issue')}}">Fitment Issue</a></li>
              <li><a href="{{route('UI_contact_us')}}">Contact Us</a></li>
              <li><a href="{{route('UI_customer_support')}}">Customer Support</a></li>
              <li><a href="javascript:void(0)">Part Inquiry</a></li>
              <li><a href="javascript:void(0)">Shippment Policy</a></li>
              <li><a href="{{route('UI_about_us')}}">About Us</a></li>
              <li><a href="javascript:void(0)">Reviews</a></li>
              <li><a href="{{route('UI_privacy_policy')}}">Privacy Policy</a></li>
              <li><a href="{{route('UI_price_match')}}">Price Match</a></li>
              <li><a href="{{route('UI_pick_up_availability')}}">Pick Up Availability</a></li>
            </ul>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- END Contact Us -->
   

@endsection