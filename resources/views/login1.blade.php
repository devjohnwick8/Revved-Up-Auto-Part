 <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="login_box wow fadeInLeft" data-wow-duration="2s">
         <div class="login-title">
             <h3>Login To Your Account</h3>
         </div>
         <form action="{{route('UI_Login_Data')}}" method="POST">
             @csrf
             <div class="form-group form_1">
                 <div class="row">
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
                     <div class="col-md-12 col-sm-12 col-xs-6">
                         <input type="email" placeholder="Email" aria-label="Email" name="email" class="form-control" required="">
                     </div>
                 </div>
             </div>
             <div class="form-group">
                 <div class="row">
                     <div class="col-md-12 col-sm-12 col-xs-6">
                         @if(Session::has('Failed_Password'))
                         <span class="text-danger" role="alert">
                             <strong>* {{Session::get('Failed_Password')}}</strong>
                         </span>
                         @endif
                         <input type="password" placeholder="Password" aria-label="password" name="password" class="form-control" required="">
                     </div>
                 </div>
             </div>

             <div class="row">
                 <div class="col-md-12 col-sm-12 col-xs-6">
                     <div class="go_home1 ">
                         <!-- <a href="javascri0pt:void(0)" class="btn btn_red">LOGIN</a> -->
                         <button type="submit" class="btn btn_red">Sign In</button>
                     </div>
                 </div>
             </div>
             <!-- 
             <div class="form-group">
                 <div class="row">
                     <div class="col-md-6 col-sm-6 col-xs-12">
                         <div class="checkbox">
                             <label>
                                 <input type="checkbox" value="">
                                 Remember me</label>
                         </div>
                     </div>
                     <div class="col-md-6 col-sm-6 col-xs-12 forget-link"> <a href="">Forget
                             Password?</a> </div>
                 </div>
             </div> -->
         </form>
     </div>
 </div>