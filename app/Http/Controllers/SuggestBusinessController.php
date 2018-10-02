<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\SuggestedBussiness;

class SuggestBusinessController extends Controller
{
    
/**
 * Shows the suggest a business page
 */

    public function show(){
      return view('profile.suggest-business');
    }

/**
 * Process the suggested business
 */

  public function add(){

    $companyName = request('company-name');
    $companyType = request('company-type');
    $companyOwner = request('owner');
    $companyInformation = request('additional-information');

    $data = array(

      'name' => $companyName, 	
      'type' => $companyType, 	
      'user' => Auth::user()->id, 	
      'owned' => $companyOwner, 	
      'status' => 'suggested', 	
      'additional_information' => $companyInformation 


    );

    SuggestedBussiness::insert($data);

    return redirect()->back()->with([
      'message'    => 'Business Suggested successfully ',
      'alert-type' => 'success',
  ]);
  
  }

}
