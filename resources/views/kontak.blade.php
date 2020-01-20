<!-- Menghubungkan dengan view template master -->
@extends('master')

<!-- isi bagian judul halaman -->
<!-- cara penulisan isi section yang pendek -->
@section('judul_halaman', 'Halaman Kontak')


<!-- isi bagian konten -->
<!-- cara penulisan isi section yang panjang -->
@section('konten')

	<p>Ini Adalah Halaman Kontak</p>
	
	<table border="1">
    <tr>
			<td>Nama</td>
			<td>:</td>
			<td>Maulana Hidayat</td>
		</tr>
        <tr>
			<td>Hp</td>
			<td>:</td>
			<td>08984003000</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>:</td>
			<td>maulanahidayat7@gmail.com</td>
		</tr>
		
	</table>

@endsection