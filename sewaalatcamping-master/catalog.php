<!DOCTYPE html>
<html>

<head>
    <title>Simple Catalog</title>
</head>

<body>
    <h1>Our Products</h1>
    <table border="1\">
        <tr>
            <th>Product Name</th>
            <th>Price</th>
        </tr>
        <?php
        $host = 'localhost';
        $dbname = 'db_sewaalatcamping';
        $user = 'root';
        $pass = '';
        try {
            $pdo = new PDO("mysql:host=$host;db_sewaalatcamping=$dbname", $user, $pass);
            $stmt = $pdo->query("SELECT * tb_barang , price FROM products");
            while ($row = $stmt->fetch()) {
                echo '<tr>︙
                echo '<td>' . $row['name'] . '</td>';
                echo '<td>$' . $row['price'] . '</td>';
                echo '</tr>';
            }
            $stmt = null;
            $pdo = null;
        } catch (PDOException $e)
        {
            echo $e->getMessage();
        }
       ?>
    </table>
</body>

</html>