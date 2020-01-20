<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Membuat CRUD Pada Laravel - www.malasngoding.com</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

	<!--css-->
<style type="text/css">
	.pagination li{
		float:left;
		list-style-type: none;
		margin:5px;
	}
</style>

<div class="container">
		<div class="card">
			<div class="card-body">
	<h2 class="text-center">Crud Laravel</h2>
	<h3>Data Pegawai</h3>
<div class="form-group">
<!--cari pegawai-->
<p>Cari data pegawai :</p>
<form action="/pegawaicrud/cari" method="GET" class="form-inline">
	<input class="form-control" type="text" name="cari" placeholder="Cari Pegawai .." value="{{ old('cari') }}">
	<input class="btn btn-primary ml-3" type="submit" value="CARI">
</form>
<br>
	<a href="/pegawaicrud/tambah" class="btn btn-primary" target="_blank">Tambah Pegawai Baru</a>
	
	<br/>
	<br/>

	<table class="table table-bordered">
		<tr>
			<th>Nama</th>
			<th>Jabatan</th>
			<th>Umur</th>
			<th>Alamat</th>
			<th>Opsi</th>
		</tr>
		@foreach($pegawai as $p)
		<tr>
			<td>{{ $p->pegawai_nama }}</td>
			<td>{{ $p->pegawai_jabatan }}</td>
			<td>{{ $p->pegawai_umur }}</td>
			<td>{{ $p->pegawai_alamat }}</td>
			<td>
				<a class="btn btn-warning btn-sm" href="/pegawaicrud/edit/{{ $p->pegawai_id }}">Edit</a>
				|
				<a class="btn btn-danger btn-sm" href="/pegawaicrud/hapus/{{ $p->pegawai_id }}">Hapus</a>
			</td>
		</tr>
		@endforeach
	</table>
<br/>
Halaman: {{$pegawai->currentPage()}}<br>
Jumlah Data: {{$pegawai->total()}}<br>
Data Per Halaman: {{$pegawai->perPage()}}<br>


{{$pegawai->links()}}
</div>
		</div>
	</div>
</body>
</html>