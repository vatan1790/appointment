<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Appointment;
use App\Models\Slot;
class Technician extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id', 'fname', 'lname', 'image', 'status','services','schedules','workingTime'
    ];

    public function appointments()
    {
        return $this->hasMany(Appointment::class, 'technician_id')->with('serviceslist')->with('customer')->with('technician');
    }

    public function slots()
    {
        return $this->hasMany(Slot::class, 'technician_id');
    }
   
}
