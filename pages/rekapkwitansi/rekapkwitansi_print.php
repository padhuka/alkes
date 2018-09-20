<!-- general form elements disabled -->
   <?php

    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idrekapkwitansi= $_GET['idrekapkwitansi'];
   ?>
<div class="modal-dialog">
           <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Rekap Kwitansi <button type="button" class="close" aria-label="Close" onclick="$('#ModalrekapkwitansiPrint').modal('hide');"><span>&times;</span></button></h4>                    
                    </div>
                  <?php
                                    $j=1;
                                    $sqlcatat = "SELECT A.*,B.*,D.*, E.tgl AS tglrk FROM t_rekapkwitansi E
                                                  LEFT JOIN t_rekapkwitansi_detail A ON E.id_rekapkwitansi=A.fk_rekapkwitansi
                                                  LEFT JOIN t_kwitansi B ON A.fk_kwitansi=B.no_kwitansi
                                                  LEFT JOIN t_delivery_order C ON B.fk_delivery_order=C.id_delivery_order
                                                  LEFT JOIN t_customer D ON C.fk_customer=D.id_customer
                                                  WHERE  E.id_rekapkwitansi='$idrekapkwitansi'";
                                                 // echo $sqlcatat;
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
                    <div class="modal-body">
                      <div class="modal-title-detail" align="center"><h4><u>Detail Rekap Kwitansi</u></h4><h5><?php echo $catatcustomer['fk_rekapkwitansi'];?></h5></div>
                      <div class="row">
                       <div class="col-sm-6">
                           <table id="poshow" class="">
                           <td>
                             <th class="col-sm-6">
                            <tr> <th>No. RK</th> <td ><?php echo $catatcustomer['fk_rekapkwitansi'];?></td></tr>
                            <tr> <th>Tanggal</th> <td ><?php echo date('d-m-Y', strtotime($catatcustomer['tglrk']));?></td></tr>
                            
                            </th>
                           </td>
                            </table>
                        </div>
                          <div class="col-sm-6">
                              <table id="delivery_ordershow" class="">
                              <td>
                                  <th class="col-sm-6">                                    
                                    <tr><th>Nama Customer</th> <td ><?php echo $catatcustomer['nama'];?></td></tr>
                                    <tr><th>Telp</th><td ><?php echo $catatcustomer['no_telp'];?></td></tr>
                                    <tr><th>Alamat</th><td ><?php echo $catatcustomer['alamat'];?></td></tr>
                                  </th>
                              </td>
                              </table>
                         </div>
                      </div>


                        <table id="showbarang" class="table table-condensed table-bordered table-striped table-hover">
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
                                    $sqlcatatp = "SELECT * FROM t_delivery_order_detail a 
                                    LEFT JOIN t_barang p ON a.fk_barang=p.id_barang
                                    WHERE a.fk_delivery_order ='$data1' or a.fk_delivery_order ='$data2' or a.fk_delivery_order ='$data3' or a.fk_delivery_order ='$data4' or a.fk_delivery_order ='$data5'  ";
                                    $rescatatp = mysql_query( $sqlcatatp );
                                    while($catatp = mysql_fetch_array( $rescatatp )){
                                ?>
                        <tr>
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
                        
                           
                        <tr><td colspan="4" align="right">Sub Total Jasa</td><td align="right"><?php echo rupiah2($total['total_jasa']);?></td></tr>
                        <tr><td colspan="4" align="right">PPN</td><td align="right"><?php echo rupiah2($total['total_ppn']);?></td></tr>
                        <tr><td colspan="4" align="right"><strong>Grand Total</strong></td><td align="right"><?php echo rupiah2($total['grand_total']);?></td></tr>
                   
                </tfoot>
              </table>
                          
                      </div>
                       
                
                       <div class="form-group">
                      <div class="modal-footer">
                      <div class="but"><a href="rekapkwitansi/rekapkwitansi_cetak.php?idrekapkwitansi=<?php echo $idrekapkwitansi;?>" target="blank"><button type="button" class="btn btn-primary" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class="btn btn-primary" name="close" onclick="$('#ModalrekapkwitansiPrint').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
               </div>
           </div>
           </div>      
           

