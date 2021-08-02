@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Aplikasi Media Analitik</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4 col-lg-6">
        <div class="card-body">
            <form action="{{ route('analisa-media.store') }}" method="POST">
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

                <div class="my-3">
                    <label for="issue_lokal">Issue Lokal :</label>
                    <input id="issue_lokal" name="issue_lokal"
                        class="form-control form-control-sm  @error('issue_lokal')  border-danger @enderror" type="text"
                        placeholder="Issue Lokal" value="{{ old('issue_lokal') }}">
                    @error('issue_lokal')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="my-3">
                    <label for="issue_nasional">Issue Nasional :</label>
                    <input id="issue_nasional" name="issue_nasional"
                        class="form-control form-control-sm  @error('issue_nasional') border-danger @enderror" type="text"
                        placeholder="Issue Nasional" value="{{ old('issue_nasional') }}">
                    @error('issue_nasional')
                        <small class="text-danger">{{ $message }}</small>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="kategori">Kategori :</label>
                    <select id="kategori" name="kategori" class="custom-select custom-select-sm">
                        <option selected hidden>Pilih Kategori</option>
                        @foreach ($data['kategori'] as $kategori)
                            @if ($kategori->id == old('kategori'))
                                <option value="{{ $kategori->name }}" selected>{{ $kategori->name }}</option>
                            @else
                                <option value="{{ $kategori->name }}">{{ $kategori->name }}</option>
                            @endif
                        @endforeach
                    </select>
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
