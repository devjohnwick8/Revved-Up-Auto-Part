@extends('layouts.main')
@section('content')
<!-- banner start -->
<section class="inner_banner">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="banner_text black_bg">
          <h1>Log In</h1>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- banner end -->
<!-- BEGIN Contact Us -->
<section id="testimonials">
  <div class="container">
    <div class="row">
      <div class="commentSection">
        <div class="row">
          <div class="col-md-10 col-sm-10 col-xs-12 centerCol">
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="log_page">

                  <form action="{{route('UI_Login_Data')}}" method="POST">
                    @csrf
                    <div class="row ">

                      <div class="col-md-4 col-sm-4 col-xs-12">
                        <label for="inputPassword6" class="col-form-label">Email:</label>
                      </div>


                      <div class="col-md-8 col-sm-8 col-xs-12">
                        @if(Session::has('Failed_Empty'))
                        <span class="text-danger" role="alert">
                          <strong>* {{Session::get('Failed_Empty')}}</strong>
                        </span>
                        @endif
                        @if(Session::has('Failed_Email'))
                        <span class="text-danger" role="alert">
                          <strong>* {{Session::get('Failed_Email')}}</strong>
                        </span>
                        @endif
                        <input type="email" name="email" id="inputPassword6" class="form-control" aria-describedby="passwordHelpInline">
                      </div>
                    </div>
                    <div class="row ">
                      <div class="col-md-4 col-sm-4 col-xs-12">
                        <label for="inputPassword6" class="col-form-label">Password</label>
                      </div>
                      <div class="col-md-8 col-sm-8 col-xs-12">
                        @if(Session::has('Failed_Password'))
                        <span class="text-danger" role="alert">
                          <strong>* {{Session::get('Failed_Password')}}</strong>
                        </span>
                        @endif
                        <input type="password" name="password" id="inputPassword6" class="form-control" aria-describedby="passwordHelpInline">
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <!-- <div class="per_log">
                        <a href="javascript:void(0)">Forgot Password? </a>
                      </div> -->
                      </div>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="log_btn">
                          <button type="submit"><i class="fas fa-check"></i> Log In</button>
                        </div>
                      </div>
                  </form>
                </div>
              </div>


            </div>

            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="log_member">
                <h3>Not a Member?</h3>
                <p>Becoming member is easy, by being a member you can:</p>

                <ul>
                  <li>- Get personal pricing and great deals!</li>
                  <li>- Check order status</li>
                  <li>Track your order</li>
                  <li>Change you account info</li>
                </ul>
                <a class="btn" href="{{route('UI_Create_Account')}}"> a Member Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
  </div>
</section>
<!-- END Contact Us -->
@endsection