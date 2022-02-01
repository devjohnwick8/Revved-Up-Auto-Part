<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItemsModel extends Model
{
    use HasFactory;
    protected $table = "orders_items";
    protected $guarded = [];

    public function images_take1()
    {
        return $this->hasOne(ProductImageModel::class, 'product_id', 'id');
    }

    public function get_product()
    {
        return $this->hasOne(ProductsModel::class, 'id', 'product_id');
    }
    
    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
