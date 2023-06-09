<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id','category_id' ,'name', 'duration', 'image', 'price', 'description', 'status',
    ];

    public function categorylist()
    {
        return $this->hasMany(Category::class, 'id','category_id');
    }
}
