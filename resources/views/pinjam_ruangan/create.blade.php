@extends('layout.main')

@section('content')

    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2 mb-4">|</h4>

    @if (session('success'))
        <div class="alert alert-primary" role="alert">
            {{ session('success') }}
        </div>
    @endif

    @if (session('failed'))
        <div class="alert alert-danger" role="alert">
            {{ session('failed') }}
        </div>
    @endif

    {{-- Report Chart --}}
    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="col-6">
                <form action="{{ route('pinjam-ruangan.store') }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="tanggal">Tanggal Pinjam :</label>
                        <input id="tanggal" name="tanggal" class="form-control  @error('tanggal')  border-danger @enderror"
                            type="date" value="{{ old('tanggal') }}">
                        @error('tanggal')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label for="jam-mulai">Jam Mulai :</label>
                        <input id="jam-mulai" name="jamMulai"
                            class="form-control  @error('jamMulai')  border-danger @enderror" type="time"
                            value="{{ old('jamMulai') }}">
                        @error('jamMulai')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label for="durasi">Durasi Pinjam ( Jam ) :</label>
                        <input id="durasi" name="durasi" type="number" min="1" step="1" class="form-control"
                            value="{{ old('durasi') }}" />
                    </div>

                    <div class="mb-3">
                        <label for="peminjam">Peminjam :</label>
                        <input id="peminjam" name="peminjam"
                            class="form-control  @error('peminjam')  border-danger @enderror" type="text"
                            value="{{ old('peminjam') }}" placeholder="Peminjam">
                        @error('peminjam')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="keterangan">Keterangan :</label>
                        <textarea name="keterangan" class="form-control @error('keterangan')  border-danger @enderror"
                            id="keterangan" rows="4">{{ old('keterangan') }}</textarea>
                        @error('keterangan')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <button type="submit" class="btn btn-sm btn-primary px-2 my-2">Tambah</button>
                </form>
            </div>
        </div>
    </div>

@endsection
