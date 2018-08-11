<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
         //$ip = ; // Ambil IP Address dari User
        $idso = trim($_POST['idso']);
        $customer = trim($_POST['customer']);
        $tgl = trim($_POST['tgl']);
        $keterangan = trim($_POST['keterangan']);
        //message_back($id_estimasi);
        //$kodeawal = 'est_'.$hrini.'_';
        //UPDATE t_estimasi\
        $updateEs = "UPDATE t_estimasi SET fk_no_chasis='$chasis',fk_no_mesin='$mesin',fk_no_polisi='$polisi',km_masuk='$kmmasuk',fk_user='$uname',kategori='$kategori',fk_customer='$customer',fk_asuransi='$asuransi' WHERE id_estimasi='$idestimasi'";
        mysql_query($updateEs);
        echo $idestimasi.'-'.$warnanm;
        //echo $updateEs;      
?>