<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idrekapkwitansi= $_GET['idrekapkwitansi'];
    //   $sqlpan= "SELECT * FROM t_kwitansi WHERE t_kwitansi='$no_kwitansi'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body onload="javascript:window.print()">
                  <?php //onload="javascript:window.print()"
                                    $j=1;
                                    $sqlcatat = "SELECT A.*,B.*,D.*, E.tgl AS tglrk FROM t_rekapkwitansi E
                                                  LEFT JOIN t_rekapkwitansi_detail A ON E.id_rekapkwitansi=A.fk_rekapkwitansi
                                                  LEFT JOIN t_kwitansi B ON A.fk_kwitansi=B.no_kwitansi
                                                  LEFT JOIN t_delivery_order C ON B.fk_delivery_order=C.id_delivery_order
                                                  LEFT JOIN t_customer D ON C.fk_customer=D.id_customer
                                                  WHERE  E.id_rekapkwitansi='$idrekapkwitansi'";
                                    $rescatat = mysql_query( $sqlcatat ); 
                                    $rescustomer = mysql_query( $sqlcatat ); 
                                    $catatcustomer = mysql_fetch_array($rescustomer);


                                    $data = [];
                                    while($catat = mysql_fetch_array($rescatat)){
                                             $data[] = $catat['fk_delivery_order'];          
                                    }

                                     $data1 = isset($data[0]) ? $data[0] : null;
                                     $data2 = isset($data[1]) ? $data[1] : null;
                                     $data3 = isset($data[2]) ? $data[2] : null;
                                     $data4 = isset($data[3]) ? $data[3] : null;
                                     $data5 = isset($data[4]) ? $data[4] : null;
                                ?>

                      <table style="font-weight: bold;">
                          <tr>
                            <td width="50%">
                                <table style="font-weight: bold;">
                                    <tr><td><img src="../../file/logomh.png"></td><td></td><td>
                                      PT. MH Medika<br>
                                      Jl. Sumbing Rt.03 Rw.09 Mojosongo<br>
                                      Surakarta Tlp. 0271-9224110, 081229875951<br>
                                    </td></tr>
                                    <tr><td>No. Faktur</td><td>:</td><td><?php echo $idrekapkwitansi;?></td></tr>
                                    <tr><td>No. DO</td><td>:</td><td><?php echo $data1; echo ",";echo $data2; echo ","; echo $data3;echo ","; echo $data4;?></td></tr>
                                    <tr><td>Salesman</td><td>:</td></tr>
                                </table>                      
                            </td>
                            <td width="10%"></td>
                            <td width="40%">
                                  <table>
                                    <tr><td>Tanggal : <?php echo date('d-m-Y' , strtotime($catatcustomer['tglrk']));?></td></tr>
                                    <tr>
                                        <td>
                                          <table cellpadding="0" cellspacing="0" border="1"><tr><td>
                                            Kepada :<br>
                                            <?php echo $catatcustomer['nama'];?><br><br>
                                            <?php echo $catatcustomer['no_telp'];?><br>
                                            <?php echo $catatcustomer['alamat'];?><br>
                                            NPWP : <?php echo $catatcustomer['npwp'];?><br>
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
                                    WHERE a.fk_delivery_order ='$data1' or a.fk_delivery_order ='$data2' or a.fk_delivery_order ='$data3' or a.fk_delivery_order ='$data4' or a.fk_delivery_order ='$data5'";
                                    $rescatatp = mysql_query( $sqlcatatp );
                                    while($catatp = mysql_fetch_array( $rescatatp )){
                                ?>
                        <tr>
                          <td><?php echo $j++?></td>
                          <td><?php echo $catatp['id_barang'];?></td>
                          <td><?php echo $catatp['nama'];?></td>
                          <td><?php echo rupiah2($catatp['gross_jual_barang']);?></td>
                          <td>1</td>
                          <td><?php echo $catatp['diskon_jual_barang'];?></td>
                          <td align="right"><?php echo rupiah2($catatp['netto_jual_barang']);?></td>
                        </tr>
                    <?php

                         $sqltotal = "SELECT sum(total_netto_barang) as total_jasa, sum(total_ppn_kwitansi) as total_ppn, sum(total_kwitansi) as grand_total  FROM t_kwitansi k
                            WHERE fk_delivery_order ='$data1' or fk_delivery_order ='$data2' or fk_delivery_order ='$data3' or fk_delivery_order ='$data4' or fk_delivery_order ='$data5' ";
                            $cattotal = mysql_query($sqltotal);
                            $total = mysql_fetch_array( $cattotal );

                     }?>
                  
                           
                        <tr><td colspan="5" align="left" rowspan="3"><strong>
                          Rekening Pembayaran :<br>
                          Bank Jateng A/C : 1-002-00467<br>
                          A/N : PT. MH. MEDIKA
                        </strong></td><td>Sub Total Jasa</td><td align="right"><?php echo rupiah2($total['total_jasa']);?></td></tr>
                        <tr><td>PPN 10%</td><td align="right"><?php echo rupiah2($total['total_ppn']);?></td></tr>
                        <tr><td><strong>Total Bayar</strong></td><td align="right"><?php echo rupiah2($total['grand_total']);?></td></tr>
                </tfoot>
              </table><br>

                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td width="50%" align="center">Diterima<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td><td width="50%" align="center">Hormat Kami<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td></tr>
                                 </table><br>
                                 
</body>
</html>
