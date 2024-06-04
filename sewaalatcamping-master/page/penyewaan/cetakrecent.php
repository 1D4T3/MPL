<?php
require_once './config/functions.php';

// Query the database for the required transaction data
$sql = $conn->query("SELECT * FROM tb_penyewaan 
                     INNER JOIN tb_pelanggan ON tb_penyewaan.idpelanggan = tb_pelanggan.idpelanggan 
                     INNER JOIN tb_user ON tb_penyewaan.iduser = tb_user.iduser
                     WHERE status = 'sewa'") or die(mysqli_error($conn));

// Check if there are any results
if ($sql->num_rows > 0) {
    ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Laporan Data Transaksi</title>
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
            <h1>Laporan Data Transaksi</h1>
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Petugas</th>
                        <th>Nama Pelanggan</th>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Kembali</th>
                        <th>Keterlambatan</th>
                        <th>Status</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    while ($pecah = $sql->fetch_assoc()) {
                        $idsewa = $pecah['idsewa'];
                        $denda = 5000;
                        $tgl_dateline = $pecah['tanggalkembali'];
                        $tgl_kembali = date('Y-m-d');

                        // Calculate the delay in days
                        $lambat = terlambat($tgl_dateline, $tgl_kembali);
                        $denda1 = $lambat * $denda;
                        ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?= $pecah['nama']; ?></td>
                            <td><?= $pecah['nama_pelanggan']; ?></td>
                            <td><?= $pecah['tanggalsewa']; ?></td>
                            <td><?= $pecah['tanggalkembali']; ?></td>
                            <td>
                                <?php
                                if ($lambat > 0) {
                                    echo "<div style='color:red;'>{$lambat} hari<br> (Rp. " . number_format($denda1) . ")</div>";
                                } else {
                                    echo "Tidak terlambat";
                                }
                                ?>
                            </td>
                            <td><?= $pecah['status']; ?></td>
                            <td><?= number_format($pecah['total'] + $denda1); ?></td>
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
    echo "Tidak ada data transaksi yang tersedia.";
}
?>