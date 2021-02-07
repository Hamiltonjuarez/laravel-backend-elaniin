<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.7.3/dist/alpine.js" defer></script>
    </head>
    <body class="">
        <div style="padding:5px;box-shadow: 0 .5rem 1rem rgba(0,0,0,.15); width:35%;margin-left:30%; margin-top:10%; height:30%">
            <div class="flex-center position-ref full-height" style="border-radius:10px; padding: 10px">
                <h3 style="margin-left:25%">Actualiza la contraseña de tu usuario.  </h3>
                <form method="POST" action="api/reset-password">       
                    <input type="hidden" name="token" value="{{ request()->get('token') }}">                  
                    <div class="block">                        
                        <input id="email" style="width:90%;height:20px; border-radius:5px; margin:5px" type="email" name="email" :value="old('email', $request->email)" required autofocus placeholder="correo" />
                    </div>
                    <div >                       
                        <input id="password" style="width:90%; height:20px; border-radius:5px; margin:5px" type="password" name="password" required autocomplete="new-password" placeholder="contraseña" />
                    </div>
                    <div>                        
                        <input id="password_confirmation" style="width:90%; height:20px; border-radius:5px; margin:5px" type="password" name="password_confirmation" required autocomplete="new-password" placeholder="confirme contraseña" />
                    </div>
                    <div style="margin-top:10px;margin-left:5px;">
                        <button type="submit" style="border-radius:5px; background:#007bff;color:white; border-color:#007bff;padding:5px;">
                        Cambiar Contraseña 
                        </button>
                    </div>
                </form>
                </div>
            </div>
    </body>
</html>
