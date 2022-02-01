@extends('layouts.main')
@section('content')

<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>My Profile</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="my_hose">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="diameter">
                    <h2>My Profile</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="login-main padding-70 angle-img">
    <div class="container">
    @include('layouts/flash-message')
        <div class="col-xs-10 col-sm-10 col-md-10 centerCol">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="login_box">
                        <form class="form account-details-form" action="{{route('UI_my_profile_Updated', [auth()->user()->id])}}" method="post">
                        @csrf
                <div class="row">

                    <div class="form-group mb-3 col-sm-6">
                        <label for="display-name">First Name *</label>
                        <input type="text" id="display-name" name="first_name" placeholder="Username" class="form-control form-control-md mb-0" value="{{auth()->user()->first_name}}">
                     
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="email_1">Email address *</label>
                        <input readonly type="email" id="email_1" name="email" class="form-control form-control-md" value="{{auth()->user()->email}}">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="email_1">Phone Number *</label>
                        <input type="number" id="email_1" name="phone" class="form-control form-control-md" value="{{auth()->user()->phone}}">
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="email_1">Zip Code *</label>
                        <input type="number" id="email_1" name="zip_code" class="form-control form-control-md" value="{{auth()->user()->zip_code}}">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="email_1">City *</label>
                        <input type="text" id="email_1" name="city" class="form-control form-control-md" value="{{auth()->user()->city}}">
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="email_1">State *</label>
                        <input type="text" id="email_1" name="state" class="form-control form-control-md" value="{{auth()->user()->state}}">
                    </div>
                </div>
                <div class="form-group mb-6">
                    <label for="email_1">Address One</label>
                    <input type="text" id="email_1" name="address1" class="form-control form-control-md" value="{{auth()->user()->address1}}">
                </div>
                <div class="form-group mb-6">
                    <label for="email_1">Address Two</label>
                    <input type="text" id="email_1" name="address2" class="form-control form-control-md" value="{{auth()->user()->address2}}">
                </div>
                <div class="row">
                                <div class="col-md-4">
                                    <div class="submit_btn">
                                        <input class="clr-btn" type="submit" name="" value="Update Profile">
                                    </div>
                                </div>
                            </div>

            </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection