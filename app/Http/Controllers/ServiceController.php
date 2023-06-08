<?php


namespace App\Http\Controllers;


use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class ServiceController extends Controller
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
        $service = Service::where('user_id',$request->user_id)->get();  
        return response()->json(compact('service'));  
         
    }


    public function create()
    {
        
       
    }


    public function store(Request $request)
    {       
        $message = array();
        $validator = Validator::make($request->all(), [      
                   
            'service_name' => 'required|string|max:255',
            'duration' => 'required',
            'price' => 'required',
            'description' => 'required',
            'user_id' =>'required'
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        if($request->image) {
            $imageName = time().'.'.$request->image->extension();  
            $file_path =  $request->image->move(public_path('uploads'), $imageName);
            $path = '/uploads/' . $imageName;            
                
        }else{
            $path = '';
        }
        $service = Service::create([
            'name' => $request->service_name,
            'duration' => $request->duration,
            'price' => $request->price,
            'description' => $request->description,
            'image' => $path,
            'user_id'=>$request->user_id
        ]);
        if($service){
           return response()->json(compact('service'));
        }else{
            return response()->json(['error'], 400);
        }
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