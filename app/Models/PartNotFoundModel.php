<?php

namespace App\Models;

use App\Models\BillingImageModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PartNotFoundModel extends Model
{
    use HasFactory;
    protected $table = "part_not_founds";
    protected $guarded = [];

    public function get_product()
    {
        return $this->hasMany(ProductsModel::class, 'id', 'product_id');
    }
}
