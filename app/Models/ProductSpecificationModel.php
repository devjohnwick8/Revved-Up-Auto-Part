<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductSpecificationModel extends Model
{
    use HasFactory;
    protected $table = "specifications";
    protected $guarded = [];
    
    public function get_product()
    {
        return $this->hasOne(ProductsModel::class, 'id', 'product_id');
    }
}
