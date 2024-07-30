<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tambah</title>
    <link rel="stylesheet" href="tambah.css">
    <!-- Place the first <script> tag in your HTML's <head> -->
<script src="https://cdn.tiny.cloud/1/aq37vou6o6fl7r2lfo92721t18z6173r03hevnh6qpu52i0f/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

</head>

<body>
    <div class="navbar">
        <a class="back" href="index.php">back</a>
        <h1>tambah artikel</h1>
    </div>
    <div class="body">
        <form action="action.php" method="POST" enctype="multipart/form-data">
            <label>judul artikel:</label><br>
            <input required autocomplete="off" type="text"  name="judul" placeholder="masukan judul"><br>
            <label>deskripsi artikel:</label><br>
            <textarea  name="deskripsi" rows="10"></textarea>
            <label for="">lampiran video:</label>
            <input type="text" placeholder="masukan id video" name="video">
            <label for="">lampiran gambar:</label>
            <input type="file" placeholder="masukan link gambar" name="gambar">
            <label for="">penulis:</label>
            <input type="text"autocomplete="off"1  placeholder="masukan namamu" name="penulis">
            <label for="">lampiran:</label>
            <input type="text" placeholder="masukan lampiran" name="lampiran">
            <input class="submit" type="submit" name="aksi" value="tambah">
        </form>
    </div>
    <?php 
    
    ?>
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
});
</script>
</body>

</html>