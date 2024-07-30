<?php 
include 'koneksi.php';
if(!empty($_POST['aksi']) && $_POST['judul'] != '' && $_POST['deskripsi'] !='') {
$judul = htmlspecialchars($_POST["judul"]);
$deskripsi= htmlspecialchars($_POST["deskripsi"]);
$video = htmlspecialchars($_POST["video"]);  
$penulis = htmlspecialchars($_POST["penulis"]);
$lampiran= htmlspecialchars($_POST["lampiran"]);

$gambar = $_FILES['gambar'];
$gambar_name =$gambar["name"];
$gambar_type =$gambar["type"];
$gambar_temp=$gambar["tmp_name"];
$gambar_path = 'foto/'. $gambar_name;

if(move_uploaded_file($gambar_temp, $gambar_path)){
    $query="INSERT INTO isi (judul, deskripsi, video,gambar, tgl_buat, penulis,lampiran)VALUES('$judul','$deskripsi', '$video','$gambar_name',now(),'$penulis','$lampiran');";

}
else{
    $query="INSERT INTO isi (judul, deskripsi, video, tgl_buat, penulis,lampiran)VALUES('$judul','$deskripsi', '$video',now(),'$penulis','$lampiran');";
}
$eksekusi=mysqli_query($koneksi,$query);
if($eksekusi){
    header("location:index.php");
}
else{echo"error";}
}
?>
