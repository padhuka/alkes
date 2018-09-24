<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
         //$ip = ; // Ambil IP Address dari User
        $idso = trim($_POST['idsoe']);
        $customer = trim($_POST['Ecustomer']);
        $marketing = trim($_POST['marketingE']);
        //$tgl = trim($_POST['tgl']);
        $keterangan = trim($_POST['Eketerangan']);
        //message_back($id_penjualan);
        //$kodeawal = 'est_'.$hrini.'_';
        //UPDATE t_penjualan\
        $updateEs = "UPDATE t_penjualan SET fk_customer='$customer',fk_marketing='$marketing',keterangan='$keterangan' WHERE id_penjualan='$idso'";
        mysql_query($updateEs);
        echo $idso;
         // $sqlstatus= "INSERT INTO t_status_so(fk_penjualan) VALUES ('$idso')";
         //        mysql_query($sqlstatus);   
        //echo $updateEs;      
?>