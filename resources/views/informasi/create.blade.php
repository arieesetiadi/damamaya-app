@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Kelengkapan Daftar Informasi Publik</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4 col-lg-6">
        <div class="card-body">
            <form action="{{ route('informasi.store') }}" method="POST">
                @csrf
                <div class="mt-3">
                    <label for="instansi">Instansi :</label>
                    <input id="instansi" name="instansi"
                        class="form-control form-control-sm  @error('instansi')  border-danger @enderror" type="text"
                        placeholder="Instansi" value="{{ old('instansi') }}">
                    @error('instansi')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="my-3">
                    <label for="tahun_update">Tahun Update :</label>
                    <input id="tahun_update" name="tahun_update"
                        class="form-control form-control-sm  @error('tahun_update')  border-danger @enderror" type="text"
                        placeholder="Tahun Update" value="{{ old('tahun_update') }}">
                    @error('tahun_update')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
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
