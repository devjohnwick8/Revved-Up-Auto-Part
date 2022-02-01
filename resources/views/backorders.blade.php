  
@extends('layouts.main')
@section('content')
  <!-- banner start -->
  <section class="inner_banner">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="banner_text black_bg">
            <h1>Back Orders</h1>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- banner end -->
  
  <!-- BEGIN About Us -->
  <section class="AboutUsMain">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="AboutContent">
            <span>Backorders</span>
            <ul>
              <li>All backorders will have to be placed over the phone with one of our representatives.</li>
              <li>For any backorders that are canceled there will be a 10% processing fee when customers are refunded.</li>
            </ul>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
          <div class="Aboutimg">
            <img src="{{asset('images/bc.jpg')}}" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- END About Us -->
 

 

@endsection