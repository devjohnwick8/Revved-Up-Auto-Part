<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductOptionModel extends Model
{
    use HasFactory;
    protected $table = "product_options";
    protected $guarded = [];
    
    public function get_product()
    {
        return $this->belongsTo(ProductsModel::class, 'available_product_id', 'id');
    }
	
	 public function get_available()
    {
        return $this->belongsTo(ProductAvailableModel::class, 'available_id', 'id');
    }
}
