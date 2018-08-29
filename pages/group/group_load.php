      <?php
            include_once '../../lib/config.php';
      ?>
      <table id="group1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Group</th>
                          <th>Nama</th>
                          <th>Minor</th>
                          <th>Mayor</th>
                          <th>Divisi</th>
                          <th><button type="button" class="btn btn btn-default btn-circle open_add" ><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT A.*, B.nama AS nmminor, C.nama AS nmmayor, d.nama AS nmdivisi FROM t_group A
                                    LEFT JOIN t_minor B ON A.fk_minor=B.id_minor
                                    LEFT JOIN t_mayor C ON B.fk_mayor=C.id_mayor
                                    LEFT JOIN t_divisi D ON C.fk_divisi=D.id_divisi
                                    ORDER BY id_group ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_group'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['nmminor'];?></td>
                          <td ><?php echo $catat['nmmayor'];?></td>
                          <td ><?php echo $catat['nmdivisi'];?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_group']; ?>" onclick="open_modal(ideditgroup='<?php echo $catat['id_group']; ?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_group']; ?>" onclick="open_del(iddelgroup='<?php echo $catat['id_group']; ?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#group1').DataTable();
            $(".open_add").click(function (e){
                    $.ajax({
                    url: "group/group_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
            });
           function open_del(){
                                $.ajax({
                                    url: "group/group_del.php?id_group="+iddelgroup,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(){
                              $.ajax({
                                  url: "group/group_edit.php?id_group="+ideditgroup,

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