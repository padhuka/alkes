<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_group = trim($_POST['id_group']);
        $nama = trim($_POST['nama']);
        $minor = trim($_POST['minor']);
        //message_back($id_group);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_group WHERE nama='$nama' OR id_group='$id_group'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_group (id_group,nama,fk_minor) VALUES ('$id_group','$nama','$minor')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>