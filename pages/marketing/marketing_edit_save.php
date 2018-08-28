<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_marketing = trim($_POST['id_marketing']);
        $id_marketinghiden = trim($_POST['idmarketing']);

        $nama = trim($_POST['nama']);
        $namahiden= trim($_POST['namamarketing']);

        $area = trim($_POST['areaE']);

        $sqlcek = "SELECT * FROM t_marketing WHERE id_marketing='$id_marketing' AND id_marketing<>'$id_marketinghiden'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_marketing SET nama='$nama', fk_area='$area' WHERE id_marketing='$id_marketing'";
                mysql_query($sqltbemp);
           // echo '
     }
?>