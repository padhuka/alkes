<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id = trim($_POST['idE']);
        $idpop = trim($_POST['idpop']);
        $id_barang = trim($_POST['barangE']);
        $diskon = trim($_POST['diskonE']);
        $hargabeli= trim($_POST['hargapokokE']);
        $qty= trim($_POST['qtyE']);
        $hargadiskon= ($diskon*$hargabeli)/100;
        $total= trim($_POST['hargatotalE']);

         $updatebarang = "UPDATE t_pembelian_detail SET fk_barang='$id_barang',qty='$qty',gross_beli_barang='$hargabeli', diskon_barang='$diskon',diskon_beli_barang='$hargadiskon',netto_beli_barang='$total' WHERE id='$id'";
            mysql_query($updatebarang);
            
             //  $sqlupdatestokE = "UPDATE t_stok_akhir set fk_barang='$id_barang',masuk='$qty', hpp='$hargabeli'";
             // mysql_query($sqlupdatestokE);

            //echo $updatebarang;

           $sqlbarang= "SELECT sum(gross_beli_barang*qty) AS tolbelibarang,sum(diskon_beli_barang*qty) AS totdiskonbarang, sum(netto_beli_barang) AS topembelianbarang FROM t_pembelian_detail WHERE fk_pembelian = '$idpop'";
            $hbarang= mysql_fetch_array(mysql_query($sqlbarang));
            //jml barang

            $totgrosbarang=$hbarang['tolbelibarang'];
            $totdiskonbarang=$hbarang['totdiskonbarang'];
            $totnettobarang=$hbarang['topembelianbarang'];

            $updatebarang = "UPDATE t_pembelian set total_gross_beli_barang='$totgrosbarang', total_diskon_beli_barang='$totdiskonbarang', total_netto_beli_barang='$totnettobarang' WHERE id_pembelian='$idpop'";
            mysql_query($updatebarang);

?>