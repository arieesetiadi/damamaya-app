@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Aplikasi Media Analitik</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4 col-lg-6">
        <div class="card-body">
            <form action="{{ route('keamanan-informasi.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="tanggal">Tanggal :</label>
                    <input id="tanggal" name="tanggal"
                        class="form-control form-control-sm  @error('tanggal')  border-danger @enderror" type="date"
                        value="{{ $data['now'] }}">
                    @error('tanggal')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="jam">Jam :</label>
                    <input id="jam" name="jam" class="form-control form-control-sm  @error('jam')  border-danger @enderror"
                        type="time" value="{{ $data['now_time'] }}">
                    @error('jam')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="my-3">
                    <label for="link_website">Link Website :</label>
                    <input id="link_website" name="link_website"
                        class="form-control form-control-sm  @error('link_website')  border-danger @enderror" type="text"
                        placeholder="Link Website" value="{{ old('link_website') }}">
                    @error('link_website')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="my-3">
                    <label class="d-block">Status Website :</label>
                    <div class="form-check d-block mr-2">
                        <input class="form-check-input" type="radio" name="status_website" id="status_website1"
                            value="Normal" checked>
                        <label class="form-check-label" for="status_website1">
                            Normal
                        </label>
                    </div>
                    <div class="form-check d-block">
                        <input class="form-check-input" type="radio" name="status_website" id="status_website2"
                            value="Deface">
                        <label class="form-check-label" for="status_website2">
                            Deface
                        </label>
                    </div>
                    <div class="form-check d-block">
                        <input class="form-check-input" type="radio" name="status_website" id="status_website3"
                            value="Tidak Bisa Diakses">
                        <label class="form-check-label" for="status_website3">
                            Tidak Bisa Diakses
                        </label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <button type="submit" class="btn btn-sm btn-primary px-2 my-2">Tambah</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
