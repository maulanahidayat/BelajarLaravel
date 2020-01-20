<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Tutorial Laravel #21 : CRUD Eloquent Laravel</title>
    </head>
    <body>
        <div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    CRUD Data karyawan - <strong>TAMBAH DATA</strong> 
                </div>
                <div class="card-body">
                    <a href="/karyawan" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    
                    <form method="post" action="/karyawan/store">

                        {{ csrf_field() }}

                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" name="nama_karyawan" class="form-control" placeholder="Nama karyawan ..">

                            @if($errors->has('nama_karyawan'))
                                <div class="text-danger">
                                    {{ $errors->first('nama_karyawan')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Alamat</label>
                            <textarea name="alamat_karyawan" class="form-control" placeholder="Alamat karyawan .."></textarea>

                             @if($errors->has('alamat_karyawan'))
                                <div class="text-danger">
                                    {{ $errors->first('alamat_karyawan')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </body>
</html>