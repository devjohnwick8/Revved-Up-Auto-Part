
@extends('layouts.main')
@section('content')

<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Change Password</h1>
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
                    <h2>Change Password</h2>
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
                        <div class="login-title">
                            <h3>Change Password</h3>
                        </div>
                        <form action="{{route('UI_change_password_Updated' , [auth()->user()->id])}}" method="POST">
                            @csrf
                            
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="password" name="old_password" placeholder="old password" class="form-control" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="password" name="new_password" placeholder="New Password" class="form-control" required="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="password" name="c_password" placeholder="Conform Password" class="form-control" required="">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="submit_btn">
                                        <input class="clr-btn" type="submit" name="" value="Change Password">
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