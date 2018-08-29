<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_group = trim($_POST['id_group']);
        $id_grouphiden = trim($_POST['idgroup']);

        $nama = trim($_POST['nama']);
        $namahiden= trim($_POST['namagroup']);

        $minor = trim($_POST['minorE']);

        $sqlcek = "SELECT * FROM t_group WHERE id_group='$id_group' AND id_group<>'$id_grouphiden'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_group SET nama='$nama', fk_minor='$minor' WHERE id_group='$id_group'";
                mysql_query($sqltbemp);
           // echo '
     }
?>