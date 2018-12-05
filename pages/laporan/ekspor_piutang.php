<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=reportpiutang.xls");
 
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
                                    <span style="font-size: 20px;font-weight: bold;"><center>Laporan Piutang</center></span><span style="font-size: 20px;font-weight: bold;"><center><?php echo $_GET['tgl1']; echo '  '.$_GET['tgl2'];?></center></span>
                                <br>
      <table id="tablepkb1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Nama Customer</th>
                          <th>No Kwitansi</th>
                          <th>Tgl Kwitansi</th>
                          <th>No DO</th>
                          <th>Tanggal DO</th>
                          <th>No SO</th>
                          <th>Tanggal SO</th>
                          <th>Piutang</th>
                </tr>
                </thead>
                <tbody>
                <?php
                                   //WHERE p.tgl_batal='0000-00-00 00:00:00' AND p.status_pkb='' AND substring(tgl,1,10)>='$tgl1' AND  substring(tgl,1,10)<='$tgl2' 
                                   
                                    $tgl1=$_GET['tgl1'];
                                    $tgl2=$_GET['tgl2'];
                                    $j=1;
                                    $jml=0;
                                    $sqlcatat = "SELECT c.nama as nama_customer,k.no_kwitansi,k.tgl_kwitansi,d.id_delivery_order,d.tgl as tgl_do,p.id_penjualan,p.tgl as tgl_so,k.total_kwitansi as piutang FROM t_kwitansi k 
                                            LEFT JOIN t_delivery_order d ON k.fk_delivery_order=d.id_delivery_order
                                            LEFT JOIN t_penjualan p ON d.fk_penjualan=p.id_penjualan 
                                            LEFT JOIN t_customer c ON d.fk_customer=c.id_customer
                                            INNER JOIN (SELECT * FROM t_status_so
                                                 WHERE id IN (
                                                 SELECT MAX(id)
                                                 FROM t_status_so
                                                 GROUP BY fk_penjualan
                                                 ) AND status !='LUNAS') AS s ON s.fk_penjualan=p.id_penjualan
                                            WHERE substring(tgl_kwitansi,1,10)>='$tgl1' AND  substring(tgl_kwitansi,1,10)<='$tgl2'";
                                   	$rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                     {
                                       $jml=$jml+$catat['piutang'];     
                                ?>
                        <tr>
                          <td><?php echo ($catat['nama_customer']);?></td>    
                           <td><?php echo ($catat['no_kwitansi']);?></td> 
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl_kwitansi']));?></td>     
                          <td ><?php echo $catat['id_delivery_order'];?></td>
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl_do']));?></td> 
                          <td ><?php echo $catat['id_penjualan'];?></td>
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl_so']));?></td> 
                          <td ><?php echo $catat['piutang'];?>
                        </tr>

                    <?php }
                  }?>
                  <tr><td></td><td></td><td></td><td></td><td></td><td></td><td>TOTALPIUTANG</td><td><?php echo $jml;?></td></tr>
                </tfoot>
              </table>
              <table>
                
              </table>