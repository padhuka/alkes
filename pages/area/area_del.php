<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_area = $_GET['id_area'];
    $sqlarea = "SELECT * FROM t_area WHERE id_area='$id_area'";
    $areaar = mysql_query( $sqlarea );
    $emp = mysql_fetch_array( $areaar );
?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_area="true">&times;</span></button>
                        <h4 class="modal-title" id_area="myModalLabel">Hapus Data Area</h4>
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-6">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="id_area" name="id_area" value="<?php echo $id_area;?>">
                                            <button type="button" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_area="true">&nbsp;Batal&nbsp;</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                            var id_area = $('#id_area').val();
                           $.ajax({
                                url: 'area/area_del_save.php?id_area='+id_area,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$id_area='+$id_area);
                                      $("#tablearea").load('area/area_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 