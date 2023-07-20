<?php


namespace App\Http\Controllers;


use App\Models\Appointment;
use App\Models\Appointment_service;
use App\Models\Service;
use App\Models\Slot;
use App\Models\Temp_service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AppointmentController extends Controller
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
        $appointment = Appointment::where('user_id',$request->user_id)->get();  
        return response()->json(compact('appointment'));  
         
    }


    public function create()
    {
        
       
    }


    public function store(Request $request)
    {       
        $message = array();
        $validator = Validator::make($request->all(), [      
                   
            'technician_id' => 'required',
            'user_id' => 'required',
            'services' => 'required',
            'from_time' => 'required',
            'to_time'=>'required',
            'customer_id' =>'required',
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
       
        $appointment = Appointment::create([
            'to_time' => $request->to_time,
            'from_time' => $request->from_time,
            'services' => $request->services,
            'technician_id' => $request->technician_id,
            'customer_id'=>$request->customer_id,
            'user_id'=>$request->user_id
        ]);
        if($appointment){
            if($request->services != ''){
                $service = explode(',',$request->services);
                for ($i=0; $i < count($service); $i++) { 
                    Appointment_service::create([
                        'appointment_id' => $appointment->id,
                        'service_id' => $service[$i],
                    ]);
                }
            }
            $exist = Slot::where('date',date('Y-m-d'))->where('technician_id',$request->technician_id)->first();
            if($exist == ''){
                for ($i=8; $i < 11 ; $i++) { 
                    for ($j=1; $j <59 ; $j++) { 
                        $z = $j+1;
                        Slot::create([
                            'from_time' => $i.':'.$j.':00',
                            'to_time' => $i.':'.$z.':00',
                            'date' =>date('Y-m-d'),
                            'technician_id'=> $request->technician_id
                        ]);
                    }
                }
            }
            Slot::where('from_time','>=', $request->from_time)->where('from_time','<=', $request->to_time)->where('date','=',date('Y-m-d'))->where('technician_id',$request->technician_id)->update(array('status'=>2,'appointment_id'=> $appointment->id));
            return response()->json(compact('appointment'));
        }else{
            return response()->json(['error'], 400);
        }
    }

    public function tempservice(Request $request){
        $message = array();
        $validator = Validator::make($request->all(), [      
            'service_id' => 'required',
            'user_id' =>'required'
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        $service = explode(',',$request->service_id);
        for ($i=0; $i <count($service) ; $i++) { 
            $exist = Temp_service::where(array('user_id'=>$request->user_id,'service_id'=>$service[$i]))->get()->toArray();
            if(empty($exist)){
                $temp_service = Temp_service::create([
                    'service_id' => $service[$i],
                    'user_id'=>$request->user_id
                ]);
            }
            
        }
        
        $service = Temp_service::with('service')->where('user_id',$request->user_id)->get();  
        return response()->json(compact('service'));
        
    }

    public function tempserviceList(Request $request){
        $message = array();
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        $service = Temp_service::with('service')->where('user_id',$request->user_id)->get();  
        return response()->json(compact('service'));  
           
    }

    public function deletetemp(Request $request){
        $message = array();
        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'user_id' => 'required'
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        Temp_service::where('id',$request->id)->delete(); 
        $service = Temp_service::with('service')->where('user_id',$request->user_id)->get();  
        return response()->json(compact('service'));  
    }

    
    public function show(Service $service)
    {
        try{
            if(!$user = JWTAuth::parseToken()->authenticate()){
                return response()->json(['user_not_found'], 400);
            }
            return response()->json(compact('service'));  
        }catch (TokenExpiredException $e){
            return response()->json(['token_expired'], $e->getStatusCode());
        }catch (TokenInvalidException $e){
            return response()->json(['token_invalid'], $e->getStatusCode());
        }catch (JWTException $e){
            return response()->json(['token_absent'], $e->getStatusCode());
        }
        
    }


    public function edit(Category $category)
    {

        
    }


    public function update(Request $request, Category $category)
    {
        try{
            if(!$user = JWTAuth::parseToken()->authenticate()){
                return response()->json(['user_not_found'], 400);
            }
            $message = array();
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:255',
                'color' => 'required|string|max:255' 
            ],$message);

            if($validator->fails()){
                $message = $validator->messages()->all();
           
                return response()->json( $message , 400);
            }
           
            $category->name  = $request->name;
            $category->color  = $request->color;
            $category->save();
            return response()->json(compact('category'));  
        }catch (TokenExpiredException $e){
            return response()->json(['token_expired'], $e->getStatusCode());
        }catch (TokenInvalidException $e){
            return response()->json(['token_invalid'], $e->getStatusCode());
        }catch (JWTException $e){
            return response()->json(['token_absent'], $e->getStatusCode());
        }
        
    }


    public function destroy(Item $item)
    {

        
    }
}