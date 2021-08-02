<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login - Damamaya Cyber Monitor</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
</head>

<body class="pt-5 mt-5">
    <div class="container mt-5">
        <div class="row">
            <div class="col-6 p-5 d-flex justify-content-center">
                <img class="w-50 left-img my-5" src="{{ asset('img/logo/kominfo.png') }}" alt="Library">
            </div>
            <div class="col-6 p-5 d-flex align-items-center justify-content-center">
                <div>
                    <h3 class="text-center mb-4">Login</h3>

                    @if (session('failed'))
                        <small class="text-danger">{{ session('failed') }}</small>
                    @endif

                    <form action="{{ route('login') }}" method="post">
                        @csrf
                        <div class="my-3">
                            <input name="username" class="form-control  @error('username')  border-danger @enderror"
                                type="text" placeholder="Username" value="{{ old('username') }}">
                            @error('username')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="mt-3">
                            <input name="password" class="form-control @error('password') border-danger @enderror"
                                type="password" placeholder="Password">
                            @error('password')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-check my-3 pr-5">
                            <input name="remember_me" class="form-check-input" type="checkbox" id="remember_me">
                            <label class="form-check-label" for="remember_me">
                                Remember me
                            </label>
                        </div>

                        <button name="btnLogin" type="submit" class="btn btn-primary w-100">Login</button>
                    </form>

                </div>

            </div>
        </div>
    </div>
</body>

</html>
