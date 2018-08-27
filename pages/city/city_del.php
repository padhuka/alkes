<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_city = $_GET['id_city'];
    $sqlcity = "SELECT * FROM t_city WHERE id_city='$id_city'";
    $cityar = mysql_query( $sqlcity );
    $emp = mysql_fetch_array( $cityar );
?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_city="true">&times;</span></button>
                        <h4 class="modal-title" id_city="myModalLabel">Hapus Data Kota</h4>
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-6">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="id_city" name="id_city" value="<?php echo $id_city;?>">
                                            <button type="button" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_city="true">&nbsp;Batal&nbsp;</button>
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
                            var id_city = $('#id_city').val();
                           $.ajax({
                                url: 'city/city_del_save.php?id_city='+id_city,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$id_city='+$id_city);
                                      $("#tablecity").load('city/city_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 