<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['idkwitansior'];
    $sqlemp = "SELECT * FROM t_kwitansi_or WHERE no_kwitansi_or='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Batal Kwitansi OR <button type="button" class="close" aria-label="Close" onclick="$('#ModalDelete').modal('hide');"><span>&times;</span></button></h4> 
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-12">
                                   <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formkwitansior">
                                        <div class="alert alert-danger">Apakah anda yakin ingin membatalkan No Kwitansi ( <?php echo $id;?>) ?</div>
                                    <div class="form-group">
                                      <div class="col-sm-4">
                                        <label for="keteranganbatal"> Keterangan Batal</label>
                                      </div>
                                      <div class="col-sm-8">
                                        <input type="text" class="form-control" id="keteranganbatal" name="keteranganbatal" required>
                                      </div>
                                    </div>
                                        <div class="row">
                                         <div class="col-sm-12">
                                        
                                        <div>
                                         <div class="modal-footer">

                                             <div class="but">


                                        <input type="hidden" id="id" name="id" value="<?php echo $id;?>">
                                        <button type="button" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                        <button type="button" class="btn btn-primary" onclick="$('#ModalDelete').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                        </div>
                                    </div>
                                        </div>
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
                           var keteranganbatal = $('#keteranganbatal').val();
                           $.ajax({
                                url: 'kwitansior/kwitansior_del_save.php?idkwitansior=<?php echo $id;?>&keteranganbatal='+keteranganbatal,
                                type: 'GET',
                                success: function (response){
                                  //alert($)
                                      //alert('panel/panel_del_save.php?id_panel='+id_panel);
                                     $("#kwitansior").load('kwitansior/kwitansior_load.php');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Dibatalkan');
                                      $('#ModalDelete').modal('hide');
                                  }
                            });

                    });
                });
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