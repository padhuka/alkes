<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $iddo=$_GET['iddo'];
    $id=$_GET['id'];

    $sqlpan= "SELECT * FROM t_delivery_order_detail WHERE id='$id'";
    $hslpan= mysql_fetch_array(mysql_query($sqlpan));
    $diskones=@(100/($hslpan['gross_jual_barang']/$hslpan['diskon_jual_barang']));
    if ($diskones==''){$diskones=0;}

    $snm = "SELECT * FROM t_barang WHERE id_barang='$hslpan[fk_barang]'";
    $hnm = mysql_fetch_array(mysql_query($snm));

   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Edit Data Barang <button type="button" class="close" aria-label="Close" onclick="$('#ModalEditBarang').modal('hide');"><span>&times;</span></button></h4> 
                    </div>
                    <!--<div class="box-header with-border">
                      <h3 class="box-title">Horizontal Form</h3>
                    </div>
                     /.box-header -->
                    <!-- form start -->
                    <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpartEdit">
                       
                       <div class="form-group">
                          <div class="col-sm-3">
                            <label for="namabarang">Nama</label>
                          </div>
                          <div class="col-sm-6">
                            <input type="hidden" class="form-control" id="barangE" name="barangE" value="<?php echo $hslpan['fk_barang'];?>" required>
                            <input type="text" class="form-control" id="barangnmE" name="barangnmE" value="<?php echo $hnm['nama'];?>" readonly required>
                          </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargapokokbarang">Harga</label>
                        </div>
                          <div class="col-sm-8">
                         <input type="text" class="form-control" id="hargapokokE" name="hargapokokE" value="<?php echo $hslpan['gross_jual_barang'];?>" required  onchange="kalipE();">
                          </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargajualbarang">Diskon</label>
                        </div>
                          <div class="col-sm-3">
                            <input type="text" class="form-control" id="diskonE" name="diskonE" value="<?php echo $diskones;?>" required onchange="kalipE();">
                          </div>%
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargajualbarang">Qty</label>
                        </div>
                          <div class="col-sm-3">
                            <input type="text" class="form-control" id="qtyE" name="qtyE" value="<?php echo $hslpan['qty'];?>" required onchange="kalipE();">
                          </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="ppn">Harga Total</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="hargatotalE" name="hargatotalE" value="<?php echo $hslpan['netto_jual_barang'];?>" required readonly>
                          </div>
                        </div>
                        
                        <div class="form-group">
                           <div class="modal-footer">
                          <div class="col-sm-8">
                            <input type="hidden" class="form-control" id="idE" name="idE" value="<?php echo $id;?>" required>
                            <input type="hidden" class="form-control" id="iddoE" name="iddoE" value="<?php echo $iddo;?>" required>
                            <button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" onclick="$('#ModalEditBarang').modal('hide');">&nbsp;Batal&nbsp;</button>
                          </div>
                        </div>
                        </div>

                    </form>
                  </div>
        </div>
</div>
<script type="text/javascript">
  
  function kalipE(){
     var hasil= ($("#hargapokokE").val()-($("#diskonE").val()*$("#hargapokokE").val()/100))*$("#qtyE").val();
    $("#hargatotalE").val(hasil);
  }
  $(document).ready(function (){

                      $("#formpartEdit").on('submit', function(e){
                          e.preventDefault();
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'do/barang_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl = data.trim();
                                                      //alert(hsl);
                                                      $("#dobarang").load('do/barang_load.php?iddo=<?php echo $iddo;?>');
                                                      $("#tabledo").load('do/do_load.php');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditBarang').modal('hide');
                                                      $("#tabledodetail").load('do/do_detail_tab.php?iddo=<?php echo $iddo;?>');
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