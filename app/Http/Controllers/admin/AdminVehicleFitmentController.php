<?php

namespace App\Http\Controllers\admin;

use App\Models\VehicleFitmentModel;
use App\Models\ProductsModel;



use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AdminVehicleFitmentController extends Controller
{
    function dashboard()
    {
        return view('admin.dashboard');
    }

/**vehicle_fitment functions starts*/
    function vehicle_fitment()
    {
        $vehicle_fitment = VehicleFitmentModel::get();
        return view('admin.vehicle-fitments.vehicle-fitment-list',compact('vehicle_fitment'));
    }
    function vehicle_fitment_add()
    {  
        $product = ProductsModel::orderBy('id', 'Desc')->get();
        return view('admin.vehicle-fitments.vehicle-fitment-add', compact('product') );
    }
    function vehicle_fitment_edit($id)
    {
        $product = ProductsModel::get();
        $vehicle_fitment = VehicleFitmentModel::where('id',$id)->first();
        return view('admin.vehicle-fitments.vehicle-fitment-edit',compact('vehicle_fitment', 'product'));
    }
    function vehicle_fitment_delete(VehicleFitmentModel $vehicle_fitment)
    {

        $vehicle_fitment->delete();
        return back()->with('delete','Deleted Successfully');
    }
    function vehicle_fitment_add_edit_data(Request $request,VehicleFitmentModel $vehicle_fitment)
    {
        // dd($request->all());
        $create = 1;
        (isset($vehicle_fitment->id) and $vehicle_fitment->id>0)?$create=0:$create=1;
        if($request->hasFile('images'))
        {
            $imageName = time().'.'.$request->images->getClientOriginalExtension();
            $request->images->move(public_path('/uploads/vehicle-fitments'), $imageName);
            $vehicle_fitment->title = $imageName;
        }
        $vehicle_fitment->product_id = $request->product_id;
        $vehicle_fitment->save();
        if($create == 0)
        {
            return back()->with('update','Updated Successfully');
        }
        else
        {
            return back()->with('success','Added Successfully');
        }
    }
/**vehicle_fitment functions ends*/


}
