<?php


namespace App\Http\Controllers;


use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class CategoryController extends Controller
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
        $category = Category::with('servicelist')->where('user_id',$request->user_id)->get();
        
        return response()->json(compact('category'));
    }


    public function create()
    {
        
       
    }


    public function store(Request $request)
    {
       
        $message = array();
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'color' => 'required|string|max:255',
        ],$message);

        if($validator->fails()){
            $message = $validator->messages()->all();
        
            return response()->json( $message , 400);
        }
        $category = Category::create([
            'name' => $request->name,
            'color' => $request->color,
            'user_id'=>$request->user_id
        ]);
        $category = Category::with('servicelist')->where('user_id',$request->user_id)->get();
        if($category){
            return response()->json(compact('category'));
         }else{
             return response()->json(['error'], 400);
         }
       
        
    }

    public function show(Category $category)
    {
        try{
            if(!$user = JWTAuth::parseToken()->authenticate()){
                return response()->json(['user_not_found'], 400);
            }
            return response()->json(compact('category'));  
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