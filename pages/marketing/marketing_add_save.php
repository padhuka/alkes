<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_marketing = trim($_POST['id_marketing']);
        $nama = trim($_POST['nama']);
        $area = trim($_POST['area']);
        //message_back($id_marketing);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_marketing WHERE nama='$nama' OR id_marketing='$id_marketing'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_marketing (id_marketing,nama,fk_area) VALUES ('$id_marketing','$nama','$area')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>