@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2"> - </h4>
    <p class="mb-4 d-inline-block">Aplikasi Media Analitik</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4 col-lg-6">
        <div class="card-body">
            <form action="{{ route('analisa-media.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="tanggal">Tanggal :</label>
                    <input id="tanggal" name="tanggal" class="form-control  @error('tanggal')  border-danger @enderror"
                        type="date" value="{{ old('tanggal') }}">
                    @error('tanggal')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="my-3">
                    <label for="isu_lokal">Isu Lokal :</label>
                    <input id="isu_lokal" name="isu_lokal" class="form-control  @error('isu_lokal')  border-danger @enderror"
                        type="text" placeholder="Issue Lokal" value="{{ old('isu_lokal') }}">
                    @error('isu_lokal')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="my-3">
                    <label for="isu_nasional">Isu Nasional :</label>
                    <input id="isu_nasional" name="isu_nasional"
                        class="form-control  @error('isu_nasional') border-danger @enderror" type="text"
                        placeholder="Issue Nasional" value="{{ old('isu_nasional') }}">
                    @error('isu_nasional')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="kategori">Kategori :</label>
                    <select id="kategori" name="kategori" class="custom-select @error('kategori')  border-danger @enderror">
                        <option selected hidden value="">Pilih Kategori</option>
                        @foreach ($data['kategori'] as $kategori)
                            @if ($kategori->id == old('kategori'))
                                <option value="{{ $kategori->name }}" selected>{{ $kategori->name }}</option>
                            @else
                                <option value="{{ $kategori->name }}">{{ $kategori->name }}</option>
                            @endif
                        @endforeach
                    </select>
                    @error('kategori')
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
