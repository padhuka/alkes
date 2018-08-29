<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_divisi = trim($_POST['id_divisi']);
        $nama = trim($_POST['nama']);
        //message_back($id_divisi);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_divisi WHERE nama='$nama' OR id_divisi='$id_divisi'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_divisi (id_divisi,nama) VALUES ('$id_divisi','$nama')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>