@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="{{ route('user.update', $data['user']->id) }}" method="POST">
                <div class="row">
                    <div class="col-lg-6">
                        @csrf
                        <input type="hidden" name="_method" value="PUT">
                        <div class="mb-3">
                            <label for="username">Username :</label>
                            <input id="username" name="username"
                                class="form-control @error('username')  border-danger @enderror" type="text"
                                placeholder="Username" value="{{ $data['user']->username }}">
                            @error('username')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="name">Nama Lengkap :</label>
                            <input id="name" name="name" class="form-control @error('name')  border-danger @enderror"
                                type="text" placeholder="Nama lengkap" value="{{ $data['user']->name }}">
                            @error('name')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="email">Email :</label>
                            <input id="email" name="email" class="form-control @error('email')  border-danger @enderror"
                                type="email" placeholder="Email" value="{{ $data['user']->email }}">
                            @error('email')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="role">User Role :</label>
                            <select id="role" name="role" class="custom-select @error('role')  border-danger @enderror">
                                <option selected hidden>User Role</option>
                                @foreach ($data['roles'] as $role)
                                    @if ($role->id == $data['user']->role_id)
                                        <option value="{{ $role->id }}" selected>{{ $role->name }}</option>
                                    @else
                                        <option value="{{ $role->id }}">{{ $role->name }}</option>
                                    @endif
                                @endforeach
                            </select>
                            @error('role')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="mb-3">
                            <label for="password">Ubah Password (Optional) :</label>
                            <input id="password" name="password"
                                class="form-control @error('password')  border-danger @enderror" type="password"
                                placeholder="Password" value="{{ old('password') }}">
                            @error('password')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="password_confirmation">Retype Password (Optional) :</label>
                            <input id="password_confirmation" name="password_confirmation"
                                class="form-control @error('password')  border-danger @enderror" type="password"
                                placeholder="Retype Password" value="{{ old('password') }}">
                            @error('password')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label class="d-block">Jenis Kelamin :</label>
                            @foreach ($data['genders'] as $gender)
                                @if ($data['user']->gender == $gender[0])
                                    <div class="form-check d-inline-block mr-2">
                                        <input class="form-check-input" type="radio" name="gender" id="{{ $gender[2] }}"
                                            value="{{ $gender[0] }}" checked>
                                        <label class="form-check-label" for="{{ $gender[2] }}">
                                            {{ $gender[1] }}
                                        </label>
                                    </div>
                                @else
                                    <div class="form-check d-inline-block mr-2">
                                        <input class="form-check-input" type="radio" name="gender" id="{{ $gender[2] }}"
                                            value="{{ $gender[0] }}">
                                        <label class="form-check-label" for="{{ $gender[2] }}">
                                            {{ $gender[1] }}
                                        </label>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <button type="submit" class="btn btn-sm btn-primary px-2 my-2">Ubah</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
