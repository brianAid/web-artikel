<?php 
include 'koneksi.php';
// mengambil semua bagian dari id yang ada di index
if(!empty($_GET['id'])){
    $query= "SELECT * FROM isi WHERE id=$_GET[id]";
    $result=mysqli_query($koneksi,$query);
    $result1=mysqli_fetch_assoc($result);
}else{
    header("location:index.php");
}

// update data
if(!empty($_POST && $_POST['judul'] != '' && $_POST['deskripsi'] !='')){
$judul = htmlspecialchars($_POST["judul"]);
$deskripsi= ($_POST["deskripsi"]);
$video = htmlspecialchars($_POST["video"]);  
$penulis = htmlspecialchars($_POST["penulis"]);
$lampiran = htmlspecialchars($_POST["lampiran"]);
// gambar
$gambar = $_FILES['gambar'];
$gambar_name =$gambar["name"];
$gambar_type =$gambar["type"];
$gambar_temp=$gambar["tmp_name"];
$gambar_path = 'foto/'. $gambar_name;
if(!empty($gambar && move_uploaded_file($gambar_temp, $gambar_path))){
    $update="UPDATE isi SET judul='$judul',deskripsi='$deskripsi',video='$video',gambar='$gambar_name',penulis='$penulis',lampiran='$lampiran' WHERE id=$_GET[id]";
}
else{
    $update="UPDATE isi SET judul='$judul',deskripsi='$deskripsi',video='$video',penulis='$penulis',lampiran='$lampiran' WHERE id=$_GET[id]";
}
    $update1=mysqli_query($koneksi,$update);
    if($update1){
        header("location:index.php");
}}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>edit</title>
    <link rel="stylesheet" href="tambah.css">
<script src="https://cdn.tiny.cloud/1/aq37vou6o6fl7r2lfo92721t18z6173r03hevnh6qpu52i0f/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

</head>
<body>
    <div class="navbar">
    <a class="back" href="index.php">back</a>
    <h1>edit artikel</h1>
    </div>
    <div class="body">
        <form action="" method="POST" enctype="multipart/form-data">
        <label>judul artikel:</label><br>
        <input required type="text" autocomplete="off" name="judul" value="<?= $result1['judul']; ?>" placeholder="masukan judul" ><br>
        <label>deskripsi artikel:</label><br>
        <textarea required name="deskripsi" cols="30" rows="10"><?= $result1['deskripsi']; ?></textarea>
        <label for="">lampiran video:</label>
        <input type="text" value="<?= $result1['video']; ?>" placeholder="masukan id video" name="video">
        <label for="">lampiran gambar:</label>
        <div class="img">
            <img src="foto/<?= $result1['gambar']  ?>" alt="">
        </div>
        <input type="file"  placeholder="masukan lampiran gambar" name="gambar">
        <label for="">penulis:</label>
        <input type="text" autocomplete="off" placeholder="masukan namamu" value="<?= $result1['penulis']; ?>" name="penulis">
        <label for="">lampiran:</label>
        <input type="text"value="<?= $result1['lampiran']; ?>" placeholder="masukan lampiran" name="lampiran">
        <input type="submit" class="submit" name="update" value="ubah">
        </form>
    </div>
    <script>
tinymce.init({
    selector: 'textarea',
    width: 800,
    skin: 'oxide-dark',
    content_css: 'dark',
    plugins: ' anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount ',
    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | align lineheight | tinycomments | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
    tinycomments_mode: 'embedded',
    tinycomments_author: 'Author name',
    mergetags_list: [
        { value: 'First.Name', title: 'First Name' },
        { value: 'Email', title: 'Email' },
    ],
    ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant")),
});
</script>
</body>
</html>