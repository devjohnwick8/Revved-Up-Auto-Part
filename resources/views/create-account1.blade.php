<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="login_box wow fadeInRight" data-wow-duration="2s">
        <div class="login-title">
            <h3>Register Your Member Information:</h3>
        </div>
        <form action="{{route('UI_Create_Account_Data')}}" method="POST">
            @csrf
            <div class="form-group form_1">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="name" name="first_name" placeholder="First Name" class="form-control" required="">
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="name" name="last_name" placeholder="Last Name" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="address1" placeholder="Address 1*" class="form-control" required="">
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="address2" placeholder="Address 2*" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="city" placeholder="City*" class="form-control" required="">
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="state" placeholder="State*" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="zip_code" placeholder="123456*" class="form-control" required="">
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="phone" placeholder="0123456798*" class="form-control" required="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" name="fax" placeholder="123456*" class="form-control" required="">
                    </div>

                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <input type="email" name="email" placeholder="Email Address" class="form-control" required="">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <input type="password" name="password" placeholder="Password" class="form-control" required="">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <input type="password" name="password2" placeholder="Retype Password" class="form-control" required="">
                    </div>
                </div>
            </div>
            <div>
                <select name="where_heard" class="form-control" id="Select1">
                    <option value="" selected="">-- Please Select --</option>
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
            <!-- <div class="form-group">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 col-sm-6">
                        <div class="checkbox">
                            <p>By creating an account, You agree to our <a href="">Term &amp;
                                    Conditions</a></p>
                        </div>
                    </div>
                </div>
            </div> -->
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-6">
                    <div class="go_home1 ">
                        <button type="submit" class="btn btn_red">CREATE ACCOUNT </button>
                    </div>
                </div>
            </div>
        </form>
    </div>