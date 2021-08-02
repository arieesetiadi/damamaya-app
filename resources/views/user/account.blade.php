@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h3 class="mb-4 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}
    </h3>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <!-- DataTales Example -->
    <div class="row">
        <div class="col-lg-6">
            {{-- <div class="mb-4"> --}}
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="d-flex justify-content-center">
                                @if (Auth::user()->gender == 'l')
                                    <img width="200px" class="mt-4 img-profile rounded-circle shadow border my-3"
                                        src="{{ asset('img/avatar_male.svg') }}">
                                @else
                                    <img width="200px" class="mt-4 img-profile rounded-circle shadow border my-3"
                                        src="{{ asset('img/avatar_female.svg') }}">
                                @endif
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="d-flex justify-content-center">
                                <div>
                                    <h4 class="d-inline-block mt-3 ml-2 mr-1">{{ Auth::user()->name }}</h4>
                                    @if (Auth::user()->gender == 'l')
                                        <i class="fas fa-mars fa-2x text-primary"></i>
                                    @else
                                        <i class="fas fa-venus fa-2x text-danger"></i>
                                    @endif
                                    <span class="d-block text-center mb-3">{{ Auth::user()->email }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold">Pengaturan Akun</h6>
                </div>
                <div class="card-body py-4">
                    <ol>
                        <li>
                            <span>Reset Password</i></span>
                            <form class="d-block my-4 mr-5" action="{{ route('user.reset', Auth::user()->id) }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="mb-2">
                                            <label for="password">Password Baru :</label>
                                            <input id="password" name="password"
                                                class="form-control form-control-sm @error('password') border-danger @enderror"
                                                type="password" placeholder="Password">
                                            @error('password')
                                                <small class="text-danger">{{ $message }}</small>
                                            @enderror
                                        </div>
                                        <div class="mb-3">
                                            <label for="password_confirmation">Retype Password :</label>
                                            <input id="password_confirmation" name="password_confirmation"
                                                class="form-control form-control-sm @error('password') border-danger @enderror"
                                                type="password" placeholder="Retype Password">
                                            @error('password')
                                                <small class="text-danger">{{ $message }}</small>
                                            @enderror
                                        </div>
                                        <button type="submit" class="btn btn-sm btn-primary px-3 mt-3"
                                            onclick="return confirm('Password Anda Akan Direset')">Reset
                                            Password</button>
                                    </div>
                                </div>
                            </form>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
@endsection
