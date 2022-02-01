@extends('layouts.main')
@section('content')

  <!-- banner start -->
  <section class="inner_banner">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="banner_text black_bg">
            <h1>Customer Support</h1>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- banner end -->
  <!-- speedy_sec start  -->
  
  <!-- speedy_sec start  -->
  <!-- BEGIN About Us -->
  <section class="AboutUsMain">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="AboutContent forfont">
            <span>Customer Care</span>
            <p>Returns, warranty and exchanges are handled via support ticketing. </p>
            <p>Initiate your ticket : <a href="{{route('UI_help')}}">Click Here</a></p>
            <p>For General Questions You can Dial our Toll Free Number <a href="tel:8882973077">888-297-3077</a> </p>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
          <div class="Aboutimg">
            <img src="{{asset('images/customer-care.jpg')}}" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- END About Us -->

@endsection