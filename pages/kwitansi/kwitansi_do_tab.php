    <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="ModalDo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Delivery Orderx <button type="button" class="close" aria-label="Close" onclick="$('#ModalDo').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="pkbwitansi" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No DO</th>
                          <th>Tgl DO</th>
                          <th>Customer</th>                          
                          <th>Total DO</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                  $j=1;
                                    $sqlcatat = "SELECT  * FROM t_delivery_order p 
                                    LEFT JOIN t_customer c on p.fk_customer=c.id_customer
                                    WHERE tgl_batal='0000-00-00 00:00:00' ORDER BY id_delivery_order DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_delivery_order']; ?>" onclick="open_do(iddo='<?php echo $catat['id_delivery_order']; ?>');"><span><?php echo ($catat['id_delivery_order']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y',strtotime($catat['tgl']));?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['total_netto_jual_barang']);?></td>
                          <td >
                                       
                                       <button type="button" class="btn btn btn-default btn-circle" onclick="selectDon('<?php echo date('d-m-Y' , strtotime($catat['tgl']));?>','<?php echo $catat['nama'];?>','<?php echo $catat['no_telp'];?>','<?php echo ($catat['id_delivery_order']);?>','<?php echo rupiah2($catat['total_gross_jual_barang']);?>','<?php echo rupiah2($catat['total_diskon_jual_barang']);?>','<?php echo rupiah2($catat['total_netto_jual_barang']);?>');">Pilih</button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script type="text/javascript">
                $('#pkbwitansi').DataTable();

               function selectDon(a,b,c,d,e,f,g){
                              $("#tgl").html(a);
                              $("#nama").html(b);
                              $("#telp").html(c);
                              //---
                              $("#grosstotal").html(e);
                              $("#diskontotal").html(f);
                              $("#nettototal").html(g);
                              //-----
                              $("#iddo").val(d);
                              $("#ModalDo").modal('hide');
                              
                      }; 

              function open_do(z){
                              $.ajax({
                                  url: "do/do_show.php?iddo="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
              </script>

  <style type="text/css">
  .modal-header {
    padding-top: 15px;padding-bottom: 15px;
  }
  .title-header {
    font-size: 20px;
    text-align: center;
    font-weight: bold;
    font-family: monospace;
  }
  .modal-content {
    height: 650px;
  }
  .row {
    margin-left: 0px;
    margin-right: 0px;
    margin-top:10px;
  }
  .modal-title {
    padding-top: 5px;padding-bottom: 5px;
  }
</style>

