<?php
if (!isset($_SESSION['cart'])) {
    header('Location: ?p=penjualan&aksi=pilih');
}

$cart = unserialize(serialize($_SESSION['cart']));
$total_item = 0;
$total_bayar = 0;

$iduser = $_SESSION['login']['iduser'];
$nama_pelanggan = $_POST['nama'];
$pecahN = explode('.', $nama_pelanggan);
$idpelanggan = $pecahN[0];
$namapelanggan = $pecahN[1];

for ($i = 0; $i < count($cart); $i++) {
    $total_item += $cart[$i]['jumlah'];
    $total_bayar += $cart[$i]['jumlah'] * $cart[$i]['harga'];
}

//save data penjualan ke database
$conn->query("INSERT INTO tb_penjualan (iduser, idpelanggan, total, `status`) VALUES ('$iduser', '$idpelanggan', '$total_bayar', 'jual')") or die(mysqli_error($conn));
$idjual = mysqli_insert_id($conn);

for ($i = 0; $i < count($cart); $i++) {
    $idbarang = $cart[$i]['idbarang'];
    $jumlah = $cart[$i]['jumlah'];
    $subharga = $cart[$i]['harga'] * $cart[$i]['jumlah'];

    $conn->query("INSERT INTO tb_detailjual (idjual, idbarang, jumlah, subharga) VALUES('$idjual', '$idbarang', '$jumlah', '$subharga')") or die(mysqli_error($conn));
    $conn->query("UPDATE tb_barang SET jumlah_barang = (jumlah_barang - $jumlah) WHERE idbarang = '$idbarang'") or die(mysqli_error($conn));
}

//unset session keranjang
unset($_SESSION['cart']);
$_SESSION['pesan'] = "Data Transaksi sudah ditambahkan";
header('Location: ?p=penjualan');