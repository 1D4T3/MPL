<?php
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id_pelanggan = $_GET['id'];

    // Check if the idpelanggan exists in the tb_pelanggan table
    $result = $conn->query("SELECT idpelanggan FROM tb_pelanggan WHERE idpelanggan = $id_pelanggan");
    if ($result->num_rows > 0) {
        // Delete the row in tb_pelanggan
        $conn->query("DELETE FROM tb_pelanggan WHERE idpelanggan = $id_pelanggan") or die(mysqli_error($conn));

        echo "<script>swal('Data berhasil dihapus', {
            icon: 'success',
        }).then((willDelete) => {if (willDelete) {window.location='?p=pelanggan';}});</script>";
    } else {
        echo "<script>swal('Data tidak ditemukan', {
            icon: 'error',
        }).then((willDelete) => {if (willDelete) {window.location='?p=pelanggan';}});</script>";
    }
} else {
    echo "<script>swal('ID tidak valid', {
        icon: 'error',
    }).then((willDelete) => {if (willDelete) {window.location='?p=pelanggan';}});</script>";
}
