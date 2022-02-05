<!-- header strat -->
<header>
    <div class="topSec">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-3 col-xs-12 ">
          </div>
          <div class="col-md-3 col-sm-3 col-xs-12 ">
            <ul class="">
              <li><a href="#"> </a></li>
              <li><a href="#"></a></li>
            </ul>
          </div>
          <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

            <div class="row">
              <div class="col-md-8 col-sm-8 col-xs-12">
                <div class="new_head">
                  <ul>

                  @if(auth()->check())
                    <li class="dropdown">
                    <a href="javascript:void(0)"><i class="fas fa-user-tie"></i> {{auth()->user()->first_name}}</a>
                      <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a> -->
                      <ul class="dropdown-menu">
                        <li><a href="{{route('UI_my_profile')}}">My Profile</a></li>
                        <li><a href="{{route('UI_my_orders')}}">My Order</a></li>
                        <li><a href="{{route('UI_change_password')}}">Change Passsword</a></li>
                        <li><a href="{{route('user_logout')}}">Logout</a></li>
                      </ul>
                    </li>
                    @else
                        <li style="margin-top: 10px" ><a href="{{route('UI_Login')}}"><i class="fas fa-lock"></i> Login </a></li>
                    @endif
                  </ul>
                </div>  
              </div>
              <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="social_icon">
                  <ul>
                    <li>
                      <!-- <select>
                        <option selected>English</option>
                        <option value="2">German</option>
                        <option value="3">French</option>
                        <option value="3">Arabic</option>
                      </select> -->
                    </li>
                    
                    <li><a href="javascript:void(0)"><img src="{{asset('images/f.png')}}" class="img-fluid" alt=""></a></li>
                    <li><a href="javascript:void(0)"><img src="{{asset('images/p.png')}}" class="img-fluid" alt=""></a></li>
                    <li><a href="javascript:void(0)"><img src="{{asset('images/i.png')}}" class="img-fluid" alt=""></a></li>
                  </ul>
                </div>
              </div>
            </div>


          </div>
        </div>
      </div>
    </div>
    <div class="menuSec">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="logo"> <a href="{{route('UI_home')}}"><img src="{{asset('images/logo.png')}}" alt="img" class="img-fluid"></a></div>
                </div>
                <div class="col-md-9 d-none d-md-block">
                    <ul id="menu">
                        <li><a href="{{route('UI_home')}}">Home</a></li>
                        <li><a href="javascript:void(0)">Reviews</a></li>
                        <li><a href="{{route('UI_track')}}">Order Tracking</a></li>
                        <li><a href="{{route('UI_about_us')}}">About Us</a></li>
                        <li><a href="{{route('UI_contact_us')}}">Contact Us</a></li>
                        <li><a href="tel:888-297-3077">
                                <div class="tel">
                                    <img src="{{asset('images/ph.png')}}" class="img-fluid" alt="">
                                    <h5>Get Support</h5>
                                    <h4>888-297-3077</h4>
                                </div>
                            </a>
                        </li>

                        <li><a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#exampleModal2"><img src="{{asset('images/search.png')}}" class="img-fluid" alt=""></a></li>
                        <li><a id="added_to_cart" href="{{route('UI_cart')}}"><img src="{{asset('images/cart.png')}}" class="img-fluid" alt=""> <sup id="cart_counter">
                                    {{session()->has('cart') ? count(session()->get('cart')) : 0}}
                                </sup></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header end -->