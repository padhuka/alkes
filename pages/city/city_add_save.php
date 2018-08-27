<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_city = trim($_POST['id_city']);
        $nama = trim($_POST['nama']);
        //message_back($id_city);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_city WHERE nama='$nama' OR id_city='$id_city'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_city (id_city,nama) VALUES ('$id_city','$nama')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>