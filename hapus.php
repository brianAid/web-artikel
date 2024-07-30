<?php 
include "koneksi.php" ;
if(!empty($_GET["id"])){
$query="DELETE FROM isi WHERE id=$_GET[id]";
$delete=mysqli_query($koneksi,$query);
if($delete){
    header("location:index.php");
}
}else{ echo "maaf terjadi kesalahan"; }
?>