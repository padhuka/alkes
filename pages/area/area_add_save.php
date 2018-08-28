<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_area = trim($_POST['id_area']);
        $nama = trim($_POST['nama']);
        //message_back($id_area);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_area WHERE nama='$nama' OR id_area='$id_area'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_area (id_area,nama) VALUES ('$id_area','$nama')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>