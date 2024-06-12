<?php
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id_barang = $_GET['id'];

    // Check if the idbarang exists in the tb_barang table
    $result = $conn->query("SELECT idbarang FROM tb_barang WHERE idbarang = $id_barang");
    if ($result->num_rows > 0) {
        // First, delete related rows in tb_detailsewa
        $conn->query("DELETE FROM tb_detailsewa WHERE idbarang = $id_barang") or die(mysqli_error($conn));

        // Then, delete the row in tb_barang
        $conn->query("DELETE FROM tb_barang WHERE idbarang = $id_barang") or die(mysqli_error($conn));

        echo "<script>swal('Data berhasil dihapus', {
            icon: 'success',
        }).then((willDelete) => {if(willDelete) {window.location='?p=barang';}} );</script>";
    } else {
        echo "<script>swal('Data tidak ditemukan', {
            icon: 'error',
        }).then((willDelete) => {if(willDelete) {window.location='?p=barang';}} );</script>";
    }
} else {
    echo "<script>swal('ID tidak valid', {
        icon: 'error',
    }).then((willDelete) => {if(willDelete) {window.location='?p=barang';}} );</script>";
}
