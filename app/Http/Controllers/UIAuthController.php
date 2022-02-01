<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;




class UIAuthController extends Controller
{
    public function login()
    {
        $my_path = session()->get('_previous')['url'];
        if (Auth::check()) {
        return route('UI_home');
        }else{
        session()->put('my_url' , $my_path);    
        $cart = session()->get('cart');
        return view('login', compact('cart')  );
              
        }
    }
    public function login_data(Request $request)
    {
        // dd($request);
        if (!empty($request->email) && !empty($request->password)) {
            $userfind = User::where('email', $request->email)->where('user_role', 2)->first();
            if ($userfind) {
                /*means found user*/
                if (Hash::check($request->password, $userfind->password)) {
                    /*matched password*/
                    Auth::login($userfind);
                    if (Auth::check()) {
                    $url = (session()->get('my_url'));
                      return Redirect::away($url);
                    } else {
                        return redirect(route('UI_Login'));
                    }
                    /*matched password end*/
                } else {
                    return redirect(route('UI_Login'))->with('Failed_Password', 'Password is incorrect')->with('email', $request->email);
                }
                /*means found user end*/
            } else {
                return redirect(route('UI_Login'))->with('Failed_Email', 'Email not found');
            }
        } else {
            return redirect(route('UI_Login'))->with('Failed_Empty', 'Please fill required fields');
        }
    }
    public function create_account()
    {
        return view('create-account');
    }
    public function create_account_data(User $user, Request $request)
    {
        if ($request->password == $request->password2) {
            $create = 1;
            (isset($user->id) and $user->id > 0) ? $create = 0 : $create = 1;
            $user->first_name = $request->first_name;
            $user->last_name = $request->last_name;
            $user->address1 = $request->address1;
            $user->address2 = $request->address2;
            $user->city = $request->city;
            $user->state = $request->state;
            $user->zip_code = $request->zip_code;
            $user->phone = $request->phone;
            $user->fax = $request->fax;
            $user->where_heard = $request->where_heard;
            $user->email = $request->email;
            if ($request->password) {
                $user->password = Hash::make($request->password);
            }
            $user->user_role = 2;
            $user->status = 0;
            $user->save();
            if (Auth::check()) {
                return redirect(route('UI_home'));
            }
            if ($create == 0) {
                return back()->with('update', 'Updated Successfully');
            } else {
                return back()->with('success', 'Account Created Successfully');
            }
        } else {
            return back()->with('update', 'Password does not match');
        }
    }
    public function user_logout()
    {
        Auth::logout();
        return redirect(route('UI_home'));
    }

    public function my_profile(){
        
        return view('my-profile');
        
    }

    public function my_profile_update(User $user,Request $request){
        $create = 1;
        (isset($user->id) and $user->id>0)?$create=0:$create=1;
        $user->first_name = $request->first_name;
        $user->phone = $request->phone;
        $user->zip_code = $request->zip_code;
        $user->city = $request->city;
        $user->status = $request->status;
        $user->state = $request->state;
        $user->address1 = $request->address1;
        $user->address2 = $request->address2;
        $user->save();
        if($create == 0)
        {
            return back()->with('success','Updated Successfully');
        }
        else
        {
            return back()->with('success','Added Successfully');
        }
    }

    public function change_password(){
        
        return view('change-password');
    }

    public function change_password_update(User $user,Request $request){
     
        if($request->old_password !== null And Hash::check($request->old_password ,Auth()->user()->getAuthPassword())){
          
            if($request->new_password == $request->c_password){
                $user->password = Hash::make($request->new_password);
                $user->save();
                return back()->with('success','Reset Successfully');
            }else{
                return back()->with('error','Password not match');
            }       
        }
        else{
            return back()->with('error','Old Password is incorrect');
        }
    }
      
    public function forgot_password()
    {
        return view('forgot-password');
    }
}
