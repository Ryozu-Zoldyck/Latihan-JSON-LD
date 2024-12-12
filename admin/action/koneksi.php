<?php
$host = "localhost";
$user = "root";
$password = "";
$db = "ryozu_racing_team";

$koneksi = mysqli_connect($host, $user, $password, $db);
if ($koneksi) {
	echo "Koneksi berhasil!";
} else {
	echo "Koneksi gagal: " . mysqli_connect_error();
}
?>