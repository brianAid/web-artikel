<?php
include 'koneksi.php';
$query = 'SELECT * FROM isi';
$all = mysqli_query($koneksi, $query);
$isi = mysqli_fetch_all($all, MYSQLI_ASSOC);?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>

<body>
    <div class="navbar">
        <a class="tambah" href="input.php"><img class="icon png" src="./img/add.png" alt="+">tambah tabel?</a>
        <h1>proyek akhir semester 1</h1>
    </div>
    <br>
    <div class="body">
        <?php foreach ($isi as $data) :?>
        <div class="isi">
            <div class="content">
                <div class="head">
                    <a href="lihat.php?id=<?= $data['id'] ?>">
                        <h1 class="judul"><?= $data['judul']; ?></h1>
                    </a>
                    <p class="penulis">by:<?php if($data['penulis']){echo $data['penulis'];}else{echo 'undefined';}?></p>
                </div>
                <div class="deskripsi">
                <?= mb_strimwidth($data['deskripsi'],0,225); ?>...
            </div>
                <p class="tanggal"><img class="icon" src="./img/jam.png" alt="tanggal dibuat:"> <?= $data['tgl_buat']; ?></p>
                <br>
                <a class="edit" href="edit.php?id=<?= $data['id'] ?>">edit</a>
                <a class="hapus" href="hapus.php?id=<?= $data['id'] ?>">hapus</a>
                <a href="lihat.php?id=<?= $data['id'] ?>">lihat selengkapnya</a>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
</body>
</html>