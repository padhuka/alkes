<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_minor = trim($_POST['id_minor']);
        $id_minorhiden = trim($_POST['idminor']);

        $nama = trim($_POST['nama']);
        $namahiden= trim($_POST['namaminor']);

        $mayor = trim($_POST['mayorE']);

        $sqlcek = "SELECT * FROM t_minor WHERE id_minor='$id_minor' AND id_minor<>'$id_minorhiden'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_minor SET nama='$nama', fk_mayor='$mayor' WHERE id_minor='$id_minor'";
                mysql_query($sqltbemp);
           // echo '
     }
?>