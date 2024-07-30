<?php 
include("koneksi.php");

if(!empty($_GET['id'])){
    $query= "SELECT * FROM isi WHERE id=$_GET[id]";
    $result=mysqli_query($koneksi,$query);
    $data=mysqli_fetch_assoc($result);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $data['judul']; ?></title>
    <link rel="stylesheet" href="see.css">
</head>
<body>
    <div class="navbar">
        <a class="navbar-a" href="index.php">back</a>
        <h1 class="judul"><?= $data['judul']; ?></h1>
    </div>
    <div class="body">
        <div class="isi">
            <!-- gambar -->
            <?php if ($data['gambar']) { ?>
                <div class="img">
                <img class="gambar" src="foto/<?= $data['gambar'] ?>" alt=""></div>
                <br>
            <?php }
            // deskripsi
                echo(nl2br($data['deskripsi']));
            // video
            if ($data['video']) { ?>
            <div class="video">
                <iframe class="video" width='400px' height='200px' src='https://www.youtube.com/embed/<?=$data['video']?>;' frameborder='0'></iframe>
            <?php } ?>
            <?php 
            // lampiran
            if($data['lampiran']){ ?>
            <iframe src="<?=$data['lampiran']?>" frameborder="0"></iframe>
                <p>lihat lampiran:</p>
                <a href="<?=$data['lampiran']?>"><?=$data['lampiran']?></a>
                <?php } ?>
        </div>
            <!-- tanggal buat -->
            <p class="tanggal"></p><img class="icon" src="./img/jam.png" alt="tanggal dibuat:"><?= $data['tgl_buat']; ?></p>

                <br>
            <!-- penulis -->
            <p class="penulis">by:<?php if($data['penulis']){echo $data['penulis'];}else{echo 'undefined';}?></p>
        </div>
    </div>

</body>
</html>