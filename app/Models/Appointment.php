<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Service;
class Appointment extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id', 'customer_id','technician_id', 'services', 'from_time', 'to_time',
    ];
}
