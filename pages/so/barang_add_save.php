<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_barang = trim($_POST['barang']);
        $idso = trim($_POST['idso']);
        $diskon = trim($_POST['diskon']);
        $hargajual= trim($_POST['hargapokok']);
        $qty= trim($_POST['qty']);
        $hargadiskon= ($diskon*$hargajual)/100;
        $total= trim($_POST['hargatotal']);
            

            $checkstock  ="SELECT (FX.qty - ifnull(X.qty,0)) as qty FROM (
                                       SELECT * FROM
                                       (
                                       SELECT pd.fk_barang,b.nama, sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
                                       LEFT  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
                                       LEFT  join t_barang b ON pd.fk_barang=b.id_barang
                                       WHERE p.tgl_batal='0000-00-00 00:00:00' AND pd.fk_barang='$id_barang' GROUP BY pd.fk_barang
                                      UNION
                                       SELECT od.fk_barang,g.nama,od.qty as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
                                       LEFT join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
                                       LEFT join t_barang g ON od.fk_barang=g.id_barang
                                       WHERE o.tgl_batal='0000-00-00 00:00:00' AND od.fk_barang='$id_barang' GROUP BY od.fk_barang) as STOK WHERE tipe='masuk') AS FX
                                       LEFT JOIN  (SELECT * FROM (
                                        SELECT * FROM
                                       (
                                       SELECT pd.fk_barang,b.nama,sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
                                       LEFT  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
                                       LEFT  join t_barang b ON pd.fk_barang=b.id_barang
                                       WHERE p.tgl_batal='0000-00-00 00:00:00' AND pd.fk_barang='$id_barang' GROUP BY pd.fk_barang
                                      UNION
                                       SELECT od.fk_barang,g.nama,od.qty as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
                                       LEFT join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
                                        LEFT join t_barang g ON od.fk_barang=g.id_barang
                                       WHERE o.tgl_batal='0000-00-00 00:00:00' AND od.fk_barang='$id_barang' GROUP BY od.fk_barang) as STOK WHERE tipe='keluar') AS PX ) AS X         
                                       ON FX.fk_barang=X.fk_barang";
            $qstock =  mysql_fetch_array(mysql_query($checkstock)); 
            $stock = $qstock['qty'];

            if ($stock < $qty) {
              echo 'y';
            }
            else {
              $sqltbemp = "INSERT INTO t_penjualan_detail (fk_penjualan,fk_barang,gross_jual_barang,diskon_jual_barang,netto_jual_barang,qty) VALUES ('$idso','$id_barang','$hargajual','$hargadiskon','$total','$qty')";
            mysql_query($sqltbemp);
   
            $sqlbarang= "SELECT sum(gross_jual_barang*qty) AS totjualbarang,sum(diskon_jual_barang*qty) AS totdiskonbarang,sum(netto_jual_barang) AS totestimasibarang FROM t_penjualan_detail WHERE fk_penjualan = '$idso'";
            $hbarang= mysql_fetch_array(mysql_query($sqlbarang));
            //jml barang

            $totgrosbarang=$hbarang['totjualbarang'];
            $totdiskonbarang=$hbarang['totdiskonbarang'];
            $totnettobarang=$hbarang['totestimasibarang'];

            $updatebarang = "UPDATE t_penjualan set total_gross_jual_barang='$totgrosbarang', total_diskon_jual_barang='$totdiskonbarang', total_netto_jual_barang='$totnettobarang' WHERE id_penjualan='$idso'";
            mysql_query($updatebarang);
            }

?>