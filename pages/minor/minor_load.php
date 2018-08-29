      <?php
            include_once '../../lib/config.php';
      ?>
      <table id="minor1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Minor</th>
                          <th>Nama</th>
                          <th>Mayor</th>
                          <th>Divisi</th>
                          <th><button type="button" class="btn btn btn-default btn-circle open_add" ><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT A.*, B.nama AS nmmayor, C.nama AS nmdivisi FROM t_minor A
                                    LEFT JOIN t_mayor B ON A.fk_mayor=B.id_mayor
                                    LEFT JOIN t_divisi C ON B.fk_divisi=C.id_divisi
                                    ORDER BY id_minor ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_minor'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['nmmayor'];?></td>
                          <td ><?php echo $catat['nmdivisi'];?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_minor']; ?>" onclick="open_modal(ideditminor='<?php echo $catat['id_minor']; ?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_minor']; ?>" onclick="open_del(iddelminor='<?php echo $catat['id_minor']; ?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#minor1').DataTable();
            $(".open_add").click(function (e){
                    $.ajax({
                    url: "minor/minor_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
            });
           function open_del(){
                                $.ajax({
                                    url: "minor/minor_del.php?id_minor="+iddelminor,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(){
                              $.ajax({
                                  url: "minor/minor_edit.php?id_minor="+ideditminor,

                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
      </script>

<style type="text/css">
  .table {
    border-spacing: 0;
    border-collapse: collapse;
    margin-bottom: 0px;
  }
  .thead-light{
    background-color: lightgrey;
  }
  .btn {
    font-weight: bold;
    padding-bottom: 0px;
    padding-top: 3px;
    padding-left: 4px;
    padding-right: 4px;
  }
</style>