<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use App\ProfileVerification;

class ProfileController extends Controller
{


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Edit profile page
     */
    public function edit(){

        $phoneverified = ProfileVerification::where('user', Auth::user()->id)->where('key', 'phone')->where('value', Auth::user()->phone)->where('verified','Y')->exists();

        $emailverified = ProfileVerification::where('user', Auth::user()->id)->where('key', 'email')->where('value', Auth::user()->email)->where('verified','Y')->exists();

        return view('dashboard.profile.edit', compact('phoneverified', 'emailverified'));
    }


    /**{{ csrf_field() }}
     * Update profile fields
     */

     public function update(){

        $name = request('name');
        $email = request('email');
        $phone = request('phone');

        User::where('id', Auth::user()->id )
          ->update(['name' => $name, 'email' => $email, 'phone' => $phone]);

          return redirect()->back()->with([
            'message'    => 'Profile updated successfully ',
            'alert-type' => 'success',
        ]);

     }


     /**
      * Update password 
      */

      public function updatePassword(){

        $password = request('password');
        $password =  bcrypt($password);

        User::where('id', Auth::user()->id )
        ->update(['password' => $password]);

        return redirect()->back()->with([
          'message'    => 'Password updated successfully ',
          'alert-type' => 'success',
      ]);

      }

      /**
       * Send email link for email verification
       */

      public function sendConfirmEmail(){

        $digits = 6;
        $code = str_pad(rand(0, pow(10, $digits)-1), $digits, '0', STR_PAD_LEFT);

        ProfileVerification::insert([
            'user' => Auth::user()->id,
            'key' => 'email',
            'value' => Auth::user()->email ,
            'code' => $code,
            'verified' => 'N'
        ]);

        return redirect()->back()->with([
            'message'    => 'Email confirmation code sent successfully',
            'alert-type' => 'success',
        ]);

      }


      /**
       * Send SMS link for Mobile verification
       */
      
       public function sendConfirmPhone(){

        $digits = 6;
        $code = str_pad(rand(0, pow(10, $digits)-1), $digits, '0', STR_PAD_LEFT);

        ProfileVerification::insert([
            'user' => Auth::user()->id,
            'key' => 'phone',
            'value' => Auth::user()->phone ,
            'code' => $code,
            'verified' => 'N'
        ]);

        return redirect()->back()->with([
            'message'    => 'Phone confirmation code sent successfully',
            'alert-type' => 'success',
        ]);

       }

      /**
       * confirm email link form verification
       */

    public function confirmEmail(){

    }


      /**
       * confirm mobile link
       */

    public function confirmPhone(){
        
    }

    /**
     * Main profile page
     */

    public function main(){
            return view('dashboard.profile.main');
    }

}
