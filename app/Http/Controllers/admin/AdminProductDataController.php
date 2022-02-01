<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\ProductEngineModel;
use App\Models\ProductMakeModel;
use App\Models\ProductModelModel;
use App\Models\ProductsModel;
use App\Models\ProductSubModelModel;
use App\Models\ProductSpecificationModel;
use App\Models\ProductAvailableModel;
use App\Models\ProductOptionModel;


use App\Models\ProductYearModel;
use Illuminate\Http\Request;

class AdminProductDataController extends Controller
{
    /**-------------------------------Product Make------------------------------------*/
    function product_make_list()
    {
        $products_make = ProductMakeModel::orderby('id', 'ASC')->get();
        return view('admin.product-data.product-make.product-make-list', compact('products_make'));
    }
    function product_make_add()
    {
        return view('admin.product-data.product-make.product-make-add');
    }
    function product_make_delete(ProductMakeModel $product_make)
    {
        $product_make->delete();
        return back()->with('delete', 'Deleted Successfully');
    }
    function product_make_edit(ProductMakeModel $product_make)
    {
        return view('admin.product-data.product-make.product-make-edit', compact('product_make'));
    }
    function product_make_add_edit_data(ProductMakeModel $product_make, Request $request)
    {
     
        $create = 1;
        (isset($product_make->id) and $product_make->id > 0) ? $create = 0 : $create = 1;
        $product_make->title = $request->title;
        $product_make->save();
        if ($create == 0) {
            return back()->with('update', 'Updated Successfully');
        } else {
            return back()->with('success', 'Added Successfully');
        }
    }
    /**-------------------------------Product Model------------------------------------*/
    function product_model_list()
    {
        $products_model = ProductModelModel::orderby('id', 'ASC')->get();
        return view('admin.product-data.product-model.product-model-list', compact('products_model'));
    }
    function product_model_add()
    {
        return view('admin.product-data.product-model.product-model-add');
    }
    function product_model_delete(ProductModelModel $product_model)
    {
        $product_model->delete();
        return back()->with('delete', 'Deleted Successfully');
    }
    function product_model_edit(ProductModelModel $product_model)
    {
        return view('admin.product-data.product-model.product-model-edit', compact('product_model'));
    }
    function product_model_add_edit_data(ProductModelModel $product_model, Request $request)
    {
        $create = 1;
        (isset($product_model->id) and $product_model->id > 0) ? $create = 0 : $create = 1;
        $product_model->title = $request->title;
        $product_model->save();
        if ($create == 0) {
            return back()->with('update', 'Updated Successfully');
        } else {
            return back()->with('success', 'Added Successfully');
        }
    }
    /**-------------------------------Product SubModel------------------------------------*/
    function product_submodel_list()
    {
        $products_submodel = ProductSubModelModel::orderby('id', 'ASC')->get();
        return view('admin.product-data.product-submodel.product-submodel-list', compact('products_submodel'));
    }
    function product_submodel_add()
    {
        return view('admin.product-data.product-submodel.product-submodel-add');
    }
    function product_submodel_delete(ProductSubModelModel $product_submodel)
    {
        $product_submodel->delete();
        return back()->with('delete', 'Deleted Successfully');
    }
    function product_submodel_edit(ProductSubModelModel $product_submodel)
    {
        return view('admin.product-data.product-submodel.product-submodel-edit', compact('product_submodel'));
    }
    function product_submodel_add_edit_data(ProductSubModelModel $product_submodel, Request $request)
    {
        $create = 1;
        (isset($product_submodel->id) and $product_submodel->id > 0) ? $create = 0 : $create = 1;
        $product_submodel->title = $request->title;
        $product_submodel->save();
        if ($create == 0) {
            return back()->with('update', 'Updated Successfully');
        } else {
            return back()->with('success', 'Added Successfully');
        }
    }
    /**-------------------------------Product SubModel------------------------------------*/
    function product_engine_list()
    {
        $products_engine = ProductEngineModel::orderby('id', 'ASC')->get();
        return view('admin.product-data.product-engine.product-engine-list', compact('products_engine'));
    }
    function product_engine_add()
    {

        return view('admin.product-data.product-engine.product-engine-add');
    }
    function product_engine_delete(ProductEngineModel $product_engine)
    {
        $product_engine->delete();
        return back()->with('delete', 'Deleted Successfully');
    }
    function product_engine_edit(ProductEngineModel $product_engine)
    {
        return view('admin.product-data.product-engine.product-engine-edit', compact('product_engine'));
    }
    function product_engine_add_edit_data(ProductEngineModel $product_engine, Request $request)
    {
        $create = 1;
        (isset($product_engine->id) and $product_engine->id > 0) ? $create = 0 : $create = 1;
        $product_engine->title = $request->title;
        $product_engine->save();
        if ($create == 0) {
            return back()->with('update', 'Updated Successfully');
        } else {
            return back()->with('success', 'Added Successfully');
        }
    }
    
    /**-------------------------------Product Available------------------------------------*/
    function product_available_list()
    {
        //$products_available = ProductAvailableModel::orderby('id', 'ASC')->get();
        $products_available = ProductAvailableModel::with('get_product')->orderby('id', 'ASC')->groupby('product_id')->get();
        return view('admin.product-data.product-available.product-available-list', compact('products_available'));
    }
    function product_available_add()
    {
        $product = ProductsModel::get();
        return view('admin.product-data.product-available.product-available-add', compact('product'));
    }
    function product_available_edit_new($id)
    {
        $product = ProductsModel::get();
    
        $product_avail = ProductAvailableModel::with('get_product')->where('product_id',$id)->first();
       

        return view('admin.product-data.product-available.product-available-edit-new', compact('product','product_avail'));
    }
    
    function product_available_delete( $product_available)
    {
        $product_avail_delete = ProductAvailableModel::where('product_id',$product_available)->delete();
        return back()->with('delete', 'Deleted Successfully');
    }
    function product_available_add_edit_data(ProductAvailableModel $product_available, Request $request)
    {
        
       
        $create = 1;
        (isset($product_available->id) and $product_available->id > 0) ? $create = 0 : $create = 1;
                $product_available = new ProductAvailableModel();
                $product_available->heading = $request->heading;
                $product_available->product_id = $request->product_id;
                $product_available->save();
        if ($create == 0) {
            return back()->with('update', 'Updated Successfully');
        } else {
            return back()->with('success', 'Added Successfully');
        }
    }
    
    
    
     /**-------------------------------Product Option------------------------------------*/
    function product_option_list()
    {
        //$products_option = ProductOptionModel::orderby('id', 'ASC')->get();
        $products_option = ProductOptionModel::with('get_available')->orderby('id', 'ASC')->groupby('product_id')->get();
        return view('admin.product-data.product-option.product-option-list', compact('products_option'));
    }
    function product_option_add()
    {
        $product = ProductAvailableModel::get();

        return view('admin.product-data.product-option.product-option-add', compact('product'));
    }
    function product_option_edit_new($id)
    {
        $product = ProductOptionModel::with('get_available')->where('available_id',$id)->first();
        $product_opt = ProductOptionModel::with('get_available')->where('available_id',$id)->get();
        return view('admin.product-data.product-option.product-option-edit-new', compact('product_opt', 'product'));
    }
    
    function product_option_add_edit_data(ProductOptionModel $product_option, Request $request)
    {
       
        $create = 1;
        (isset($product_option->id) and $product_option->id > 0) ? $create = 0 : $create = 1;
        foreach($request->title as $key=>$value)
        {
            // dd($request);
                // $product_option = new ProductOptionModel();
                $product_option->title = $request->title[$key];
                $product_option->price = $request->price[$key];
			    $product_option->available_id = $request->available_id;
				$product_avail = ProductAvailableModel::where('id', $request->available_id)->first();
			    $product_option->product_id = $product_avail->product_id;
                $product_option->save();
        }
        if ($create == 0) {
            return back()->with('update', 'Updated Successfully');
        } else {
            return back()->with('success', 'Added Successfully');
        }
    }
   


 function product_option_delete( $product_option)
    {
        $product_spec_delete = ProductOptionModel::where('product_id',$product_option)->delete();
        return back()->with('delete', 'Deleted Successfully');
    }

    
    /**-------------------------------Product Specification------------------------------------*/
    // function product_specification_list()
    // {
    //     //$products_specification = ProductSpecificationModel::orderby('id', 'ASC')->get();
    //     $products_specification = ProductSpecificationModel::with('get_product')->orderby('id', 'ASC')->groupby('product_id')->get();
    //     return view('admin.product-data.product-specification.product-specification-list', compact('products_specification'));
    // }
    // function product_specification_add()
    // {
    //     $product = ProductsModel::get();

    //     return view('admin.product-data.product-specification.product-specification-add', compact('product'));
    // }
    // function product_specification_edit_new($id)
    // {
    //     $product = ProductSpecificationModel::with('get_product')->where('product_id',$id)->first();
    //     $product_spec = ProductSpecificationModel::with('get_product')->where('product_id',$id)->get();
    //     return view('admin.product-data.product-specification.product-specification-edit-new', compact('product','product_spec'));
    // }
    // function product_specification_edit_data($id, Request $request)
    // {
    //     $product_spec_delete = ProductSpecificationModel::where('product_id',$id)->delete();
    //     foreach($request->spec_head as $key=>$value)
    //     {
    //         if($value !== null){
    //             $product_specification = new ProductSpecificationModel();
    //             $product_specification->spec_head = $request->spec_head[$key];
    //             $product_specification->spec_detail = $request->spec_detail[$key];
    //             $product_specification->product_id = $request->product_id;
    //             $product_specification->save();
    //         }
    //     }
    //     return back();
    // }
    // function product_specification_delete( $product_specification)
    // {
    //     $product_spec_delete = ProductSpecificationModel::where('product_id',$product_specification)->delete();
    //     return back()->with('delete', 'Deleted Successfully');
    // }
    // function product_specification_add_edit_data(ProductSpecificationModel $product_specification, Request $request)
    // {
      
    //     $create = 1;
    //     (isset($product_specification->id) and $product_specification->id > 0) ? $create = 0 : $create = 1;
    //     foreach($request->spec_head as $key=>$value)
    //     {
    //             $product_specification = new ProductSpecificationModel();
    //             $product_specification->spec_head = $request->spec_head[$key];
    //             $product_specification->spec_detail = $request->spec_detail[$key];
    //             $product_specification->product_id = $request->product_id;
    //             $product_specification->save();
    //     }
    //     if ($create == 0) {
    //         return back()->with('update', 'Updated Successfully');
    //     } else {
    //         return back()->with('success', 'Added Successfully');
    //     }
    // }

    /**-------------------------------Product Year------------------------------------*/
    function product_year_list()
    {
        $products_year = ProductYearModel::orderby('id', 'ASC')->get();
        return view('admin.product-data.product-year.product-year-list', compact('products_year'));
    }
    function product_year_add()
    {
        return view('admin.product-data.product-year.product-year-add');
    }
    function product_year_delete(ProductYearModel $product_year)
    {
        $product_year->delete();
        return back()->with('delete', 'Deleted Successfully');
    }
    function product_year_edit(ProductYearModel $product_year)
    {
        return view('admin.product-data.product-year.product-year-edit', compact('product_year'));
    }
    function product_year_add_edit_data(ProductYearModel $product_year, Request $request)
    {
        $create = 1;
        (isset($product_year->id) and $product_year->id > 0) ? $create = 0 : $create = 1;
        $product_year->title = $request->title;
        $product_year->save();
        if ($create == 0) {
            return back()->with('update', 'Updated Successfully');
        } else {
            return back()->with('success', 'Added Successfully');
        }
    }
}
