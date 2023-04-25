<?php


namespace App\Http\Controllers;


use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Tymon\JWTAuth\JWTManager as JWT;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;

class ServiceController extends Controller
{

    public function index()
    {
        try{
            if(!$user = JWTAuth::parseToken()->authenticate()){
                return response()->json(['user_not_found'], 400);
            }
            $service = Service::where('user_id',$user->id)->get();    
            
            return response()->json(compact('service'));  
        }catch (TokenExpiredException $e){
            return response()->json(['token_expired'], $e->getStatusCode());
        }catch (TokenInvalidException $e){
            return response()->json(['token_invalid'], $e->getStatusCode());
        }catch (JWTException $e){
            return response()->json(['token_absent'], $e->getStatusCode());
        }
         
    }


    public function create()
    {
        
       
    }


    public function store(Request $request)
    {
        try{
            if(!$user = JWTAuth::parseToken()->authenticate()){
                return response()->json(['user_not_found'], 400);
            }
            $message = array();
            $validator = Validator::make($request->all(), [
                'file' =>'required',
                'service_name' => 'required|string|max:255',
                'duration' => 'required',
                'price' => 'required',
                'description' => 'required',
            ],$message);

            if($validator->fails()){
                $message = $validator->messages()->all();
           
                return response()->json( $message , 400);
            }
            return $request;
            if($request->image) {
                $file_name = time().'_'.$request->image->getClientOriginalName();
                $file_path = $request->file('image')->storeAs('uploads', $file_name, 'public');
                $imagename = time().'_'.$request->image->getClientOriginalName();
                $path = '/storage/' . $file_path;
                
                    
            }else{
                $path = '';
            }
            $service = Service::create([
                'name' => $request->service_name,
                'duration' => $request->duration,
                'price' => $request->price,
                'description' => $request->description,
                'image' => $path,
                'user_id'=>$user->id
            ]);
            return response()->json(compact('service'));  
        }catch (TokenExpiredException $e){
            return response()->json(['token_expired'], $e->getStatusCode());
        }catch (TokenInvalidException $e){
            return response()->json(['token_invalid'], $e->getStatusCode());
        }catch (JWTException $e){
            return response()->json(['token_absent'], $e->getStatusCode());
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