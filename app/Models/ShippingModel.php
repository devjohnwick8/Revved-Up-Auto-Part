<?php

namespace App\Models;

use App\Models\ShippingImageModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShippingModel extends Model
{
    use HasFactory;
    protected $table = "shippings";
    protected $guarded = [];

    public function get_user()
    {
        return $this->hasMany(UserModel::class, 'id', 'user_id');
    }
}
