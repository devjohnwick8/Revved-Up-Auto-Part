<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleFitmentModel extends Model
{
    protected $table= "product_fitments";
    use HasFactory;

    public function get_product()
    {
        return $this->belongsTo(ProductsModel::class, 'product_id', 'id');
    }
}