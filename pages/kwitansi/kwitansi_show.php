<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idkwitansi= $_GET['idkwitansi'];
 //   $sqlpan= "SELECT * FROM t_delivery_order WHERE id_delivery_order='$idkwitansi'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
<div class="modal-dialog">
           <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Delivery Order <button type="button" class="close" aria-label="Close" onclick="$('#ModalShowKw').modal('hide');"><span>&times;</span></button></h4>                    
                    </div>
                  <?php
                                    $j=1;
                                    $sqlcatat = "SELECT k.*,p.id_delivery_order,c.nama FROM t_kwitansi k 
                                      INNER JOIN t_delivery_order p ON k.fk_delivery_order=p.id_delivery_order 
                                      INNER JOIN t_customer c ON p.fk_customer=c.id_customer
                                      WHERE k.no_kwitansi='$idkwitansi'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat )
                                ?>
                    <div class="modal-body">
                      <div class="modal-title-detail">Kwitansi</div>
                      <div class="row">
                       <div class="col-sm-6">
                       <table id="estimasishow" class="table table-condensed table-bordered table-striped table-hover">
                       <td>
                         <th class="col-sm-6">
                        <tr> <th>No Kwitansi</th> <td ><?php echo $catat['no_kwitansi'];?></td></tr>
                        <tr> <th>Tgl</th> <td ><?php echo date('d-m-Y' , strtotime($catat['tgl_kwitansi']));?></td></tr>
                        <tr> <th>Nama Customer </th>  <td ><?php echo $catat['nama'];?></td></tr>
                        </th>
                       </td>
                      </table>
                           </div>                            

                      </div>

                       <div class="modal-title-detail">NILAI KWITANSI</div>
                      <div class="row">
                       <div class="col-sm-12">
                       <table id="estimasishow" class="table table-condensed table-bordered table-striped table-hover">
                       <td >
                         <th class="col-sm-2">
                         
                        <tr class="total"> 
                          <th>Total Gross</th>
                          <th>Total Diskon</th>
                          <th>Total Netto</th>
                        </tr>
                        <tr>
                            <td><?php echo rupiah2($catat['total_gross_barang']);?></td>
                             <td><?php echo rupiah2($catat['total_diskon_barang']);?></td>
                              <td><?php echo rupiah2($catat['total_netto_barang']);?></td>
                        </tr>

                        </th>
                       </td>
                      </table>
                           </div>
                      </div>

                                          
                       <div class="form-group">
                      <div class="modal-footer">
                      <div class="but">
                        <button type="button" class="btn btn-primary" name="close" onclick="barangshow('<?php echo $catat['fk_delivery_order']?>');">Barang</button><p></p>
                                    <button type="button" class="btn btn-primary" name="close" onclick="$('#ModalShowKw').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
               </div>
           </div>
           </div>      
           <div id="ModalBarangShow2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<script type="text/javascript">
   
            function barangshow(y){
              $.ajax({
                    url: "kwitansi/barang_show_tab.php?iddone="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalBarangShow2").html(ajaxData);
                        $("#ModalBarangShow2").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }
              

  
</script>        

<style type="text/css">
  .modal-footer {
    padding-top: 10px;
    padding-bottom: 0px;
    padding-left: 0px;
    padding-right: 0px;
  }
  .modal-title {
    font-style: italic;
    background-color: lightcoral;
    text-align: center;
    font-weight: bold;
  }
  .total {
  font-weight: bold;border-top:   inset;
  }
    .but {
    text-align: center;
  }
  .modal-title-detail {
    font-style: italic;
    background-color: lightblue;
    text-align: center;
    font-weight: bold;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
    width: 800px;
  }
</style>