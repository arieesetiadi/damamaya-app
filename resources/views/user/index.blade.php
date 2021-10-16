@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2">|</h4>
    <p class="mb-4 d-inline-block">Daftar user yang terdaftar sebagai pengguna layanan Damamaya</p>


    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <div>
                <a class="btn btn-sm btn-primary" href="{{ route('user.create') }}">
                    <i class="fas fa-user-plus"></i>
                </a>
            </div>

            <div>
                {{-- <form action="{{ route('user.search') }}" method="POST" class="form-inline mr-auto w-100 navbar-search">
                    @csrf
                    <div class="input-group">
                        <input name="keyword" type="text" class="form-control form-control-sm bg-light small"
                            placeholder="Cari user..." aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-sm btn-primary" type="submit">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form> --}}
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover table-sm" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Name</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>Role</th>
                            <th>Option</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            use App\Models\User;
                        @endphp
                        @foreach ($data['users'] as $i => $user)
                            <tr>
                                <td>{{ $i + 1 }}</td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->username }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->gender == 'l' ? 'Laki- laki' : 'Perempuan' }}</td>
                                <td>{{ User::getRole($user->role_id) }}</td>
                                <td>
                                    <a href="{{ route('user.edit', $user->id) }}"
                                        class="btn btn-sm d-inline-block">Ubah</a>

                                    <form class="d-inline-block" action="{{ route('user.destroy', $user->id) }}"
                                        method="POST">
                                        @csrf
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button onclick="return confirm('Data Member Akan Dihapus')"
                                            class="btn btn-sm btn-danger text-light">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
