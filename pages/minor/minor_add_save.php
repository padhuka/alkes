<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_minor = trim($_POST['id_minor']);
        $nama = trim($_POST['nama']);
        $mayor = trim($_POST['mayor']);
        //message_back($id_minor);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_minor WHERE nama='$nama' OR id_minor='$id_minor'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_minor (id_minor,nama,fk_mayor) VALUES ('$id_minor','$nama','$mayor')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>