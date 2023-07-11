<div class="container-fluid">
	<h4 class="text-center">Klinik Graha Estetika</h4>
	<small class="h5 text-center">Jl.Letda Sujono No.4A Simp.Titi Sewa Medan</small>
	<div class="row">
		<div class="col-md">
			<table class="table text-center">
				<tr>
					<th>No</th>
					<th>Nama Dokter</th>
				</tr>
				<?php $no = 1; foreach($dokter as $d) : ?>
					<tr>
						<td width="5%"><?= $no++; ?></td>
						<td width="95%"><?= $d['nama_dokter']; ?></td>
					</tr>
				<?php endforeach; ?>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 offset-md-8">
			<table>
				<tr>
					<td></td>
					<td>
						<?php $tgl = date_create(date('d-m-Y')); ?>
						<p>Medan, <?= date_format($tgl, 'd M Y'); ?>
							<br>
							Administrator <br><br>
							______________________
						</p>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

<script>
	window.print();
</script>