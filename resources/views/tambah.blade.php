<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Membuat CRUD Pada Laravel</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

	<h2>Tambah data Pegawai</h2>
	<a href="/pegawaicrud"> Kembali</a>
	
	<br/>
	<br/>

	<form action="/pegawaicrud/store" method="post">
		{{ csrf_field() }}
		Nama <input type="text"  class="form-control" name="nama"  required> <br/>
		Jabatan <input type="text" class="form-control" name="jabatan"  required > <br/>
		Umur <input type="number" class="form-control" name="umur"  required > <br/>
		Alamat <textarea name="alamat"  class="form-control"  required></textarea> <br/>
		<input class="btn btn-primary" type="submit" value="Simpan Data">
	</form>


</body>
</html>