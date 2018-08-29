<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Group</h4>
                    </div>
                    <!--<div class="box-header with-border">
                      <h3 class="box-title">Horizontal Form</h3>
                    </div>
                     /.box-header -->
                    <!-- form start -->
                    <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="fupForm">
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kodegroup">Kode group</label>
                          </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_group" name="id_group" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="namagroup">Nama</label>
                          </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="nama" name="nama" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Minor</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="minor" name="minor" readonly>
                            <input type="text" class="form-control" id="minornm" name="minornm" readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectminor();">Pilih</button>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Mayor</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" id="mayornm" name="mayornm" readonly>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Divisi</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="text" class="form-control" id="divisinm" name="divisinm" readonly>
                          </div>
                        </div>
                        <div class="form-group">
                           <div class="modal-footer">
                          <div class="col-sm-8">
                            <button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button>
                          </div>
                        </div>
                        </div>

                    </form>
                  </div>
        </div>
</div>
<?php include_once 'group_minor_tab.php';?>

<script type="text/javascript">
 function selectminor(){
    $("#Modalminor").modal({backdrop: 'static',keyboard: false});
  }
 
  $(document).ready(function (){

                      $("#fupForm").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'group/group_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        var hsl=data.trim();
                                                        if (hsl=='y'){
                                                      alert('Data Sudah ada');
                                                      return false;
                                                      exit();
                                                    }else{

                                                      $("#tablegroup").load('group/group_load.php');
                                                      $('.modal-body').css('opagroup', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide');
                                                  }
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