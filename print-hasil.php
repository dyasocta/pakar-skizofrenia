<?php

include 'koneksi.php';
session_start();
if ($_SESSION['id_pasien'] == NULL) {
echo "<script>alert('Silakan isi form konsultasi terlebih dahulu!'); window.location=('/../konsul-form.php');</script>";
}

date_default_timezone_set("Asia/Jakarta");
$input_tanggal  = date('m-d-Y H:i:s');
$array_bobot = array('0', '0', '0.25', '0.5', '0.75', '1');
//$array_bobot = array('0', '0', '0.4', '0.6', '0.8', '1');
//$array_bobot = array('0', '0', '0.2', '0.4', '0.6', '0.8',);
$array_gejala = array();

for ($no = 0; $no < count($_POST['kondisi']); $no++) {
// Explode memisahkan string menjadi array
$arkondisi = explode("_", $_POST['kondisi'][$no]);
if (strlen($_POST['kondisi'][$no]) > 1) {
$array_gejala += array($arkondisi[0] => $arkondisi[1]);
}
}

// Memanggil kondisi dari db
$sqlkondisi         = mysqli_query($conn, "SELECT * FROM kondisi order by id_kondisi+0");
while ($row_kondisi = mysqli_fetch_array($sqlkondisi)) {
$array_kondisitext[$row_kondisi['id_kondisi']] = $row_kondisi['kondisi'];
}

// Memanggil data penyakit
$sqlpkt = mysqli_query($conn, "SELECT * FROM datapenyakit order by id_penyakit+0");
while ($row_penyakit = mysqli_fetch_array($sqlpkt)) {
$nama_penyakit[$row_penyakit['id_penyakit']] = $row_penyakit['nama_penyakit'];
$keterangan_penyakit[$row_penyakit['id_penyakit']] = $row_penyakit['keterangan'];
$saran_penyakit[$row_penyakit['id_penyakit']] = $row_penyakit['saran'];
}

// PERHITUNGAN CERTAINTY FACTOR

$sqlpenyakit = mysqli_query($conn, "SELECT * FROM datapenyakit order by id_penyakit");
$arpenyakit = array();
while ($rpenyakit = mysqli_fetch_array($sqlpenyakit)) {
$cf = 0;
//filter by penyakit
$sqlgejala = mysqli_query($conn, "SELECT * FROM basis_pengetahuan where id_penyakit = '$rpenyakit[id_penyakit]'");

// $sqlgejala = mysqli_query($koneksi, "SELECT * FROM basis_pengetahuan where id_penyakit=3");
$cf_rule = [];
$c_fold = 0;
while ($rgejala = mysqli_fetch_array($sqlgejala)) {

$array_kondisi = explode("_", $_POST['kondisi'][0]);
$gejala = $array_kondisi[0];

for ($i = 0; $i < count($_POST['kondisi']); $i++) {
$array_kondisi = explode("_", $_POST['kondisi'][$i]);
$gejala = $array_kondisi[0];
if ($rgejala['id_gejala'] == $gejala) {
$cf = ($rgejala['nilai_cf']) * $array_bobot[$array_kondisi[1]];
array_push($cf_rule, $cf);
$c_fold_arr = [];
for ($i = 0; $i < count($cf_rule) - 1; $i++) {
$cf1 = $i == 0 ? $cf_rule[$i] : $c_fold;
$cf2 = $cf_rule[$i + 1];
if (($cf1 >= 0 && $cf2 > 0)) {
$cf_combine = $cf1 + $cf2 * (1 - $cf1);
} elseif ($cf1 < 0 || $cf2 < 0) {
$cf_combine = $cf1 + $cf2 / ((1 - abs($cf1)) + (1 - abs($cf2)));
} else {
$cf_combine = $cf1 + $cf2 * (1 + $cf1);
}
$c_fold = $cf_combine;
array_push($c_fold_arr, $c_fold);
}
}
}
}
if ($c_fold > 0) {
$arpenyakit += array($rpenyakit['id_penyakit'] => number_format($c_fold, 5));
arsort($arpenyakit);
} elseif ($c_fold == 0) {
$arpenyakit += array($rpenyakit['id_penyakit'] => number_format(0, 0));
}
}

arsort($arpenyakit);

$input_gejala = serialize($array_gejala);
$input_penyakit = serialize($arpenyakit);

$np1 = 0;
foreach ($arpenyakit as $key1 => $value1) {
$np1++;
$idpkt1[$np1] = $key1;
$vlpkt1[$np1] = $value1;
}



$simpan = mysqli_query($conn, "INSERT INTO konsultasi(tanggal, gejala, penyakit) VALUES ('$input_tanggal','$input_gejala', '$input_penyakit')");
if ($simpan) {
$id_pasien = $_SESSION['id_pasien'];
$get_id_konsultasi  = mysqli_query($conn, "SELECT id_konsultasi FROM konsultasi ORDER BY id_konsultasi DESC LIMIT 1");
while ($row_id_konsul = mysqli_fetch_array($get_id_konsultasi)) {
$id_konsultasi  = $row_id_konsul['id_konsultasi'];
}
mysqli_query($conn, "INSERT INTO hasil_konsultasi(id_konsultasi, id_pasien, id_penyakit, nilai_akurasi) VALUES ('$id_konsultasi', '$id_pasien', '$idpkt1[1]', '$vlpkt1[1]')");
}
?>


<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <title>Hasil Diagnosa</title>
</head>
<body>
 <h3 style="text-align: center;margin-bottom: 50px;">Hasil Diagnosa</h3>

 <table class="table table-bordered table-striped">
   <thead>
    <tr style="text-align: center;">
     <th>No.</th>
     <th>Gejala</th>
     <th>Kondisi</th>
   </tr>
 </thead>
 <tbody>
   <?php
   $ig = 0;
   foreach ($array_gejala as $key => $value) {
   $kondisi = $value;
   $ig++;
   $gejala = $key;
   $query_gejala_hasil = mysqli_query($conn, "SELECT * FROM datagejala where id_gejala = '$key'");
   $r4 = mysqli_fetch_array($query_gejala_hasil);
   ?>
   <tr style="text-align: center;">
    <td><?php echo $ig ?></td>
    <!-- <td><?php echo $r4['id_gejala']; ?></td> -->
    <td style="text-align: justify;"><?php echo $r4['nama_gejala'] ?></td>
    <td><?php echo $array_kondisitext[$kondisi] ?></td>

  </tr>
  <?php
}
?>
</tbody>
</table>

<div class="row">
  <div class="col-md-12 mt-3">
   <?php
   $np = 0;
   foreach ($arpenyakit as $key => $value) {
   $np++;
   $idpkt[$np] = $key;
   $nmpkt[$np] = $nama_penyakit[$key];
   $vlpkt[$np] = $value;
 }

 ?>
 <div class="card">
  <div class="card-header">
    <b>Diagnosa</b>
  </div>
  <div class="card-body">
    
    <!-- <div class="jumbotron jumbotron-fluid"> -->
      <?php
      $np = 0;
      foreach ($arpenyakit as $key => $value) {
      $np++;
      $idpkt[$np] = $key;
      $nmpkt[$np] = $nama_penyakit[$key];
      $vlpkt[$np] = $value;
    }

    ?>
        <?php
        if ($nmpkt[1] != "Tidak Terindikasi Skizofrenia")  {
        echo "<p class='lead fw-normal'>Berdasarkan kondisi yang telah Anda pilih pada halaman sebelumnya, maka dapat disimpulkan bahwa </p>";
        echo "<p style='font-size: 20px;font-weight:20' class='lead fw-normal'>Anda memiliki potensi terkena penyakit $nmpkt[1] sebesar " . number_format($vlpkt[1] * 100) . "%</p>";
        // echo "<h6 style='margin-top: -20px;'> sebesar " . number_format($vlpkt[1] * 100) . "%</h6>";
      } else {
      echo "<p class='lead' style='text-align: justify;'>Berdasarkan kondisi yang telah anda pilih pada halaman sebelumnya, dapat disimpulkan bahwa anda</p>";
      echo "<p style='font-size: 40px;font-weight:500'> $nmpkt[1]</p>";
    }
    ?>
<!-- </div> -->
</div>
</div>

<div class="card" style="margin-top: 2%;">
  <div class="card-header" style="background-color: rgba(242, 242, 6, 1);">
    <b>Saran</b>
  </div>
  <div class="card-body">
    <!-- <p>Untuk hasil diagnosa yang lebih akurat, anda dapat menghubungi dokter terdekat untuk melakukan pemeriksaan dan tindakan lebih lanjut.</p> -->
    <?php echo $saran_penyakit[$idpkt[1]] ?>.
  </div>
</div>

</div>
</div>
<?php
    function tanggal_indonesia($tanggal){
        $bulan = array (
        1 =>   'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
        );
        
        $pecahkan = explode('-', $tanggal);
        
        // variabel pecahkan 0 = tanggal
        // variabel pecahkan 1 = bulan
        // variabel pecahkan 2 = tahun
         
        return $pecahkan[2] . ' ' . $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
    }
    
?>

<div class="col-md-12 mt-1">
  <div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4"></div>
    <div class="col-md-4">
      <div class="text-center">
        <h6>Tanggal Diagnosa : <?= tanggal_indonesia(date('Y-m-d')); ?></h6>
        <!--<h6>Psikolog,</h6>-->
        <!--<img src="img/images.jpg" width="150px"><br>-->
        <!--Enyke Rosyita Diana, S.Psi., M.Psi., Psikolog-->
      </div>
    </div>
  </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
<script type="text/javascript">
window.print();
</script>

</html>

<?php
unset($_SESSION['id_pasien']);
?>