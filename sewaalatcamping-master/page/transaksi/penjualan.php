<?php
require_once './config/functions.php';


$sql = $conn->query("SELECT * FROM tb_penyewaan INNER JOIN tb_pelanggan 
										ON tb_penyewaan.idpelanggan = tb_pelanggan.idpelanggan 
                                        INNER JOIN tb_user ON tb_penyewaan.iduser = tb_user.iduser
                                        WHERE status = 'sewa'
										") or die(mysqli_error($conn));

if (isset($_SESSION['pesan'])) {
    echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            ' . $_SESSION['pesan'] . '
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>';

    unset($_SESSION['pesan']);
}

?>