@extends('layouts.main')
@section('content')

  <!-- banner start -->
  <section class="inner_banner">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div class="banner_text black_bg">
            <h1>Warranty Policy</h1>
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
          <div class="AboutContent">
            <h6>Our Warranty Covers</h6>
            <ul>
              <li>This warranty covers any defects in material or workmanship under normal use during the Warranty Period.</li>
              <li>During any Warranty Period, ‘Revved Up Auto Parts’ will provide a replacement at no charge if the part proves to be defective because of improper material or workmanship, under normal use and maintenance.</li>
            </ul>
            <div class="clearfix"></div>
            <h6>Warranty Exclusions</h6>
            <ul>
              <li>Our Warranty does not cover any problem that is caused by conditions, malfunctions or damage not resulting from defects in material or workmanship.</li>
              <li>Our Warranty for Radiators do not cover damage to connection threads for any Radiator that was stripped during the installation.</li>
              <li>Refunds will not be granted for damage caused by improper installation.</li>
              <li>Please note that all returns are subject to inspection, and we cannot warranty an item that has been discontinued by our manufacturer.</li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="Aboutimg">
            <img src="{{asset('images/wr.png')}}" alt="" class="img-fluid">
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- END About Us -->

@endsection