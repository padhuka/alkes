<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_mayor = trim($_POST['id_mayor']);
        $id_mayorhiden = trim($_POST['idmayor']);

        $nama = trim($_POST['nama']);
        $namahiden= trim($_POST['namamayor']);

        $divisi = trim($_POST['divisiE']);

        $sqlcek = "SELECT * FROM t_mayor WHERE id_mayor='$id_mayor' AND id_mayor<>'$id_mayorhiden'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_mayor SET nama='$nama', fk_divisi='$divisi' WHERE id_mayor='$id_mayor'";
                mysql_query($sqltbemp);
           // echo '
     }
?>