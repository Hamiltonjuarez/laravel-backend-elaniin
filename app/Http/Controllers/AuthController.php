<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreUserRequest;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Actions\CreateUser;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\ForgotPasswordRequest;

class AuthController extends Controller
{
    /**
     * Store a new resource in storage
     * 
     * @param \Illuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function registerUser(StoreUserRequest $request)
    {
        $userstore = new CreateUser;
        $userstore->store($request);

        return response()->json([
            'message'   => 'Usuario registrado exitosamente.'
        ],201);
    }

    /**
     * login user 
     * 
     * @param \Illuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $request->validate([
            'email'     => 'required|email',
            'password'  => 'required'
        ]);

        $credentials = $request->only('email','password');
        
        if(!Auth::attempt($credentials)){
            return response()->json([
                'message' => 'Las credenciales no coinciden con ningun usuario.'
            ],401);
        }

        $user = $request->user();

        $tokenResult = $user->createToken('Access Token')->accessToken;
       
        return response()->json([
            'access_token' => $tokenResult,
            'token_type'   => 'Bearer'
        ],200);

    }

    /**
     * Logout user 
     * 
     * @param \Illuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();

        return response()->json([
            'message' => 'Se ha cerrado su sesión con éxito.'
        ]);
    }

    /**
     * Sends mail to update password.  
     * 
     * @param \Illuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function forgotPassword(Request $request)
    {
        $credentials = $request->validate(['email'  =>  'required|email']);

        Password::sendResetLink($credentials);

        return response()->json([
            'message'   => 'Se ha enviado email de recuperacion de clave de ingreso al correo seleccionado',
        ]);
    }

    /**
     * Updates specified user password 
     * 
     * @param \Illuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function resetPassword(ForgotPasswordRequest $request)
    {
       $credentials = $request;    
       $resetStatus = Password::reset($credentials->all(), function ($user, $password){
             $user->password = Hash::make($password);
             $user->save();
        });

        if($resetStatus == Password::INVALID_TOKEN){
            return response()->json([
                'message'   => 'Token no coincide.' //TODO expired token.
            ],401);
        }

        return response()->json([
            'message'   => 'Se modifico la contraseña exitosamente.'
        ],201);
    }
}
