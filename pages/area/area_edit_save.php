<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_area = trim($_POST['id_area']);
        $id_areahiden = trim($_POST['idarea']);

        $nama = trim($_POST['nama']);
        $namahiden= trim($_POST['namaarea']);

        $sqlcek = "SELECT * FROM t_area WHERE id_area='$id_area' AND id_area<>'$id_areahiden'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_area SET nama='$nama' WHERE id_area='$id_area'";
                mysql_query($sqltbemp);
           // echo '
     }
?>