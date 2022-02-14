<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SpecificationModel extends Model
{
    protected $table= "product_specifications";
    use HasFactory;

    public function get_product()
    {
        return $this->belongsTo(ProductsModel::class, 'product_id', 'id');
    }
}