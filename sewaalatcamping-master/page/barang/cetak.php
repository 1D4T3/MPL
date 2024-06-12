<?php
require_once './config/functions.php';

// Query the database for the required item data
$sql = $conn->query("SELECT * FROM tb_barang ORDER BY jumlah_barang DESC") or die(mysqli_error($conn));

// Check if there are any results
if ($sql->num_rows > 0) {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Laporan Data Barang</title>
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
            <h1>Laporan Data Barang</h1>
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Barang</th>
                        <th>Harga</th>
                        <th>Jumlah Barang</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    while ($pecah = $sql->fetch_assoc()) {
                    ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?= $pecah['namabarang']; ?></td>
                            <td><?= number_format($pecah['harga']); ?></td>
                            <td><?= $pecah['jumlah_barang']; ?></td>
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
    echo "Tidak ada data barang yang tersedia.";
}
?>