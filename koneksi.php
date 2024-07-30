<?php 
$host=htmlspecialchars('localhost');
$username=htmlspecialchars('root');
$password=htmlspecialchars('');
$db=htmlspecialchars('pkas1_brian');
$koneksi = mysqli_connect($host,$username,$password,$db);
if(!$koneksi){
    echo("koneksi gagal"). mysqli_connect_error();
}
?>