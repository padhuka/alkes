     <div id="ModalSupplier" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content" >
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Supplier <button type="button" class="close" aria-label="Close" onclick="$('#ModalSupplier').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                 <table id="tableSup" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>ID</th>
                          <th>Nama</th> 
                          <th>Alamat</th>
                 
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_supplier ORDER BY id_supplier ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_supplier'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['alamat'];?></td>                   
                          <td>
                                        <button type="button" class="btn btn btn-default btn-circle" onclick="selectSupp('<?php echo $catat['id_supplier'];?>','<?php echo $catat['nama'];?>');">Pilih</button>
                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              </div>
              </div>
              </div>
              </div>
              </div> 
                <script type="text/javascript">
                $('#tableSup').DataTable();
               function selectSupp(a,b){
                              $("#supplier").val(a);
                              $("#suppliernm").val(b);
                              $("#ModalSupplier").modal('hide');
                             
                      }; 
              </script>

  <style type="text/css">
  .modal-open .modal {
    overflow-y: hidden;

  }
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
     height: auto;
     width: auto;
  }
  .row {
    margin-left: 0px;
    margin-right: 0px;
    margin-top:10px;
  }
  .modal-title {
    margin:0;
    padding-top: 5px;padding-bottom: 5px;
  }
 
</style>

