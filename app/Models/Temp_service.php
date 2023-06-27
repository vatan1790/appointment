<?php

namespace App\Models;

use App\Models\Service;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Temp_service extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id', 'service_id'
    ];

    public function service()
    {
        return $this->belongsTo(Service::class, 'service_id');
    }
}
