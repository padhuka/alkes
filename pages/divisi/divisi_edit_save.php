<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_divisi = trim($_POST['id_divisi']);
        $id_divisihiden = trim($_POST['iddivisi']);

        $nama = trim($_POST['nama']);
        $namahiden= trim($_POST['namadivisi']);

        $sqlcek = "SELECT * FROM t_divisi WHERE id_divisi='$id_divisi' AND id_divisi<>'$id_divisihiden'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_divisi SET nama='$nama' WHERE id_divisi='$id_divisi'";
                mysql_query($sqltbemp);
           // echo '
     }
?>