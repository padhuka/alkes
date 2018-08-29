<div id="Modalmayor" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     
        <div class="modal-dialog">          
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Mayor <button type="button" class="close" aria-label="Close" onclick="$('#Modalmayor').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="mayor1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Mayor</th>
                          <th>Nama</th>
                          <th>Divisi</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php 
                                    $j=1;
                                    $sqlcatat = "SELECT *, A.nama AS nmmayor, B.nama AS nmdivisi  FROM t_mayor A
                                    LEFT JOIN t_divisi B ON  A.fk_divisi=B.id_divisi
                                    ORDER BY id_mayor ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_mayor'];?></td>
                          <td ><?php echo $catat['nmmayor'];?></td>
                          <td ><?php echo $catat['nmdivisi'];?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" onclick="pilihmayor('<?php echo $catat['id_mayor'];?>','<?php echo $catat['nmmayor'];?>','<?php echo $catat['nmdivisi'];?>');">Pilih</button>

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
                $('#mayor1').DataTable();
                function pilihmayor(x,y,z){
                              $("#mayor").val(x);
                              $("#mayornm").val(y);
                              $("#divisinm").val(z);
                              $("#Modalmayor").modal('hide');
                           
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

