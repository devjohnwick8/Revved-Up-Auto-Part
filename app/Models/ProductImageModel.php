<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImageModel extends Model
{
    protected $table = "product_images";
    use HasFactory;

    public function get_product()
    {
        return $this->hasOne(ProductsModel::class, 'id', 'product_images_ibfk_1');
    }
}

