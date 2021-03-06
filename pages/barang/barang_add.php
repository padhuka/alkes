<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Tambah Data barang</h4>
                    </div>
				            
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formBarang">
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kodebarang">Kode Barang</label>
                          </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_barang" name="id_barang" required>
                          </div>
                        </div>
				                <div class="form-group">
                          <div class="col-sm-3">
                            <label for="namabarang">Nama</label>
                          </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="nama" name="nama" required>
				                  </div>
				                </div>
                        
                          <div class="form-group">
                          <div class="col-sm-3">
                            <label for="satuan">Satuan</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="satuan" name="satuan" readonly>
                            <input type="text" class="form-control" id="satuannm" name="satuannm" readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectsatuan();">Pilih</button>
                        </div>

                          <div class="form-group">
                          <div class="col-sm-3">
                            <label for="group">Group</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="group" name="group" readonly>
                            <input type="group" class="form-control" id="groupnm" name="groupnm" readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectgroup();">Pilih</button>
                        </div>


                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargapokokbarang">Harga Pokok</label>
                        </div>
                          <div class="col-sm-8">
                         <input type="text" class="form-control" id="hargapokok" name="hargapokok" required>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="hargajualbarang">Harga Jual</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="hargajual" name="hargajual" required>
				                  </div>
				                </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="diskon">Diskon</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="diskon" name="diskon" required>
                          </div>
                        </div>
                            <div class="form-group">
                            <div class="col-sm-3">
                          <label for="ppn">PPN</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="ppn" name="ppn" required>
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
<?php include_once 'barang_satuan_tab.php';?>
<?php include_once 'barang_group_tab.php';?>

<script type="text/javascript">
  function selectsatuan(){  
    $("#ModalSatuan").modal({backdrop: 'static',keyboard: false});   
  }
  function selectgroup(){  
    $("#ModalGroup").modal({backdrop: 'static',keyboard: false});   
  }
	$(document).ready(function (){

                      $("#formBarang").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'barang/barang_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                        //alert(hsl);
                                                        //return false;
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                              }else{

			                                                $("#tablebarang").load('barang/barang_load.php');
                                                                      $('.modal-body').css('opasatuan', '');

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