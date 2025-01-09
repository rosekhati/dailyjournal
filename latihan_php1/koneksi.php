<?php
$host = "127.0.0.1:3307";
$username = "root";
$password = ""; // Biasanya kosong untuk XAMPP
$database = "webdailyjournal";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
