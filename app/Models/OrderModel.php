<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderModel extends Model
{
    use HasFactory;
    protected $table = "orders";
    protected $guarded = [];


    public function get_order_item()
    {
        return $this->hasMany(OrderItemsModel::class, 'order_number', 'order_number');
    }

    public function get_product()
    {
        return $this->hasOne(ProductsModel::class, 'id', 'product_id');
    }
    public function get_user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
    public function get_billing()
    {
        return $this->hasOne(BillingModel::class, 'id', 'billing_id');
    }
    public function get_shipping()
    {
        return $this->hasOne(ShippingModel::class, 'id', 'shipping_id');
    }
}
