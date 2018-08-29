<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    
   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Tambah Rekap Kwitansi <button type="button" class="close" aria-label="Close" onclick="$('#ModalAdd').modal('hide');"><span>&times;</span></button></h4>  
                    </div>
        
                    <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formrekapkwitansi">

                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="keterangan">Keterangan</label>
                          </div>
                          <div class="col-sm-7">
                            <textarea id="keterangan" name="keterangan" class="form-control"></textarea>
                            
                          </div>
                          
                        </div>
                         
                        <div class="form-group">
                           <div class="modal-footer">
                          <div class="col-sm-8">
                            <button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                   <button type="button" class="btn btn-primary" onclick="$('#ModalAdd').modal('hide');">&nbsp;Batal&nbsp;</button>
                          </div>
                        </div>
                        </div>

                    </form>
            
        </div>
</div>

<script type="text/javascript">
  
  $(document).ready(function (){

                      $("#formrekapkwitansi").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)  
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'rekapkwitansi/rekapkwitansi_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){                                                        
                                                        $('.modal-body').css('opacity', '');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide'); 
                                                              var hsl=data.trim();     
                                                            $("#tablerekapkwitansi").load('rekapkwitansi/rekapkwitansi_load.php');
                                                             $.ajax({
                                                                url: "rekapkwitansi/rekapkwitansi_detail.php?idrk="+hsl,
                                                                type: "GET",
                                                                  success: function (ajaxData){
                                                                    $("#ModalRKDetail").html(ajaxData);
                                                                    $("#ModalRKDetail").modal({backdrop: 'static', keyboard:false});
                                                                  }
                                                                }); 

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
  .modal-content {
    /*height: auto;
     width: 700px;*/
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
  }
</style>