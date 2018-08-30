<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$no_kwitansi = trim($_POST['nokwitansi']);
        $idrk = trim($_POST['idrk']);
        
		    $sqltbemp = "INSERT INTO t_rekapkwitansi_detail (fk_rekapkwitansi,fk_kwitansi) VALUES ('$idrk','$no_kwitansi')";
            mysql_query($sqltbemp);
                    
?>