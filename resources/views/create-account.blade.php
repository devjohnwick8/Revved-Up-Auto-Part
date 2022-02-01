@extends('layouts.main')
@section('content')
<!-- banner start -->
<section class="inner_banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="banner_text black_bg">
                    <h1>Member Now</h1>
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
                        <div class="shopping_us">
                            <p>Please enter your information to become a member. Becoming a member of RadiatorExpress.com enables you to receive special benefits such as: Personal pricing and great deals! Check order status Track your order Change you account info</p>
                            <p>Thanks again for shopping with us!</p>
                        </div>
                        <form action="{{route('UI_Create_Account_Data')}}" method="POST">
                            @csrf
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">First Name:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="text" id="inputPassword6" name="first_name" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Last Name:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="text" id="inputPassword6" name="last_name" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Address 1*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="text" id="inputPassword6" name="address1" class="form-control" aria-describedby="passwordHelpInline">
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Address 2*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="text" id="inputPassword6" name="address2" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">City*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="text" id="inputPassword6" name="city" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">State*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="text" id="inputPassword6" name="state" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Zip Code*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="number" id="inputPassword6" name="zip_code" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Phone #*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="number" id="inputPassword6" name="phone" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Fax #:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="text" id="inputPassword6" name="fax" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Email:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="email" id="inputPassword6" name="email" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">password*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="password" id="inputPassword6" name="password" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">Confirm password*:</label>
                                </div>
                                <div class="col-md-4 col-sm-8 col-xs-12">
                                    <input type="password" id="inputPassword6" name="password2" class="form-control" aria-describedby="passwordHelpInline" required>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label for="inputPassword6" class="col-form-label">How did you hear about us?</label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <div>
                                        <select name="where_heard" class="form-control" id="Select1" required>
                                            <option value="" hidden selected="">-- Please Select --</option>
                                            <option value="GOOGLE">GOOGLE</option>
                                            <option value="AOL_LIST"> AOL</option>
                                            <option value="MSN">MSN/BING</option>
                                            <option value="ASK_JEEVES">ASK.COM</option>
                                            <option value="EBAY_LIST">E-BAY</option>
                                            <option value="YAHOO">YAHOO</option>
                                            <option value="WORD_OF_MOUTH">WORD OF MOUTH</option>
                                            <option value="YELLOWPAGES">YELLOWPAGES</option>
                                            <option value="WORD_OF_MOUTH">WORD OF MOUTH</option>
                                            <option value="OTHER">OTHER</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="member_btn">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <div class="mem_btn">
                                            <button type="submit" class="btn ">Resgister Member</button>
                                        </div>

                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <div class="mem_btn">
                                            <a class="btn" href="{{route('UI_home')}}">Cancel</a>
                                            <!-- <button class="btn "></button>
                                         -->
                                        </div>
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
<!-- END Contact Us -->
@endsection