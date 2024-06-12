<?php
if (!isset($_SESSION['cart'])) {
    header('Location: ?p=penjualan&aksi=pilih');
    exit;
}

ob_start();

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

// Start transaction
$conn->begin_transaction();
try {
    // Save data penjualan ke database
    $conn->query("INSERT INTO tb_penjualan (iduser, idpelanggan, total, `status`) VALUES ('$iduser', '$idpelanggan', '$total_bayar', 'jual')") or die(mysqli_error($conn));
    $idjual = $conn->insert_id;

    for ($i = 0; $i < count($cart); $i++) {
        $idbarang = $cart[$i]['idbarang'];
        $jumlah = $cart[$i]['jumlah'];
        $subharga = $cart[$i]['harga'] * $cart[$i]['jumlah'];

        $conn->query("INSERT INTO tb_detailjual (idjual, idbarang, jumlah, subharga) VALUES('$idjual', '$idbarang', '$jumlah', '$subharga')") or die(mysqli_error($conn));
        $conn->query("UPDATE tb_barang SET jumlah_barang = (jumlah_barang - $jumlah) WHERE idbarang = '$idbarang'") or die(mysqli_error($conn));
    }

    // Commit transaction
    $conn->commit();

    // Unset session keranjang
    unset($_SESSION['cart']);
    $_SESSION['pesan'] = "Data Transaksi sudah ditambahkan";

    echo "<script>swal('Data berhasil ditambahkan', {
        icon: 'success',
    }).then((willUpdate) => {
        if (willUpdate) {
            window.location='?p=penjualan';
        }
    });</script>";
} catch (Exception $e) {
    // Rollback transaction
    $conn->rollback();
    echo "<script>swal('Data gagal ditambahkan', {
        icon: 'error',
    });</script>";
}

ob_end_flush();
exit;
