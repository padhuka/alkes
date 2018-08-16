<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body onload="javascript:window.print()">
<?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idpo= $_GET['idpo'];
  
   ?>
   <?php
                                   $j=1;
                                    $sqlcatat2 = "SELECT * FROM t_pembelian e 
                                                  left join t_supplier c
                                                  on e.fk_supplier=c.id_supplier
                                                  where e.id_pembelian='$idpo'";
                                    $rescatat2 = mysql_query( $sqlcatat2 );
                                    $catat2 = mysql_fetch_array( $rescatat2 );
                                ?>
                                <table width="100%">
                                  <tr><td align="center" style="font-size: 20px; text-align: center;"><u>PURCHASE ORDER DETAIL</u></td></tr>
                                  <tr><td align="center" style="font-size: 18px; text-align: center;"><?php echo $catat2['id_pembelian'];?></td></tr>
                                </table>
                                <table class="">
                                   <td>
                                     <th class="col-sm-8">
                                    <tr> <th>No Purchase Order</th> <td > : <?php echo $catat2['id_pembelian'];?></td></tr>
                                    <tr> <th>Tanggal</th> <td > : <?php echo date('d-m-Y' , strtotime($catat2['tgl']));?></td></tr>
                                    <tr> <th>Nama Supplier</th>  <td > : <?php echo $catat2['nama'];?></td></tr>
                                    </th>
                                   </td>
                                  </table>

                                <table width="100%">
                                      <thead class="thead-light">
                                      <tr>
                                                <th>Nama</th>
                                                <th>Harga</th>
                                                <th>Diskon</th>
                                                <th>Qty</th>
                                                <th>Harga Netto</th>    
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <?php
                                                          $j=1;
                                                          $jml=0;
                                                          $sqlcatat = "SELECT ep.*,p.nama FROM t_pembelian_detail  ep
                                                          LEFT JOIN t_barang p ON ep.fk_barang=p.id_barang
                                                          WHERE fk_pembelian='$idpo' ORDER BY id ASC";
                                                          $rescatat = mysql_query( $sqlcatat );
                                                          while($catat = mysql_fetch_array( $rescatat )){
                                                            $jml=$jml+$catat['netto_beli_barang'];
                                                      ?>
                                              <tr>
                                                <td align="right"><?php echo $catat['nama'];?></td>
                                                <td align="right"><?php echo rupiah2($catat['gross_beli_barang']);?></td>
                                                <td align="right"><?php echo rupiah2($catat['diskon_beli_barang']);?></td>
                                                <td align="right"><?php echo $catat['qty'];?></td>
                                                <td align="right"><?php echo rupiah2($catat['netto_beli_barang']);?></td>                          
                                              </tr>
                                          <?php }?>
                                              <tr><td colspan="4" align="right">Total</td><td align="right"> <?php echo rupiah2($jml);?></td></tr>
                                              <!--<tr><td colspan="4" align="right">PPN</td><td>0</td></tr>
                                              <tr><td colspan="4" align="right">Total</td><td><?php //echo rupiah2($jml);?></td></tr>-->
                                         
                                      </tfoot>
                                    </table>
                                <br>

                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td align="right"><strong>GRAND TOTAL RP <?php echo rupiah2($jml);?></strong></td><td width="10%"></td></tr>
                                 </table>
                                <br><br>
                                <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td width="50%" align="center"></td><td width="50%" align="center"><?php echo date('d-m-Y' , strtotime($catat2['tgl']));?></td></tr>
                                </table>
                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td width="50%" align="center">Menyetujui<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td><td width="50%" align="center">Hormat Kami<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td></tr>
                                 </table><br>
                                 
                               
</body>
</html>