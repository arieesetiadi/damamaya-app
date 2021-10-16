@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2"> - </h4>
    <p class="mb-4 d-inline-block">Layanan Pengaduan Masyarakat Yang Tidak Sesuai Dengan Janji Layanan (PRO Denpasar)</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="{{ route('pengaduan-pro.store') }}" method="POST">
                <div class="row">
                    <div class="col-lg-6">
                        @csrf
                        <div class="mb-3">
                            <label for="tanggal">Tanggal Pengaduan :</label>
                            <input id="tanggal" name="tanggal"
                                class="form-control  @error('tanggal')  border-danger @enderror" type="date"
                                value="{{ old('tanggal') }}">
                            @error('tanggal')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="nama_pelapor">Nama Pelapor :</label>
                            <input id="nama_pelapor" name="nama_pelapor"
                                class="form-control  @error('nama_pelapor')  border-danger @enderror" type="text"
                                placeholder="Nama pelapor" value="{{ old('nama_pelapor') }}">
                            @error('nama_pelapor')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="topik">Topik / Judul :</label>
                            <input id="topik" name="topik" class="form-control @error('topik')  border-danger @enderror"
                                type="text" placeholder="Topik" value="{{ old('topik') }}">
                            @error('topik')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="mb-3">
                            <label for="kategori">Kategori :</label>
                            <select id="kategori" name="kategori"
                                class="custom-select @error('kategori')  border-danger @enderror">
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

                        <div class="my-3">
                            <label for="nama_pd">Nama Instansi / Perangkat Daerah :</label>
                            <input id="nama_pd" name="nama_pd"
                                class="form-control  @error('nama_pd')  border-danger @enderror" type="text"
                                placeholder="Instansi" value="{{ old('nama_pd') }}">
                            @error('nama_pd')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
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
