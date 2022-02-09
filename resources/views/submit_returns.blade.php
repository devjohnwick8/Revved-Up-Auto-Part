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
  <section id="testimonials">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="gettouch">
            <span>Returns Form</span>
            <p>TELL US HOW WE CAN HELP.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="commentSection ask_quiestion">
        @include('layouts/flash-message')
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <form action="{{route('UI_submit_returns_post')}}" method="Post" class="row g-3">
                @csrf
              <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Nature of Claim</label>
                  <select name="claim" class="form-control"> 
                    <option value="Pre-order Question">Pre-order Question</option>
                    <option value="Order status / Request Tracking">Order status / Request Tracking</option>
                    <option value="New Item Return / Cancellation">New Item Return / Cancellation</option>
                    <option value="Shipping Damage">Shipping Damage</option>
                    <option value="Warranty Claim">Warranty Claim </option>
                    <option value="Fitment Issues">Fitment Issues</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label for="Name" class="form-label">Order Number </label>
                  <input type="number" class="form-control" id="Name" name="order_number">
                </div>
                <div class="col-md-6">
                  <label for="Name" class="form-label">First Name</label>
                  <input type="text" class="form-control" id="Name" value="{{auth()->check() ? auth()->user()->first_name : ''}}" name="first_name">
                </div>
                <div class="col-md-6">
                  <label for="Name" class="form-label">Last Name</label>
                  <input type="text" class="form-control" id="Name" value="{{auth()->check() ? auth()->user()->last_name : ''}}" name="last_name">
                </div>
                <div class="col-md-6">
                  <label for="email" class="form-label">*EMAIL</label>
                  <input type="email" class="form-control" id="email" value="{{auth()->check() ? auth()->user()->email : ''}}" name="email">
                </div>
                <div class="col-md-6">
                  <label for="Number" class="form-label">Phone Number</label>
                  <input type="tel" class="form-control" id="Number" value="{{auth()->check() ? auth()->user()->phone : ''}}" name="phone">
                </div>
                <div class="col-12">
                  <div class="form-floating">
                    <textarea class="form-control" name="discription" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 150px"></textarea>
                    <label for="floatingTextarea2">*DESCRIPTION</label>
                  </div>
                </div>
                <div class="col-12">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- END Contact Us -->

@endsection