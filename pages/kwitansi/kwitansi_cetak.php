<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $no_kwitansi= $_GET['no_kwitansi'];
    //   $sqlpan= "SELECT * FROM t_kwitansi WHERE t_kwitansi='$no_kwitansi'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body onload="javascript:window.print()">
  <style type="text/css">
  table {
   font-size: 11px;
}
th, td {
   font-size: 11px;
    
}
</style>
                  <?php //onload="javascript:window.print()"
                                    $j=1;
                                    $sqlcatat = "SELECT e.*, c.npwp AS npwpcus,c.alamat AS alamatcustomer,c.no_telp AS telpcustomer,c.nama AS nmcustomer FROM t_kwitansi e
                                    LEFT JOIN t_delivery_order a ON e.fk_delivery_order=a.id_delivery_order
                                    LEFT JOIN t_customer c ON a.fk_customer=c.id_customer
                                    WHERE e.no_kwitansi='$no_kwitansi'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
                                    $iddelivery_order=$catat['fk_delivery_order'];
                                ?>

                      <table style="font-weight: bold;">
                          <tr>
                            <td width="50%">
                                <table style="font-weight: bold;">
                                    <tr><td><img src="../../file/logomh.png"></td><td></td><td>
                                      PT. MH Medika<br>
                                      Jl. Sumbing Rt.03 Rw.09 Mojosongo
                                      Surakarta Tlp. 0271-9224110, 081229875951<br>
                                    </td></tr>
                                    <tr><td>No. Faktur</td><td>:</td><td><?php echo $no_kwitansi;?></td></tr>
                                    <tr><td>No. DO</td><td>:</td><td><?php echo $iddelivery_order;?></td></tr>
                                    <tr><td>Salesman</td><td>:</td></tr>
                                </table>                      
                            </td>
                            <td width="10%"></td>
                            <td width="40%">
                                  <table>
                                    <tr><td>Tanggal : <?php echo date('d-m-Y' , strtotime($catat['tgl_kwitansi']));?></td></tr>
                                    <tr>
                                        <td>
                                          <table cellpadding="0" cellspacing="0" border="1"><tr><td>
                                            Kepada :<br>
                                            <?php echo $catat['nmcustomer'];?><br>
                                            <?php echo $catat['alamatcustomer'];?>,
                                            <?php echo $catat['telpcustomer'];?>,
                                            NPWP : <?php echo $catat['npwpcus'];?>
                                            </td></tr></table>
                                        </td>
                                    </tr>
                                  </table>
                              
                            </td>
                          </tr>
                      </table>
                   
                      
                <table width="100%" border="1" cellspacing="0" cellpadding="0">
                <thead class="thead-light">
                        <tr><th>No </th><th>Kode </th><th>Nama</th><th>Harga</th><th>Qty</th><th>Disc</th><th>Total</th></tr>
                        </thead>
                        <tbody>
                <?php
                                    $j=1;
                                    $sqlcatatp = "SELECT * FROM t_delivery_order_detail a 
                                    LEFT JOIN t_barang p ON a.fk_barang=p.id_barang
                                    WHERE a.fk_delivery_order ='$iddelivery_order'";
                                    $rescatatp = mysql_query( $sqlcatatp );
                                    while($catatp = mysql_fetch_array( $rescatatp )){
                                ?>
                        <tr>
                          <td><?php echo $j++?></td>
                          <td><?php echo $catatp['id_barang'];?></td>
                          <td><?php echo $catatp['nama'];?></td>
                          <td><?php echo rupiah2($catatp['gross_jual_barang']);?></td>
                          <td><?php echo $catatp['qty'];?></td>
                          <td><?php echo $catatp['diskon_jual_barang'];?></td>
                          <td align="right"><?php echo rupiah2($catatp['netto_jual_barang']);?></td>
                        </tr>
                    <?php }?>
                  
                           
                        <tr><td colspan="5" align="left" rowspan="3"><strong>
                          Rekening Pembayaran :<br>
                          Bank Jateng A/C : 1-002-00467<br>
                          A/N : PT. MH. MEDIKA
                        </strong></td><td>Sub Total Jasa</td><td align="right"><?php echo rupiah2($catat['total_netto_barang']);?></td></tr>
                        <tr><td>PPN 10%</td><td align="right"><?php echo rupiah2($catat['total_ppn_kwitansi']);?></td></tr>
                        <tr><td><strong>Total Bayar</strong></td><td align="right"><?php echo rupiah2($catat['total_kwitansi']);?></td></tr>
                </tfoot>
              </table><br>

                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td width="50%" align="center">Diterima<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td><td width="50%" align="center">Hormat Kami<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td></tr>
                                 </table><br>
                                 
</body>
</html>
