<?php
session_start();

if (isset($_SESSION['idsewa'])) {
    // Ganti URL berikut dengan URL yang sesuai
    header('Location: ?penjualan&aksi.php');
    exit;
}

$pesan = $_SESSION['pesan'];
unset($_SESSION['pesan']);
?>

<html>

<head>
    <title>Transaksi Berhasil</title>
</head>

<body>
    <h1>Transaksi Berhasil</h1>
    <p><?= $pesan ?></p>
    <p>Detail Transaksi:</p>
    <ul>
        <li>ID Sewa: <?= $idsewa ?></li>
        <li>Tanggal Sewa: <?= $tgl_sewa ?></li>
        <li>Tanggal Kembali: <?= $tgl_kembali ?></li>
        <li>Total Bayar: <?= $total_bayar ?></li>
        <li>Denda: <?= $denda ?></li>
    </ul>
</body>

</html>