<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Service;
use App\Models\Appointment;
class Appointment_service extends Model
{
    use HasFactory;
    protected $fillable = [
        'appointment_id', 'service_id'
    ];

    public function service()
    {
        return $this->belongsTo(Service::class, 'service_id');
    }

    public function appointment()
    {
        return $this->belongsTo(Appointment::class, 'appointment_id');
    }
}
