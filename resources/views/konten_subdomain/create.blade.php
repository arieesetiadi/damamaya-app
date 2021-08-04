@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h1 class="h3 text-gray-800">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4 col">
        <div class="card-body">
            <form action="{{ route('konten-subdomain.store') }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-lg-6">
                        <div class="mb-3">
                            <label for="tanggal">Tanggal :</label>
                            <input id="tanggal" name="tanggal"
                                class="form-control form-control-sm  @error('tanggal')  border-danger @enderror" type="date"
                                value="{{ $data['now'] }}">
                            @error('tanggal')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="mt-3">
                            <label for="instansi">Instansi / Perangkat Daerah :</label>
                            <input id="instansi" name="instansi"
                                class="form-control form-control-sm  @error('instansi')  border-danger @enderror"
                                type="text" placeholder="Instansi" value="{{ old('instansi') }}">
                            @error('instansi')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label>Survey Kepuasan Masyarakat :</label>
                            <div class="form-check">
                                <input id="survey" name="survey" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="survey">
                                    Ada
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label>Agenda :</label>
                            <div class="form-check">
                                <input id="agenda" name="agenda" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="agenda">
                                    Ada
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label>Foto Kegiatan :</label>
                            <div class="form-check">
                                <input id="foto_kegiatan" name="foto_kegiatan" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="foto_kegiatan">
                                    Ada
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="my-3">
                            <label>Berita :</label>
                            <div class="form-check">
                                <input id="berita" name="berita" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="berita">
                                    Ada
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label>Foto Pimpinan :</label>
                            <div class="form-check">
                                <input id="foto_pimpinan" name="foto_pimpinan" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="foto_pimpinan">
                                    Ada
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label>Struktur Organisasi :</label>
                            <div class="form-check">
                                <input id="struktur_organisasi" name="struktur_organisasi" class="form-check-input"
                                    type="checkbox">
                                <label class="form-check-label" for="struktur_organisasi">
                                    Ada
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label>Tupoksi :</label>
                            <div class="form-check">
                                <input id="tupoksi" name="tupoksi" class="form-check-input" type="checkbox">
                                <label class="form-check-label" for="tupoksi">
                                    Ada
                                </label>
                            </div>
                        </div>

                        <div class="my-3">
                            <label>Transparansi Anggaran :</label>
                            <div class="form-check">
                                <input id="transparansi_anggaran" name="transparansi_anggaran" class="form-check-input"
                                    type="checkbox">
                                <label class="form-check-label" for="transparansi_anggaran">
                                    Ada
                                </label>
                            </div>
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
