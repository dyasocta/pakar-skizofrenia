<?php

include('koneksi.php');

$error_nama = '';
$error_usia = '';

if($_SERVER["REQUEST_METHOD"] == "POST"){
    $nama_pasien    = $_POST['nama_pasien'];
    $jenis_kelamin  = $_POST['jenis_kelamin'];
    $usia           = $_POST['usia'];
    $email          = $_POST['email'];
    $alamat         = $_POST['alamat'];

    if(!preg_match ("/^[a-zA-Z\s]+$/", $nama_pasien)){
        $error_nama = 'Nama hanya boleh berisi huruf dan spasi!';
        // header('location:konsul-form.php');
    }
    if(!is_numeric($usia)){
        $error_usia = 'Usia hanya boleh berisi angka!';
    }

    if(preg_match ("/^[a-zA-Z\s]+$/", $nama_pasien) AND is_numeric($usia)){
        $query_simpan  = mysqli_query($conn, "INSERT INTO datapasien VALUES(NULL, '$nama_pasien','$jenis_kelamin', '$usia', '$email', '$alamat')");
        if ($query_simpan) {
            $query_get_id = mysqli_query($conn, "SELECT id_pasien FROM datapasien ORDER BY id_pasien DESC LIMIT 1");
            while ($row_id = mysqli_fetch_array($query_get_id)) {
                session_start();
                $_SESSION['id_pasien'] = $row_id['id_pasien'];

                header('location:konsul.php');
            }
        }
    }
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <!-- My CSS -->
    <link rel="stylesheet" href="scss/konsul-form.css">
    <link rel="icon" type="img/png" href="/img/polije-logo.png">
    <script src="https://kit.fontawesome.com/807ea63ce3.js" crossorigin="anonymous"></script>
    <title>Sistem Pakar Diagnosa Skizofrenia</title>
</head>

<body id="home">
    <nav class="nav-custom navbar navbar-expand-lg navbar-light bg-light fixed-top">
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
                        <a class="nav-link btn btn-signup" href="login.php"> Login Admin</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section id="konsultasi">
        <div class="container">
            <div class="row-cols-auto">
                <div class="col">
                    <h2>Yuk Konsultasi,</h2>
                    <h3>Isi Biodata Kamu Dulu Yaa !</h3>
                </div>
                <div class="row mt-5">
                    <div class="col-md-6">
                        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                            <div class="mb-3">
                                <input type="hidden" class="form-control" id="id_pasien" name="id_pasien" aria-describedby="id_pasien">
                            </div>
                            <div class="mb-3">
                                <label for="nama_pasien" class="form-label">Nama Lengkap</label>
                                <input type="text" class="form-control" id="nama_pasien" name="nama_pasien" aria-describedby="nama_pasien" required>
                                <span class="text-danger"><?php echo $error_nama; ?></span>
                            </div>
                            <div class="mb-3">
                                <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
                                <select class="form-select mb-3 form-select" name="jenis_kelamin" id="jenis_kelamin" required>
                                    
                                    <option value="Laki-laki">Laki-laki</option>
                                    <option value="Perempuan">Perempuan</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="usia" class="form-label">Usia</label>
                                <input type="text" class="form-control" id="usia" name="usia" aria-describedby="usia" required>
                                <span class="text-danger"><?php echo $error_usia; ?></span>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" aria-describedby="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="alamat" class="form-label">Alamat</label>
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Leave a comment here" id="alamat" name="alamat" style="height: 100px" required></textarea>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary" name="submit">Kirim</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
            <path fill="#91a6ff" fill-opacity="1" d="M0,256L34.3,261.3C68.6,267,137,277,206,250.7C274.3,224,343,160,411,133.3C480,107,549,117,617,154.7C685.7,192,754,256,823,261.3C891.4,267,960,213,1029,202.7C1097.1,192,1166,224,1234,224C1302.9,224,1371,192,1406,176L1440,160L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path>
        </svg>
    </section>

    <footer class="p-3">
        <p>Created with love by <br> <a href="https://www.instagram.com/dyasocta/">Dyas Octa Viola</a> </p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>

</html>