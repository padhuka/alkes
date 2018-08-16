<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_barang = trim($_POST['barang']);
        $idpo = trim($_POST['idpo']);
        $diskon = trim($_POST['diskon']);
        $hargabeli= trim($_POST['hargapokok']);
        $qty= trim($_POST['qty']);
        $belidiskon= ($diskon*$hargabeli)/100;
        $total= trim($_POST['hargatotal']);
      
		    $sqltbemp = "INSERT INTO t_pembelian_detail (fk_pembelian,fk_barang,gross_beli_barang,diskon_barang,diskon_beli_barang,netto_beli_barang,qty) VALUES ('$idpo','$id_barang','$hargabeli','$diskon','$belidiskon','$total','$qty')";
            mysql_query($sqltbemp);
            
            //UPDATE STOK

            // SELECT DETAIL
             // $sqlupdatestok = "INSERT INTO t_stok_akhir (fk_barang,masuk,hpp) VALUES ('$id_barang','$qty','$hargabeli')";
             // mysql_query($sqlupdatestok);



            $sqlbarang= "SELECT sum(gross_beli_barang*qty) AS totalbelibarang,sum(diskon_beli_barang*qty) AS totdiskonbarang,sum(netto_beli_barang) AS totestimasibarang FROM t_pembelian_detail WHERE fk_pembelian = '$idpo'";
            $hbarang= mysql_fetch_array(mysql_query($sqlbarang));
            //jml barang

            $totgrosbarang=$hbarang['totalbelibarang'];
            $totdiskonbarang=$hbarang['totdiskonbarang'];
            $totnettobarang=$hbarang['totestimasibarang'];

            $updatebarang = "UPDATE t_pembelian set total_gross_beli_barang='$totgrosbarang', total_diskon_beli_barang='$totdiskonbarang', total_netto_beli_barang='$totnettobarang' WHERE id_pembelian='$idpo'";
            mysql_query($updatebarang);


?>