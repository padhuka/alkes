<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';

    $idrk=$_GET['idrk'];
    echo $idrk;
    $sqlpo = "SELECT  * FROM t_rekapkwitansi 
                WHERE id_rekapkwitansi='$idrk'";
    $hes = mysql_fetch_array(mysql_query($sqlpo));
   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Rekap Kwitansi<button type="button" class="close" aria-label="Close" onclick="$('#ModalRKDetail').modal('hide');"><span>&times;</span></button></h4>   
                    </div>
                    
                    <div class="modal-body">

                   <div class="row">
                     <div class="col-sm-12">
                        <table id="rekapkwitansi" class="table table-condensed table-bordered table-striped table-hover">
                          <td>
                         <th class="col-sm-6">
                        
                        <tr> <th>Keterangan</th> <td ><?php echo $hes['keterangan'];?></td></tr>
                        </th>
                       </td>
                        </table>

                     </div>
                   </div>
                    <hr>
                                           
                  </div>                  
                <div id="tablerkdetail"></div>                
                <div class="form-group">
                           <div class="modal-footer">
                                <div class="but">
                                    <button type="button" class="btn btn-primary" name="part" onclick="selectkwitansi('<?php echo $idrk;?>');">&nbsp;Kwitansi&nbsp;</button>
                                </div>
                            </div>
                </div> 
                <div class="form-group">
                           <div class="modal-footer">
                                <div class="but">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">&nbsp;Simpan&nbsp;</button>
                                </div>
                            </div>
                </div>   
                <br>
        </div>
</div>
        <div id="ModalSelectKwitansi" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 var idrk='<?php echo $idrk;?>';
                 $("#tablerkdetail").load('rekapkwitansi/rekapkwitansi_detail_tab.php?idrk='+idrk);
            });

           
            function selectkwitansi(y){
              $.ajax({
                    url: "rekapkwitansi/kwitansi_tab.php?idrk="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalSelectKwitansi").html(ajaxData);
                        $("#ModalSelectKwitansi").modal('show',{backdrop: 'true'});
                      }
                    });
              }
        </script>

<style type="text/css">
.modal-open .modal {
    overflow-y: scroll;
   /* overflow-x: scroll;
*/
  }
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
    height: 600px;
  }
  .but {
    text-align: center;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
    width: 750px;
  }
</style>