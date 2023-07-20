<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Service;
use App\Models\Technician;
use App\Models\Customer;
use App\Models\Appointment_service;
class Appointment extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id', 'customer_id','technician_id', 'services', 'from_time', 'to_time',
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id');
    }

    public function technician()
    {
        return $this->belongsTo(Technician::class, 'technician_id');
    }

    public function serviceslist()
    {
        return $this->hasMany(Appointment_service::class, 'appointment_id')->with('service');
    }
}
