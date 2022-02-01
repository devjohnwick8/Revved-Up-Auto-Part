@extends('layouts.main')
@section('content')

  <!-- banner start -->
  <section class="inner_banner">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="banner_text black_bg">
            <h1>Fitment Issue</h1>
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
            <span>Fit Issues</span>
            <ul>
              <li>What is the issue with fitment?</li>
              <li>If you have a fit issue, you will need to tell us the part number that is or was on the box.</li>
              <li>What is the part number on the unit?</li>
              <li>If error is on our end, then we will have the unit removed and replaced free of charge.</li>
              <li>All new items are returnable if the part is in the original box and claimed within 30 days from the day the part was ordered.</li>
            </ul>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
          <div class="Aboutimg">
            <img src="{{asset('images/fit.jpg')}}" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- END About Us -->

@endsection