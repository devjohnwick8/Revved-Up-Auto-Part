<?php

namespace App\Models;

use App\Models\BillingImageModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BillingModel extends Model
{
    use HasFactory;
    protected $table = "billings";
    protected $guarded = [];

    public function get_user()
    {
        return $this->hasMany(UserModel::class, 'id', 'user_id');
    }
}
