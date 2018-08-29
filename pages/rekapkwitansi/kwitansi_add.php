<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idrk=$_GET['idrk'];
   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Tambah Purchase Order  <button type="button" class="close" aria-label="Close" onclick="$('#ModalAddKwitansi').modal('hide');"><span>&times;</span></button></h4>  
                    </div>
				          
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multikwitansi/form-data" novalidate id="formkwitansi">
                       
				                <div class="form-group">
                          <div class="col-sm-3">
                            <label for="nokwitansi">No Kwitansi</label>
                          </div>
				                  <div class="col-sm-6">
                            <input type="hidden" class="form-control" id="kwitansi" name="kwitansi" required>
				                    <input type="text" class="form-control" id="nokwitansi" name="nokwitansi" readonly required>
				                  </div><button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihkwitansi();">Pilih</button>
				                </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="delivery">No DO</label>
                        </div>
                          <div class="col-sm-8">
                         <input type="text" class="form-control" id="nodo" name="nodo" required>
                          </div>
                        </div>
				                
				                <div class="form-group">
                           <div class="modal-footer">
				                  <div class="col-sm-8">
                            <input type="hidden" class="form-control" id="idrk" name="idrk" value="<?php echo $idrk?>" required>
				                    <button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" onclick="$('#ModalAddKwitansi').modal('hide');">&nbsp;Batal&nbsp;</button>
				                  </div>
                        </div>
				                </div>

				            </form>
				          </div>
				</div>
</div>
<?php include_once 'kwitansi_pilih.php';?>

<script type="text/javascript">
  function pilihkwitansi(){ 
    $("#ModalPilihKwitansi").modal({backdrop: 'static', keyboard:false});   
  }
	$(document).ready(function (){
                      $("#formkwitansi").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'rekapkwitansi/kwitansi_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl=data.trim();
                                                      //alert(hsl);
                                                      //alert('po/po_detail_tab.php?idrk=<?php //echo $idrk;?>');
                                                      $("#tablerekapkwitansi").load('rekapkwitansi/rekapkwitansi_load.php');
			                                                $("#tablekwitansi").load('rekapkwitansi/kwitansi_load.php?idrk=<?php echo $idrk;?>');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAddKwitansi').modal('hide');
                                                            $("#kwitansidetail").load('rekapkwitansi/rekapkwitansi_detail_tab.php?idrk=<?php echo $idrk;?>');
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
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
  }
</style>