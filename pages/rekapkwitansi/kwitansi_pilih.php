  <?php
            include_once '../../lib/fungsi.php';
           
      ?>
    
    <div id="ModalPilihKwitansi" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Kwitansi <button type="button" class="close" aria-label="Close" onclick="$('#ModalPilihKwitansi').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="pilihkwitansi" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                        
                          <th>No Kwitansi</th>
                          <th>No Do</th>
                          <th>Total Kwitansi</th>
                        
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_kwitansi ORDER BY no_kwitansi ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                        
                          <td><?php echo $catat['no_kwitansi'];?></td>
                          <td><?php echo $catat['fk_delivery_order'];?></td>
                          <td><?php echo rupiah2($catat['total_kwitansi']);?></td>
                     
                          <td>
                                        <button type="button" class="btn btn btn-default btn-circle" onclick="selectkwitansi('<?php echo $catat['no_kwitansi'];?>','<?php echo $catat['fk_delivery_order'];?>');">Pilih</button>

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
                $('#pilihkwitansi').DataTable({
                   "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  },
                   "pageLength": 5,
                });
                function selectkwitansi(a,b){
                              $("#nokwitansi").val(a);
                              $("#nodo").val(b);
                              $("#ModalPilihKwitansi").modal('hide');
                              
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
    height: 556px;
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


