@extends('layout.main')

@section('content')
    <!-- Page Heading -->
    <h4 class="text-gray-800 d-inline-block">{{ isset($data['title']) ? $data['title'] : 'Title' }}</h4>
    <h4 class="d-inline-block mx-2"> - </h4>
    <p class="mb-4 d-inline-block">Test Link (Sampling 10 Website / Hari)</p>

    <form action="{{ route('keamanan-informasi.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <!-- DataTales Example -->
            <div class="card shadow mb-4 col-lg-12">
                <div class="card-body row">
                    <div class="col-lg-6">
                        <div class="mb-3">
                            <label for="tanggal">Tanggal :</label>
                            <input id="tanggal" name="tanggal"
                                class="form-control  @error('tanggal')  border-danger @enderror" type="date"
                                value="{{ $data['now'] }}">
                            @error('tanggal')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="jam">Jam :</label>
                            <input id="jam" name="jam" class="form-control  @error('jam')  border-danger @enderror"
                                type="time" value="{{ $data['nowTime'] }}">
                            @error('jam')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label for="link_website">Link Website :</label>
                            <input id="link_website" name="linkWebsite"
                                class="form-control  @error('linkWebsite')  border-danger @enderror" type="text"
                                placeholder="Link Website" value="{{ old('linkWebsite') }}">
                            @error('linkWebsite')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="my-3">
                            <label class="d-block">Status Website :</label>
                            <div class="form-check d-inline-block mr-4">
                                <input class="form-check-input" type="radio" name="statusWebsite" id="status_website1"
                                    value="Normal" checked>
                                <label class="form-check-label" for="status_website1">
                                    Normal
                                </label>
                            </div>
                            <div class="form-check d-inline-block mr-4">
                                <input class="form-check-input" type="radio" name="statusWebsite" id="status_website2"
                                    value="Deface">
                                <label class="form-check-label" for="status_website2">
                                    Deface
                                </label>
                            </div>
                            <div class="form-check d-inline-block">
                                <input class="form-check-input" type="radio" name="statusWebsite" id="status_website3"
                                    value="Tidak Bisa Diakses">
                                <label class="form-check-label" for="status_website3">
                                    Tidak Bisa Diakses
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="keterangan">Keterangan (Optional) :</label>
                            <textarea name="keterangan" class="form-control" id="keterangan"
                                rows="4">{{ old('keterangan') }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-sm btn-primary px-2">Tambah</button>
                    </div>

                    <div class="col-lg-6">
                        <div>
                            <label for="">Pilih Capture Website :</label>
                            <div class="custom-file">
                                <input name="capture" id="capture" type="file" accept="image/*" class="custom-file-input">
                                <label id="capture-label" class="custom-file-label" for="capture">Browse image..</label>
                            </div>
                            @error('capture')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                            <div class="d-flex mt-1">
                                <div class="w-100" id="capture-preview-wrapper"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- <div class="row">
           
        </div> --}}
    </form>
@endsection
