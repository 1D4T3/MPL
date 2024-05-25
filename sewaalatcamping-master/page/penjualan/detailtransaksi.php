<?php

if (!isset($_SESSION['idjual'])) {
    header('?p=penjualan');
}

?>

<h1 class="mt-4">Detail Transaksi Penjualan</h1>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
    <li class="breadcrumb-item"><a href="?p=penjualan">Transaksi Penjualan</a></li>
    <li class="breadcrumb-item active">Detail Transaksi Penjualan</li>
</ol>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table mr-1"></i>
        Detail Transaksi Penjualan
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered mt-3" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>ID Sewa</th>
                        <th>Nama Barang</th>
                        <th>Jumlah</th>
                        <th>Sub Harga</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sql = $conn->query("SELECT * FROM tb_detailjual INNER JOIN tb_barang ON tb_detailjual.idbarang = tb_barang.idbarang WHERE idjual = $_GET[idjual]") or die(mysqli_error($conn));

                    $no = 1;

                    while ($data = $sql->fetch_assoc()) {
                        $idsewa = $data['idjual'];
                    ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?= $data['idjual']; ?></td>
                            <td><?= $data['namabarang']; ?></td>
                            <td><?= $data['jumlah']; ?></td>
                            <td><?= $data['subharga']; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>