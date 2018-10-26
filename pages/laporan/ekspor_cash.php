<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=reportcash.xls");
 
// Tambahkan table
//include 'data.php';

?>
								      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table width="100%" align="center" border="0">
                                   <tr>
                                    <td width="50%"><u style="font-size: 20px;"><strong>PT. MH Medika</strong><br>
                                    </u>
                                      Jl. Sumbing Rt.03 Rw.09 Mojosongo<br>
                                      Surakarta Tlp. 0271-9224110, 081229875951<br>
                                    </td>                                   
                                  </tr>                                 
                                </table>
                                    <span style="font-size: 20px;font-weight: bold;"><center>Laporan Cash</center></span>
                                     <span style="font-size: 20px;font-weight: bold;"><center><?php echo $_GET['tgl1']; echo $_GET['tgl2'];?></center></span>
                                <br>
      <table id="cash" border="1">
                <thead class="thead-light">
                <tr align="center">
                          <th>No Bukti</th>
                          <th>Tgl</th>
                          <th>Tipe Transaksi</th>
                          <th>Di Terima Dari</th>
                          <th>No Ref</th>
                          <th>Total</th>
                          <th>Keterangan</th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $tgl1=$_GET['tgl1'];
                                    $tgl2=$_GET['tgl2'];
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_cash 
                                    WHERE tgl_batal='0000:00:00 00:00:00' AND substring(tgl_transaksi,1,10)>='$tgl1' AND  substring(tgl_transaksi,1,10)<='$tgl2' ORDER BY no_bukti DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><?php echo ($catat['no_bukti']);?></td>                       
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl_transaksi']));?></td>
                          <td ><?php echo $catat['tipe_transaksi'];?></td>
                          <td ><?php echo $catat['diterima_dari'];?></td>
                          <td ><?php echo $catat['no_ref'];?></td>
                          
                           <td ><?php echo rupiah2($catat['total']);?></td>
                           <td ><?php echo $catat['keterangan'];?></td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>