<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idpop=$_GET['idpo'];
    $id=$_GET['id'];
    echo $id;

    $sqlpan= "SELECT * FROM t_pembelian_detail WHERE id='$id'";
    $hslpan= mysql_fetch_array(mysql_query($sqlpan));
  // $diskones=100/($hslpan['gross_beli_barang']/$hslpan['diskon_beli_barang']);

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
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formBarangEdit">
                       
                       <div class="form-group">
                          <div class="col-sm-3">
                            <label for="namabarang">Nama</label>
                          </div>
                          <div class="col-sm-6">
                            <input type="hidden" class="form-control" id="barangE" name="barangE" value="<?php echo $hslpan['fk_barang'];?>" required>
                            <input type="text" class="form-control" id="barangnmE" name="barangnmE" value="<?php echo $hnm['nama'];?>" readonly required>
                          </div><button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihbarangE();">Pilih</button>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargapokokbarang">Harga</label>
                        </div>
                          <div class="col-sm-8">
                         <input type="text" class="form-control" id="hargapokokE" name="hargapokokE" value="<?php echo $hslpan['gross_beli_barang'];?>" required  onchange="kalipE();">

                        </div>
                      </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargajualbarang">Diskon</label>
                        </div>
                          <div class="col-sm-3">
                            <input type="text" class="form-control" id="diskonE" name="diskonE" value="<?php echo $hslpan['diskon_barang'];?>" required onchange="kalipE();">
                              </div>%

                        </div>

                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargabelibarang">Qty</label>
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
                            <input type="text" class="form-control" id="hargatotalE" name="hargatotalE" value="<?php echo $hslpan['netto_beli_barang'];?>" required readonly>
                          </div>
                        </div>
                        
                        <div class="form-group">
                           <div class="modal-footer">
                          <div class="col-sm-8">
                            <input type="hidden" class="form-control" id="idE" name="idE" value="<?php echo $id;?>" required>
                            <input type="hidden" class="form-control" id="idpop" name="idpop" value="<?php echo $idpop;?>" required>
                            <button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" onclick="$('#ModalEditBarang').modal('hide');">&nbsp;Batal&nbsp;</button>
                          </div>
                        </div>
                        </div>

                    </form>
                  </div>
        </div>
</div>
<?php include_once 'barang_pilih_edit.php';?>
<script type="text/javascript">
  function pilihbarangE(){ 
    $("#ModalPilihBarangEdit").modal({backdrop: 'static', keyboard:false});   
    //alert('milih');
  }
 
  function kalipE(){
     var hasil= ($("#hargapokokE").val()-($("#diskonE").val()*$("#hargapokokE").val()/100))*$("#qtyE").val();
    $("#hargatotalE").val(hasil);
  }
  $(document).ready(function (){

                      $("#formBarangEdit").on('submit', function(e){
                          e.preventDefault();
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'po/barang_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl = data.trim();
                                                      //alert(hsl);
                                                      $("#pobarang").load('po/barang_load.php?idpo=<?php echo $idpop;?>');
                                                      $("#tablepo").load('po/po_load.php');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditBarang').modal('hide');
                                                      $("#tablepodetail").load('po/po_detail_tab.php?idpo=<?php echo $idpop;?>');
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