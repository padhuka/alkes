<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_city = trim($_POST['id_city']);
        $id_cityhiden = trim($_POST['idcity']);

        $nama = trim($_POST['nama']);
        $namahiden= trim($_POST['namacity']);

        $sqlcek = "SELECT * FROM t_city WHERE id_city='$id_city' AND id_city<>'$id_cityhiden'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_city SET nama='$nama' WHERE id_city='$id_city'";
                mysql_query($sqltbemp);
           // echo '
     }
?>