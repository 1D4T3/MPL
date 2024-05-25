<?php

$id_transaksi = $_GET['idjual'];
$harga_jual = $_GET['subharga'];

$conn->query("UPDATE tb_penjualan SET status = 'terjual', subharga = '$harga_jual', total = (total + $harga_jual) WHERE idjual = $id_transaksi") or die(mysqli_error($conn));

$mysql = $conn->query("SELECT * FROM tb_detailjual WHERE idjual = $id_transaksi") or die(mysqli_error($conn));

while ($data = mysqli_fetch_array($mysql)) {
    $jumlah = $data['jumlah'];
    $idbarang = $data['idbarang'];

    $conn->query("UPDATE tb_barang SET jumlah_barang = (jumlah_barang-$jumlah) WHERE idbarang = '$idbarang'") or die(mysqli_error($conn));
}
echo "<script>swal('Proses, penjualan barang berhasil', {
    icon: 'uccess',
}).then((willDelete) => {if(willDelete) {window.location='?p=penjualan';}} );</script>";