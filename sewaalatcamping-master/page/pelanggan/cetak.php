<?php
require_once './config/functions.php';

// Query the database for the required customer data
$sqlPelanggan = $conn->query("SELECT * FROM tb_pelanggan ORDER BY nama_pelanggan DESC") or die(mysqli_error($conn));

// Check if there are any results
if ($sqlPelanggan->num_rows > 0) {
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Laporan Data Pelanggan</title>
    <style>
    body {
        font-family: Arial, sans-serif;
    }

    .container {
        width: 80%;
        margin: auto;
    }

    h1 {
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    table,
    th,
    td {
        border: 1px solid black;
    }

    th,
    td {
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }
    </style>
</head>

<body>
    <div class="container">
        <h1>Laporan Data Pelanggan</h1>
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Alamat</th>
                    <th>Tanggal Lahir</th>
                    <th>Jenis Kelamin</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $no = 1;
                    while ($pecahPelanggan = $sqlPelanggan->fetch_assoc()) {
                        $jk = ($pecahPelanggan['jk'] == 'L') ? 'Laki-Laki' : 'Perempuan';
                    ?>
                <tr>
                    <td><?= $no++; ?></td>
                    <td><?= $pecahPelanggan['nama_pelanggan']; ?></td>
                    <td><?= $pecahPelanggan['alamat']; ?></td>
                    <td><?= $pecahPelanggan['tgl_lahir']; ?></td>
                    <td><?= $jk; ?></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    <script>
    window.onload = function() {
        window.print();
    }
    </script>
</body>

</html>
<?php
} else {
    echo "Tidak ada data pelanggan yang tersedia.";
}
?>