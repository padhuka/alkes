<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_mayor = trim($_POST['id_mayor']);
        $nama = trim($_POST['nama']);
        $divisi = trim($_POST['divisi']);
        //message_back($id_mayor);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_mayor WHERE nama='$nama' OR id_mayor='$id_mayor'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_mayor (id_mayor,nama,fk_divisi) VALUES ('$id_mayor','$nama','$divisi')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>