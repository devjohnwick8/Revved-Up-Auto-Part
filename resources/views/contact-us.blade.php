@extends('layouts.main')
@section('content')

<!-- banner start -->
<section class="inner_banner">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="banner_text black_bg">
          <h1>Contact Us</h1>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- banner end -->
<!-- BEGIN Contact Us -->
<section id="testimonials">
  <div class="container">
  @include('layouts/flash-message')
    <div class="row">
      <div class="col-12">
        <div class="gettouch">
          <span>Get In Touch</span>
          <!-- <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
            molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
            numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
            optio, eaque rerum! Provident similique accusantium nemo autem.</p> -->
        </div>
      </div>
    </div>
    <div class="row">
    <div class="commentSection">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
              <form action="{{route('UI_contact_us_post')}}" method="Post"  class="row g-3" >
                @csrf
                <div class="col-md-6">
                  <label for="Name" class="form-label">Name</label>
                  <input type="text" class="form-control" id="Name" value="{{auth()->check() ? auth()->user()->first_name : ''}}" name="name">
                </div>
                <div class="col-md-6">
                  <label for="inputEmail4" class="form-label">Email</label>
                  <input type="email" class="form-control" id="inputEmail4" name="email" value="{{auth()->check() ? auth()->user()->email : ''}}">
                </div>
                <div class="col-md-12">
                  <label for="Subject" class="form-label">Subject</label>
                  <input type="text" class="form-control" id="Subject" name="subject">
                </div>
                <div class="col-12">
                  <div class="form-floating">
                    <textarea class="form-control" placeholder="Leave a comment here" name="comment" id="floatingTextarea2" style="height: 150px"></textarea>
                    <label for="floatingTextarea2">Comments</label>
                  </div>
                </div>
                <div class="col-12">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="ContactusBg">
                <span>Locations</span>
                <ul>
                  <li><i class="fas fa-map-marker-alt"></i> 212 BULKHEAD AVE Manahawkin, NJ 08050, </li>
                  <li><i class="fas fa-envelope"></i> revvedupautoparts@gmail.com</li>
                  <li><i class="fas fa-phone-alt"></i> 888-297-3077</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
    </div>
  </div>
</section>
<!-- END Contact Us -->

@endsection