<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Auth;

class UserController extends Controller
{
    public function register(Request $request){
            $message = array();
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:users',
                'password' => 'required|string|min:6',
            ], $message);

            if($validator->fails()){
                $message = $validator->messages()->all();
           
                return response()->json( $message , 400);
            }
            $password= Hash::make($request->password);
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' =>$password ,
            ]);
            if (Auth::attempt(array('email'=>$request->email, 'password'=>$password)))
            {
                return response()->json(compact('user','token'), 201);

            }else{
                return response()->json(['error'=>'invalid Registration'], 400);
            }


    }

    public function login(Request $request){
        $credentials = $request->all();
       
        if (Auth::attempt($credentials))
        {
            $user = Auth::user()->id;
            return response()->json(compact('user'), 201);

        }else{
            return response()->json(['error'=>'invalid Registration'], 400);
        }

    }

    public function getAuthenticatedUser(){
        try{
            if(!$user = JWTAuth::parseToken()->authenticate()){
                return response()->json(['user_not_found'], 400);
            }
            }catch (TokenExpiredException $e){
                return response()->json(['token_expired'], $e->getStatusCode());
            }catch (TokenInvalidException $e){
                return response()->json(['token_invalid'], $e->getStatusCode());
            }catch (JWTException $e){
                return response()->json(['token_absent'], $e->getStatusCode());
            }

        return response()->json(compact('user'));
    }
}