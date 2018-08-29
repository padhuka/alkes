<div id="Modalminor" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">          
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Minor <button type="button" class="close" aria-label="Close" onclick="$('#Modalminor').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="minor1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Minor</th>
                          <th>Nama</th>
                          <th>Mayor</th>
                          <th>Divisi</th>
                          <th></th>
                </tr>
                </thead>
                <tbody><?php
                                     $j=1;
                                    $sqlcatat = "SELECT *, A.nama AS nmminor, B.nama AS nmmayor, C.nama AS nmdivisi  FROM t_minor A
                                    LEFT JOIN t_mayor B ON  A.fk_mayor=B.id_mayor
                                    LEFT JOIN t_divisi C ON  B.fk_divisi=C.id_divisi
                                    ORDER BY id_minor ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_minor'];?></td>
                          <td ><?php echo $catat['nmminor'];?></td>
                          <td ><?php echo $catat['nmmayor'];?></td>
                          <td ><?php echo $catat['nmdivisi'];?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" onclick="pilihminor('<?php echo $catat['id_minor'];?>','<?php echo $catat['nmminor'];?>','<?php echo $catat['nmmayor'];?>','<?php echo $catat['nmdivisi'];?>');">Pilih</button>

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
                $('#minor1').DataTable();
                function pilihminor(x,y,z,a){
                              $("#minor").val(x);
                              $("#minornm").val(y);
                              $("#mayornm").val(z);
                              $("#divisinm").val(a);
                              $("#Modalminor").modal('hide');
                           
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

