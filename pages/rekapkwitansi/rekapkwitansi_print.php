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
                                                  echo $sqlcatat;
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat )
                                ?>
                    <div class="modal-body">
                      <div class="modal-title-detail" align="center"><h4><u>Detail Rekap Kwitansi</u></h4><h5><?php echo $catat['fk_rekapkwitansi'];?></h5></div>
                      <div class="row">
                       <div class="col-sm-10">
                           <table id="poshow" class="">
                           <td>
                             <th class="col-sm-8">
                            <tr> <th>No. RK</th> <td > : <?php echo $catat['fk_rekapkwitansi'];?></td></tr>
                            <tr> <th>Tanggal</th> <td > : <?php echo date('d-m-Y', strtotime($catat['tglrk']));?></td></tr>
                            <tr> <th>Nama Customer</th>  <td > : <?php echo $catat['nama'];?></td></tr>
                            </th>
                           </td>
                          </table>
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
                                    $jml=0;
                                    $sqlcatat = "SELECT * FROM t_rekapkwitansi_detail
                                    WHERE fk_rekapkwitansi='$idrekapkwitansi' ORDER BY fk_rekapkwitansi ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    echo $sqlcatat;
                                    while($catat = mysql_fetch_array( $rescatat )){
                                      $jml=$jml+$catat['netto_beli_barang'];
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['gross_beli_barang']);?></td>
                          <td ><?php echo rupiah2($catat['diskon_beli_barang']);?></td>
                          <td ><?php echo $catat['qty'];?></td>
                          <td ><?php echo rupiah2($catat['netto_beli_barang']);?></td>                          
                        </tr>
                    <?php }?>
                        <tr><td colspan="4" align="right">Total</td><td><?php echo rupiah2($jml);?></td></tr>
                        <!--<tr><td colspan="4" align="right">PPN</td><td>0</td></tr>
                        <tr><td colspan="4" align="right">Total</td><td><?php //echo rupiah2($jml);?></td></tr>-->
                   
                </tfoot>
              </table>
                          
                      </div>
                       
                
                       <div class="form-group">
                      <div class="modal-footer">
                      <div class="but"><a href="po/po_cetak.php?idpo=<?php echo $idpo;?>" target="blank"><button type="button" class="btn btn-primary" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class="btn btn-primary" name="close" onclick="$('#ModalrekapkwitansiPrint').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
               </div>
           </div>
           </div>      
           

