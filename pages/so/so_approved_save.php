<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
        $idso = $_GET['idso'];
        
            $updateestimasi = "UPDATE t_penjualan SET approved='1' WHERE id_penjualan='$idso'";
            mysql_query($updateestimasi);
?>
