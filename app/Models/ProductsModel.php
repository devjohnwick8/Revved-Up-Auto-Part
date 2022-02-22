<?php

namespace App\Models;

use App\Models\ProductImageModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductsModel extends Model
{
    protected $table = "products";
    use HasFactory;
    public function images_take1()
    {
        return $this->hasOne(ProductImageModel::class, 'product_id', 'id');
    }
    public function get_product_year()
    {
        return $this->hasMany(ProductYearModel::class, 'id', 'year');
    }
    public function get_product_model()
    {
        return $this->hasMany(ProductModelModel::class, 'id', 'model');
    }
    public function get_product_submodel()
    {
        return $this->hasMany(ProductSubModelModel::class, 'id', 'submodel');
    }
    public function get_product_engine()
    {
        return $this->hasMany(ProductEngineModel::class, 'id', 'engine');
    }
    public function get_product_make()
    {
        return $this->hasMany(ProductMakeModel::class, 'id', 'make');
    }


    //has One

    public function product_model()
    {
        return $this->hasOne(ProductModelModel::class, 'id', 'model');
    }

    public function product_specification()
    {
        return $this->hasMany(ProductSpecificationModel::class, 'id', 'proid');
    }

    public function product_year()
    {
        return $this->hasOne(ProductYearModel::class, 'id', 'year');
    }
    public function product_submodel()
    {
        return $this->hasOne(ProductSubModelModel::class, 'id', 'submodel');
    }
    public function product_engine()
    {
        return $this->hasOne(ProductEngineModel::class, 'id', 'engine');
    }
    public function product_make()
    {
        return $this->hasOne(ProductMakeModel::class, 'id', 'make');
    }
    public function product_sub_category()
    {
        return $this->hasOne(SubCategoriesModel::class, 'id', 'sub_categories');
    }

}
