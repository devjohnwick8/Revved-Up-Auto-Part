<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\ProductEngineModel;
use App\Models\ProductMakeModel;
use App\Models\ProductModelModel;
use App\Models\ProductSubModelModel;
use App\Models\ProductYearModel;
use Faker\Provider\Image;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Models\CategoriesModel;
use App\Models\ProductImageModel;
use App\Models\SubCategoriesModel;
use App\Models\ProductsModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class AdminProductDetailsController extends Controller
{
    /**-------------------------------Categories Functions------------------------------------*/
    function categories_list()
    {
        $categories = CategoriesModel::get();
        return view('admin.product-details.categories.categories-list',compact('categories'));
    }
    function categories_add()
    {
        return view('admin.product-details.categories.categories-add');
    }
    function categories_edit($id)
    {
        $categories = CategoriesModel::where('id',$id)->first();
        return view('admin.product-details.categories.categories-edit',compact('categories'));
    }
    function categories_delete(CategoriesModel $categories)
    {
        $categories->delete();
        return back()->with('delete','Deleted Successfully');
    }
    function categories_add_edit_data(Request $request,CategoriesModel $categories)
    {
        $create = 1;
        (isset($categories->id) and $categories->id>0)?$create=0:$create=1;
        if($request->hasFile('images'))
        {
            $imageName = time().'.'.$request->images->getClientOriginalExtension();
            $request->images->move(public_path('/uploads/categories'), $imageName);
            $categories->images = $imageName;
        }
        $categories->title = $request->title;
        $categories->status = $request->status;
        $categories->save();
        if($create == 0)
        {
            return back()->with('update','Updated Successfully');
        }
        else
        {
            return back()->with('success','Added Successfully');
        }
    }

    /**-------------------------------Sub-Categories Functions------------------------------------*/
    function sub_categories_list()
    {
        $sub_categories = SubCategoriesModel::with('getcategories')->get();
        //dd($sub_categories);
        return view('admin.product-details.sub-categories.sub-categories-list',compact('sub_categories'));
    }
    function sub_categories_add()
    {
        $parent_categories = CategoriesModel::where('status','1')->orderBy('id','ASC')->get();
        return view('admin.product-details.sub-categories.sub-categories-add',compact('parent_categories'));
    }
    function sub_categories_edit($id)
    {
        $parent_categories = CategoriesModel::where('status','1')->orderBy('id','ASC')->get();
        $sub_categories = SubCategoriesModel::with('getcategories')->where('id',$id)->first();
        return view('admin.product-details.sub-categories.sub-categories-edit',compact('sub_categories','parent_categories'));
    }
    function sub_categories_delete(SubCategoriesModel $sub_categories)
    {
        $sub_categories->delete();
        return back()->with('delete','Deleted Successfully');
    }
    function sub_categories_add_edit_data(Request $request,SubCategoriesModel $sub_categories)
    {
       
        $create = 1;
        (isset($sub_categories->id) and $sub_categories->id>0)?$create=0:$create=1;
        $sub_categories->title = $request->title;
        $sub_categories->parent_category = 1;                                          
        $sub_categories->vendor = $request->vendor;                                                
        $sub_categories->status = $request->status;
        $sub_categories->save();
        if($create == 0)
        {
            return back()->with('update','Updated Successfully');
        }
        else
        {
            return back()->with('success','Added Successfully');
        }
    }

    /**-------------------------------Product Functions------------------------------------*/
    function products_list()
    {
        $products = ProductsModel::with('images_take1')->get();
        return view('admin.product-details.products.products-list',compact('products'));
    }
    function products_add()
    {
        $sub_categories = SubCategoriesModel::where('status','1')->orderBy('id','ASC')->get();
        $product_make = ProductMakeModel::orderBy('id','ASC')->get();
        $product_year = ProductYearModel::orderBy('id','ASC')->get();
        $product_model = ProductModelModel::orderBy('id','ASC')->get();
        $product_submodel = ProductSubModelModel::orderBy('id','ASC')->get();
        $product_engine= ProductEngineModel::orderBy('id','ASC')->get();
        return view('admin.product-details.products.products-add',compact('sub_categories','product_make','product_year','product_model','product_submodel','product_engine'));
    }
    function products_edit($id)
    {
        $sub_categories = SubCategoriesModel::where('status','1')->orderBy('id','ASC')->get();
        $products = ProductsModel::where('id',$id)->first();
        $product_images = ProductImageModel::where('product_id',$id)->get();
        $product_make = ProductMakeModel::orderBy('id','ASC')->get();
        $product_year = ProductYearModel::orderBy('id','ASC')->get();
        $product_model = ProductModelModel::orderBy('id','ASC')->get();
        $product_submodel = ProductSubModelModel::orderBy('id','ASC')->get();
        $product_engine= ProductEngineModel::orderBy('id','ASC')->get();
        return view('admin.product-details.products.products-edit',compact('products','sub_categories','product_images','product_year','product_make','product_model','product_submodel','product_engine'));
    }
    function products_delete(ProductsModel $products)
    {
        $products->delete();
        return back()->with('delete','Deleted Successfully');
    }
    function products_add_edit_data(ProductsModel $products , Request $request)
    {
        $validated = $request->validate([
            "title" => "required|max:255",
          
            "sku" => "required|max:255",

        ]);
  
        $create = 1;
        (isset($products->id) and $products->id>0)?$create=0:$create=1;
        $products->sub_categories = $request->sub_categories;
        $products->title = $validated['title'];
        $products->description = $request->description;
        $products->retail_price = $request->retail_price;
        $products->our_price = $request->our_price;
        $products->brand = $request->brand;
        $products->stock = $request->stock;
        $products->sku = $validated['sku'];
        $products->oem = $request->oem;
        $products->make = $request->make;
        $products->year = $request->year;
        $products->model = $request->model;
        $products->submodel = $request->submodel;
        $products->engine = $request->engine;
        $products->condition = $request->condition;
        $products->rare = $request->rare;
        $products->status = $request->status;
        $products->save();

            /***saving multiple image file */
        
            if($request->hasFile('images'))
            {
                /***for deleting old images*/
                $getimage = ProductImageModel::where('product_id',$products->id)->get();
                    foreach($getimage as $imageget){
                        $imageget->delete();
                    }
                //    dd($request->images);
                /***for uploading new images*/
                foreach ($request->images as $key=> $image)
                {
                    $imageName = time().$key.'.'.$image->getClientOriginalExtension();
                    $image->move(public_path('/uploads/products'), $imageName);
                    /** Store a new images for products */
                    $storeImage = new ProductImageModel();
                    $storeImage->title          = $imageName;
                    $storeImage->product_id     = $products->id;
                    $storeImage->save();
                }
            }
            if($create == 0)
            {
                return back()->with('update','Updated Successfully');
            }
            else
            {
                return back()->with('success','Added Successfully');
            }
    }
}
