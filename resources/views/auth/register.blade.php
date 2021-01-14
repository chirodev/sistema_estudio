
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="stylesheet" href="{{ asset('/dist/modules/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/modules/ionicons/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css') }}">

    <link rel="stylesheet" href="{{ asset('/dist/css/demo.css') }}">
    <link rel="stylesheet" href="{{ asset('/dist/css/style.css') }}">
</head>
<body>

    <div id="app">
        <section class="section">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">

                        <div class="card card-primary">
                            <div class="card-header">
                                <h4>Register
                                    <div class="float-right">
                                        <a href="{{ route('login') }}">
                                        Login?
                                        </a>
                                    </div>
                                </h4>
                            </div>

                            <div class="card-body">
                                <form method="POST" action="{{ route('register') }}" class="needs-validation" novalidate="">
                                    @csrf
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input id="nombre" type="text" class="form-control" name="nombre" value="{{ old('nombre') }}" tabindex="1" required autofocus>

                                        @if ($errors->has('nombre'))
                                            <div class="invalid-feedback" style="display: block">
                                                {{ $errors->first('nombre') }}
                                            </div>
                                        @endif

                                    </div>
                                    <div class="form-group">
                                        <label for="usuario">Usuario</label>
                                        <input id="usuario" type="text" class="form-control" value="{{ old('usuario') }}" name="usuario" tabindex="1" required>

                                        @if ($errors->has('usuario'))
                                            <div class="invalid-feedback" style="display: block">
                                                {{ $errors->first('usuario') }}
                                            </div>
                                        @endif

                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="d-block">
                                            Password
                                        </label>
                                        <input id="password" type="password" class="form-control" name="password" tabindex="2" required>
                                            
                                        @if ($errors->has('password'))
                                            <div class="invalid-feedback" style="display: block">
                                                {{ $errors->first('password') }}
                                            </div>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="password_confirmation" class="d-block">
                                            Confirmar Password
                                        </label>
                                        <input id="password_confirmation" type="password" class="form-control" name="password_confirmation" tabindex="2" required>
                                    </div>

                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
                                        <label class="custom-control-label" for="remember-me">Remember Me</label>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block" tabindex="4">
                                            Registrar
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    
</body>
</html>

