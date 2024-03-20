<?php

include('koneksi.php');
session_start();
if ($_SESSION['id_pasien'] == NULL) {
    echo "<script> alert('Silahkan isi form konsultasi terlebih dahulu yaa!'); window.location=('/../konsul-form.php');</script>";
}
$id_pasien = $_SESSION['id_pasien'];

?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <link rel="stylesheet" href="scss/konsul.css">
    <link rel="icon" type="img/png" href="/img/polije-logo.png">
    <script src="https://kit.fontawesome.com/807ea63ce3.js" crossorigin="anonymous"></script>
    <title>Sistem Pakar Deteksi Dini Skizofrenia</title>
</head>

<body id="home">
    <nav class="nav-custom navbar navbar-expand-lg navbar-light bg-light">
        <div class="container pt-2">
            <a class="navbar-brand" href="#">
                <img src="/img/polije-logo.png" alt="">
                <span>POLITEKNIK NEGERI JEMBER</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="konsul-form.php">Konsultasi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-signup" href="login.php">Admin, Sign Up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path fill="#91a6ff" fill-opacity="1" d="M0,160L26.7,133.3C53.3,107,107,53,160,48C213.3,43,267,85,320,101.3C373.3,117,427,107,480,128C533.3,149,587,203,640,192C693.3,181,747,107,800,85.3C853.3,64,907,96,960,138.7C1013.3,181,1067,235,1120,224C1173.3,213,1227,139,1280,101.3C1333.3,64,1387,64,1413,64L1440,64L1440,0L1413.3,0C1386.7,0,1333,0,1280,0C1226.7,0,1173,0,1120,0C1066.7,0,1013,0,960,0C906.7,0,853,0,800,0C746.7,0,693,0,640,0C586.7,0,533,0,480,0C426.7,0,373,0,320,0C266.7,0,213,0,160,0C106.7,0,53,0,27,0L0,0Z"></path>
    </svg>
    <section id="box-warning">
        <div class="container">
            <div class="row">
                <div class="col-auto">
                    <h2>Yuk, Konsultasi</h2>
                    <h3>Cek Kondisi Kesehatan Anda</h3>
                    <div class="card text-dark bg-warning"">
                        <div class=" card-header">
                        <i class="fas fa-exclamation-triangle fa-lg"></i>
                        <h4>Perhatian</h4>
                    </div>
                    <div class="card-body">
                        <p class="card-text">
                            Dibawah ini terdapat gejala-gejala gangguan mental skizofrenia, Silahkan pilih gejala-gejala
                            dibawah yang sesuai dengan kondisi anda. Gejala dipilih dengan tingkat kepastian yaitu
                            Tidak sampai dengan Sangat Yakin. Setelah selesai memilih gejala silahkan anda tekan
                            tombol Diagnosa untuk dapat melihat hasil dari diagnosa Sistem Pakar. Pilihlah kondisi dengan ketentuan sebagai berikut :
                        </p>
                        <div class="card-text">
                            <h7>Pilih "Tidak Pernah" jika sama sekali tidak pernah mengalami gejala tersebut</h7>
                        </div>
                        <div class="card-text">
                            Pilih "Jarang" jika mengalami gejala tersebut 1 kali dalam seminggu terakhir
                        </div>
                        <div class="card-text">
                            Pilih "Cukup Sering" jika mengalami gejala tersebut 2-4 kali dalam seminggu terakhir
                        </div>
                        <div class="card-text">
                            Pilih "Sering" jika hampir setiap hari mengalami gejala tersebut dalam seminggu terakhir
                        </div>
                        <p class="card-text">
                            Pilih "Sangat Sering" jika setiap hari mengalami gejala tersebut 
                        </p>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>

    <section id="table-gejala">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-9">
                    <form action="hasil-konsultasi.php" method="POST">
                        <table class="table table-light table-responsive-md table-bordered mt-5 table-hover">
                            <thead>
                            <tr style="text-align: center;">
                                    <th>No</th>
                                    <!-- <th>Kode Gejala</th> -->
                                    <th>Gejala Penyakit</th>
                                    <th>Kondisi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sql_get_gejala = mysqli_query($conn, "SELECT * FROM datagejala order by id_gejala");
                                $no = 0;
                                while ($row_get_gejala = mysqli_fetch_array($sql_get_gejala)) {
                                    $no++;
                                ?>
                                    <tr>
                                        <td><?php echo $no ?></td>
                                        <!-- <td><?php echo $row_get_gejala['id_gejala']; ?></td> -->
                                        <td><?php echo $row_get_gejala['nama_gejala'] ?></td>
                                        <td>
                                            <select class="form-select mb-1 form-select-sm" name="kondisi[]" id="sl<?php echo $no; ?>">
                                                <?php
                                                $sql_get_kondisi = mysqli_query($conn, "SELECT * FROM kondisi order by id_kondisi");
                                                while ($row_get_kondisi = mysqli_fetch_array($sql_get_kondisi)) {
                                                ?>
                                                    <option data-id="<?php echo $row_get_kondisi['id_kondisi']; ?>" value="<?php echo $row_get_gejala['id_gejala'] . '_' . $row_get_kondisi['id_kondisi']; ?>"><?php echo $row_get_kondisi['kondisi']; ?></option>
                                                <?php
                                                }
                                                ?>
                                            </select>
                                        </td>
                                    </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                        <button type="submit" class="btn btn-primary btn-konsultasi">Lihat Hasil</button>
                    </form>
                </div>
            </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
            <path fill="#91a6ff" fill-opacity="1" d="M0,256L34.3,261.3C68.6,267,137,277,206,250.7C274.3,224,343,160,411,133.3C480,107,549,117,617,154.7C685.7,192,754,256,823,261.3C891.4,267,960,213,1029,202.7C1097.1,192,1166,224,1234,224C1302.9,224,1371,192,1406,176L1440,160L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path>
        </svg>
    </section>

    <!-- <footer class="p-3">
        <p>Created with love by <br> <a href="https://www.instagram.com/dyasocta/">Dyas Octa Viola</a> </p>
    </footer> -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>

</html>