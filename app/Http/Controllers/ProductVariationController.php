<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use App\ProductField;

class ProductVariationController extends Controller
{
    /**
     * Overriding Product Variation Controller - Create method  
     */

     public function create(Request $request){
        $slug = 'product-variations';
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $dataTypeContent = (strlen($dataType->model_name) != 0)
        ? new $dataType->model_name()
        : false;

            foreach ($dataType->addRows as $key => $row) {
            $details = json_decode($row->details);
            $dataType->addRows[$key]['col_width'] = isset($details->width) ? $details->width : 100;
            }

        $isModelTranslatable = is_bread_translatable($dataTypeContent);

         return view('vendor.voyager.product-variations.edit-add', compact('dataType','dataTypeContent','isModelTranslatable'));
     }

     /**
      * 
      */

     public function store(Request $request) {

     }
}
