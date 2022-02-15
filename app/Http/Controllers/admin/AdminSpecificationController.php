<?php

namespace App\Http\Controllers\admin;

use App\Models\SpecificationModel;
use App\Models\ProductsModel;



use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AdminSpecificationController extends Controller
{
/**vehicle_fitment functions starts*/
    function specification()
    {
        $specification = SpecificationModel::with('get_product')->get();
        return view('admin.specifications.specification-list',compact('specification'));
    }
    function specification_add()
    {  
        $product = ProductsModel::orderBy('id', 'Desc')->get();
        return view('admin.specifications.specification-add', compact('product') );
    }
    function specification_edit($id)
    {
        $product = ProductsModel::get();
        $specification = SpecificationModel::where('id',$id)->first();
        return view('admin.specifications.specification-edit',compact('specification', 'product'));
    }
    function specification_delete(SpecificationModel $specification)
    {

        $specification->delete();
        return back()->with('delete','Deleted Successfully');
    }
    function specification_add_edit_data(Request $request,SpecificationModel $specification)
    {
        // dd($request->all());
        $create = 1;
        (isset($specification->id) and $specification->id>0)?$create=0:$create=1;
        if($request->hasFile('images'))
        {
            $imageName = time().'.'.$request->images->getClientOriginalExtension();
            $request->images->move(public_path('/uploads/specifications'), $imageName);
            $specification->title = $imageName;
        }
        $specification->product_id = $request->product_id;
        $specification->save();
        if($create == 0)
        {
            return back()->with('update','Updated Successfully');
        }
        else
        {
            return back()->with('success','Added Successfully');
        }
    }
/**specification functions ends*/


}
