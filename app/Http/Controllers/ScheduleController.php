<?php


namespace App\Http\Controllers;


use App\Models\Schedule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class ScheduleController extends Controller
{

    public function index(Request $request)
    {
        $message = array();
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        $schedule = Schedule::where('user_id',$request->user_id)->get();  
        return response()->json(compact('schedule'));  
         
    }

 
    public function store(Request $request)
    {       
        $message = array();
        $validator = Validator::make($request->all(), [
            'from_time' => 'required',
            'to_time' => 'required',
            'user_id' =>'required'
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        $schedule = Schedule::create([
            'from_time' => $request->from_time,
            'to_time' => $request->to_time,
            'user_id'=>$request->user_id
        ]);
        
        $schedule = Schedule::where('user_id',$request->user_id)->get();  
        if($schedule){
           return response()->json(compact('schedule'));
        }else{
            return response()->json(['error'], 400);
        }
    }

    public function deleteSchedule(Request $request){
        $message = array();
        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'user_id' => 'required'
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        Schedule::where('id',$request->id)->delete();         
        $schedule = Schedule::where('user_id',$request->user_id)->get();  
        return response()->json(compact('schedule'));  
    }
 


    
}