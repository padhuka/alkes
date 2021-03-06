<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Mayor</h4>
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
                            <label for="kodemayor">Kode Mayor</label>
                          </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_mayor" name="id_mayor" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="namamayor">Nama</label>
                          </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="nama" name="nama" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Divisi</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="divisi" name="divisi" readonly>
                            <input type="text" class="form-control" id="divisinm" name="divisinm" readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectdivisi();">Pilih</button>
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
<?php include_once 'mayor_divisi_tab.php';?>

<script type="text/javascript">
 function selectdivisi(){  
    $("#Modaldivisi").modal({backdrop: 'static',keyboard: false});   
  }
  $(document).ready(function (){

                      $("#fupForm").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'mayor/mayor_add_save.php',
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

                                                      $("#tablemayor").load('mayor/mayor_load.php');
                                                      $('.modal-body').css('opamayor', '');

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