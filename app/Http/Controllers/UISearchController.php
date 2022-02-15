<?php

namespace App\Http\Controllers;

use App\Models\ProductMakeModel;
use App\Models\ProductsModel;
use Illuminate\Http\Request;

class UISearchController extends Controller
{
    public function search_year(Request $request)
    {
        
        $make = ProductsModel::with('get_product_year')->where('make', $request->reqdata)->get();
        if ($make !== null) {
            $test = array();
            foreach ($make as $make_value) {
                foreach ($make_value->get_product_year as $value) {
                    $test[] = $value;
                }
            }
            return response()->json(['resp' => $test, 'status' => 1]);
        } else {
            return response()->json(['status' => 0]);
        }
    }

    public function search_model(Request $request)
    {


        $year = ProductsModel::with('get_product_model')->where('year', $request->year)->where('make', $request->make)->get();
        if ($year !== null) {
            $test = array();
            foreach ($year as $year_value) {
                foreach ($year_value->get_product_model as $value) {
                    $test[] = $value;
                }
            }
            return response()->json(['resp' => $test, 'status' => 1]);
        } else {
            return response()->json(['status' => 0]);
        }
    }

    public function search_submodel(Request $request)
    {
        $model = ProductsModel::with('get_product_submodel')->where('year', $request->year)->where('make', $request->make)->where('model', $request->model)->get();
        // dd($model);
        if ($model !== null) {
            $test = array();
            foreach ($model as $model_value) {
                foreach ($model_value->get_product_submodel as $value) {
                    $test[] = $value;
                }
            }
            return response()->json(['resp' => $test, 'status' => 1]);
        } else {
            return response()->json(['status' => 0]);
        }
    }
    public function search_engine(Request $request)
    {
        $submodel = ProductsModel::with('get_product_engine')->where('year', $request->year)->where('make', $request->make)->where('model', $request->model)->where('submodel', $request->reqdata)->get();
        // dd($submodel);
        if ($submodel !== null) {
            $test = array();
            foreach ($submodel as $submodel_value) {
                foreach ($submodel_value->get_product_engine as $value) {
                    $test[] = $value;
                }
            }
            return response()->json(['resp' => $test, 'status' => 1]);
        } else {
            return response()->json(['status' => 0]);
        }
    }


    public function shopnow(Request $request)
    {


        $shopnow = ProductsModel::where('make', $request->make)->where('year', $request->year)->where('model', $request->model)->where('submodel', $request->submodel)->where('engine', $request->engine)->first();
        if ($shopnow->stock > 0) {
            return redirect()->route('UI_single_product', [$shopnow->id]);
        } else {
            return redirect()->route('UI_part_not_found_product', [$shopnow->id]);
        }
    }

    public function search_part(Request $request)
    {
        // dd($request->part);
        $part = ProductsModel::where('sku','LIKE','%'.$request->part.'%')
        ->orWhere('title','LIKE','%'.$request->part.'%')
        ->first();

        if ($part) {
            return redirect()->route('UI_single_product', [$part->id]);
        } else {
            return redirect()->route('UI_part_not_found');
        }
    }
}
