<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slot extends Model
{
    use HasFactory;
    protected $fillable = [
        'from_time', 'to_time', 'technician_id', 'appointment_id','date','status'
    ];
}
