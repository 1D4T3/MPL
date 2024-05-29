<?php
require_once './config/functions.php';


$sql = $conn->query("SELECT * FROM tb_penjualan INNER JOIN tb_pelanggan 
										ON tb_penjualan.idpelanggan = tb_pelanggan.idpelanggan 
                                        INNER JOIN tb_user ON tb_penjualan.iduser = tb_user.iduser
                                        WHERE status = 'jual'
										") or die(mysqli_error($conn));

if (isset($_SESSION['pesan'])) {
  echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            ' . $_SESSION['pesan'] . '
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>';

  unset($_SESSION['pesan']);
}

?>

<h1 class="mt-4">Data Transaksi Penjualan</h1>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
    <li class="breadcrumb-item active">Data Transaksi Penjualan</li>
</ol>
<div class="col-md-6">
    <a href="?p=penjualan&aksi=pilih" class="btn btn-primary mb-3"><i class="fa fa-plus"></i> Tambah Transaksi
        Penjualan</a>
    <a href="?p=penjualan&aksi=cetak" class="btn btn-primary mb-3"><i class="fa fa-plus"></i> Cetak Laporan</a>
</div>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table mr-1"></i>
        Data Transaksi Penjualan
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Petugas</th>
                        <th>Nama Pelanggan</th>
                        <th>Status</th>
                        <th>Total</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
          $no = 1;
          while ($pecah = $sql->fetch_assoc()) {
            $idjual = $pecah['idjual'];
          ?>
                    <tr>
                        <td><?= $no++; ?></td>
                        <td><?= $pecah['nama']; ?></td>
                        <td><?= $pecah['nama_pelanggan']; ?></td>
                        <td><?= $pecah['status']; ?></td>
                        <td><?= $pecah['total']; ?></td>
                        <td>
                            <a href="?p=penjualan&aksi=kembali&idjual=<?= $pecah['idjual']; ?>"
                                class="btn btn-info btn-sm"><i class="fas fa-undo mr-2"></i>Kembali Barang</a>

                            <a href="?p=penjualan&aksi=detail&idjual=<?= $pecah["idjual"]; ?>"
                                class="btn btn-success btn-sm"><i class="fas fa-info mr-2"></i>Detail Penjualan</a>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>