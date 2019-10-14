<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=kartustock.xls");
 
// Tambahkan table
//include 'data.php';

?>
                      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table width="100%" align="center" border="0">
                                  <tr>
                                    <td width="50%"><u style="font-size: 20px;"><strong>PT. Nusa Asia Medika</strong><br>
                                    </u>
                                       Jl. Rukun CBD, Green Lake City F. No.15<br>
                                      Ketapang, Tangerang Telp (021) 3030-6595<br>
                                    </td>                                   
                                  </tr>                                   
                                </table>
                                    <span style="font-size: 20px;font-weight: bold;"><center>Laporan Kartu Stock</center></span>
                                    <span style="font-size: 20px;font-weight: bold;"><center> Per Tgl <?php echo date('d-m-Y');?></center></span>
                                <br>
      <table id="tablepkb1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>Kode </th>
                          <th>Nama</th>
                           <th>HPP</th>
                          <th>Stock Akhir</th>
                       
                </tr>
                </thead>
                <tbody>
                <?php
                                   //WHERE p.tgl_batal='0000-00-00 00:00:00' AND p.status_pkb='' AND substring(tgl,1,10)>='$tgl1' AND  substring(tgl,1,10)<='$tgl2' 
                                   
                                   
                                    $j=1;
                                    $sqlcatat = " SELECT FX.fk_barang,FX.nama,FX.harga_pokok as hpp,(FX.qty - ifnull(X.qty,0)) as qty FROM (
                                       SELECT * FROM
                                       (
                                       SELECT pd.fk_barang,b.nama,b.harga_pokok, sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
                                       LEFT  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
                                       LEFT  join t_barang b ON pd.fk_barang=b.id_barang
                                       WHERE p.tgl_batal='0000-00-00 00:00:00' GROUP BY pd.fk_barang
                                      UNION
                                       SELECT od.fk_barang,g.nama,g.harga_pokok,sum(od.qty) as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
                                       LEFT join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
                                       LEFT join t_barang g ON od.fk_barang=g.id_barang
                                       WHERE o.tgl_batal='0000-00-00 00:00:00' GROUP BY od.fk_barang) as STOK WHERE tipe='masuk') AS FX
                                       LEFT JOIN  (SELECT * FROM (
                                        SELECT * FROM
                                       (
                                       SELECT pd.fk_barang,b.nama,b.harga_pokok,sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
                                       LEFT  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
                                       LEFT  join t_barang b ON pd.fk_barang=b.id_barang
                                       WHERE p.tgl_batal='0000-00-00 00:00:00' GROUP BY pd.fk_barang
                                      UNION
                                       SELECT od.fk_barang,g.nama,g.harga_pokok,sum(od.qty)  as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
                                       LEFT join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
                                        LEFT join t_barang g ON od.fk_barang=g.id_barang
                                       WHERE o.tgl_batal='0000-00-00 00:00:00' GROUP BY od.fk_barang) as STOK WHERE tipe='keluar') AS PX ) AS X         
                                       ON FX.fk_barang=X.fk_barang";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                     {
                                ?>
                        <tr>
                          <th><?php echo $j++;?></th>   
                          <td ><?php echo $catat['fk_barang'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['hpp'];?></td>
                          <td ><?php echo $catat['qty'];?></td>
                        </tr>

                    <?php }
                  }?>
                </tfoot>
              </table>
              <table>
                
              </table>