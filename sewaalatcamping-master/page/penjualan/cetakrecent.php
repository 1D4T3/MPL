<?php
require_once './config/functions.php';

// Query the database for the required sales transaction data
$sql = $conn->query("SELECT * FROM tb_penjualan 
                     INNER JOIN tb_pelanggan ON tb_penjualan.idpelanggan = tb_pelanggan.idpelanggan 
                     INNER JOIN tb_user ON tb_penjualan.iduser = tb_user.iduser
                     WHERE status = 'jual'") or die(mysqli_error($conn));

// Check if there are any results
if ($sql->num_rows > 0) {
    ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Laporan Data Transaksi Penjualan Yang Sering Dipilih</title>
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
            <h1>Laporan Data Transaksi Penjualan</h1>
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Petugas</th>
                        <th>Nama Pelanggan</th>
                        <th>Status</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    while ($pecah = $sql->fetch_assoc()) {
                        ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?= $pecah['nama']; ?></td>
                            <td><?= $pecah['nama_pelanggan']; ?></td>
                            <td><?= $pecah['status']; ?></td>
                            <td><?= number_format($pecah['total']); ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
        <script>
            window.onload = function () {
                window.print();
            }
        </script>
    </body>

    </html>
    <?php
} else {
    echo "Tidak ada data transaksi penjualan yang tersedia.";
}
?>