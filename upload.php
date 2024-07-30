<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="file" name="gambar" id="">
        <input type="submit" value="upload">
    </form>
</body>
</html>
<?php
var_dump($_FILES['gambar']);
$gambar=$_FILES['gambar'];
$gambar_name =$gambar["name"];
$gambar_size =$gambar["size"]; 
$gambar_type =$gambar["type"];
$gambar_temp=$gambar["tmp_name"];
// harus ada folder foto dalam gambar_path
$gambar_path = 'foto/'. $gambar_name;
move_uploaded_file($gambar_temp, $gambar_path);

?>
