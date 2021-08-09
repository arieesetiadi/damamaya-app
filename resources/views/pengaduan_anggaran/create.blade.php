@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>
    <p class="mb-4">Layanan Pengaduan Masyarakat Yang Memerlukan Dukungan Anggaran (TL Awal)</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-body">
            <form action="{{ route('pengaduan-anggaran.store') }}" method="POST">
                <div class="row">
                    <div class="col-lg-6">
                        @csrf
                        <div class="mb-3">
                            <label for="tanggal">Tanggal Pengaduan :</label>
                            <input id="tanggal" name="tanggal"
                                class="form-control form-control-sm  @error('tanggal')  border-danger @enderror" type="date"
                                value="{{ $data['now'] }}">
                            @error('tanggal')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="nama_pelapor">Nama Pelapor :</label>
                            <input id="nama_pelapor" name="nama_pelapor"
                                class="form-control form-control-sm  @error('nama_pelapor')  border-danger @enderror"
                                type="text" placeholder="Nama pelapor" value="{{ old('nama_pelapor') }}">
                            @error('nama_pelapor')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="topik">Topik / Judul :</label>
                            <input id="topik" name="topik"
                                class="form-control form-control-sm  @error('topik')  border-danger @enderror" type="text"
                                placeholder="Nama pelapor" value="{{ old('topik') }}">
                            @error('topik')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>

                    <div class="col-lg-6">
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

                        <div class="my-3">
                            <label for="nama_pd">Nama Instansi / Perangkat Daerah :</label>
                            <input id="nama_pd" name="nama_pd"
                                class="form-control form-control-sm  @error('nama_pd')  border-danger @enderror" type="text"
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
