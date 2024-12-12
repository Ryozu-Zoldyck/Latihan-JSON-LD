<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bengkel.css">
    <title>Penjualan Sparepart</title>
</head>
<body>
    <div class="uk-container" style="padding:30px;">
        <h1 style="text-align:center; font-family:rockwell;">Penjualan Sparepart</h1>
        <p style="text-align:center; font-family:rockwell;">Berikut adalah daftar sparepart yang tersedia:</p>

        <table class="uk-table uk-table-divider">
            <thead>
                <tr>
                    <th>Nama Sparepart</th>
                    <th>Harga</th>
                    <th>Stok</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <!-- Data ini bisa diambil dari database -->
                <tr>
                    <td>Oli Mesin</td>
                    <td>Rp 75,000</td>
                    <td>10</td>
                    <td><button class="uk-button uk-button-primary">Beli</button></td>
                </tr>
                <tr>
                    <td>Kampas Rem</td>
                    <td>Rp 50,000</td>
                    <td>15</td>
                    <td><button class="uk-button uk-button-primary">Beli</button></td>
                </tr>
                <tr>
                    <td>Busi</td>
                    <td>Rp 25,000</td>
                    <td>20</td>
                    <td><button class="uk-button uk-button-primary">Beli</button></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
