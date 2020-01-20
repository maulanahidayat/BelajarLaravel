<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Laravel #25 : Relasi Many To Many Eloquent</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

				<h1>Relasi Many To Many Eloquent</h1>
	<div class="container">
		<div class="card mt-5">
			<div class="card-body">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Nama Pengguna</th>
							<th>Hadiah</th>
							<th width="1%">Jumlah</th>
						</tr>
					</thead>
					<tbody>
						@foreach($anggota as $a)
						<tr>
							<td>{{ $a->nama }}</td>
							<td>
								<ul>
									@foreach($a->hadiah as $h)
									<li> {{ $h->nama_hadiah }} </li>
									@endforeach
								</ul>
							</td>
							<td class="text-center">{{ $a->hadiah->count() }}</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>