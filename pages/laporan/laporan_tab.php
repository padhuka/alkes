  <?php
          include_once '../lib/config.php';
          ?>
          <script src="../bower_components/jquery/dist/jquery.min.js"></script>
          <script src="../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
  <!-- Left side column. contains the logo and sidebar -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="title-header">
    Report
    </div>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>        
        <li class="active">Data Report</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!--<div class="box-header">
              <h3 class="box-title"></h3>
            </div>
             /.box-header -->
            <div class="box-body">
              <div id="tablepanel">
                <table width="100%" border="1">
                    <tr align="center" style="font-weight: bold; font-size: 16px;">
                        <td>Report</td><td>Field</td><td></td>
                    </tr>
                    <tr>
                        <td width="30%" >&nbsp;<label style="font-size: 16px;">Piutang</label></td><td>
                              <table border="0"><tr><td>Periode :</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglpiutang1" name="tglpiutang1" required value="<?php echo $harinow;?>">
                            </div></td><td>-</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglpiutang2" name="tglpiutang2" required value="<?php echo $harinow;?>">
                            </div> </td></tr></table>
                            </td><td align="center" style="font-weight: bold; font-size: 14px;"><span style="cursor: pointer;" onclick="eksporpiutang()">Generate</span></strong></span></td>
                    </tr>
                    <tr>
                        <td width="30%" >&nbsp;<label style="font-size: 16px;">Pembayaran Cash</label></td><td>
                              <table border="0"><tr><td>Periode :</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglcash1" name="tglcash1" required value="<?php echo $harinow;?>">
                            </div></td><td>-</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglcash2" name="tglcash2" required value="<?php echo $harinow;?>">
                            </div> </td></tr></table>
                            </td><td align="center" style="font-weight: bold; font-size: 14px;"><span style="cursor: pointer;" onclick="eksporcash()">Generate</span></strong></span></td>

                            
                    </tr>
                    <tr>

                            <td width="30%" >&nbsp;<label style="font-size: 16px;">Pembayaran Bank</label></td><td>
                              <table border="0"><tr><td>Periode :</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglbank1" name="tglbank1" required value="<?php echo $harinow;?>">
                            </div></td><td>-</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglbank2" name="tglbank2" required value="<?php echo $harinow;?>">
                            </div> </td></tr></table>
                            </td><td align="center" style="font-weight: bold; font-size: 14px;"><span style="cursor: pointer;" onclick="eksporbank()">Generate</span></strong></span></td>
                    </tr>

                    <tr>

                            <td width="30%" >&nbsp;<label style="font-size: 16px;">Laporan SO</label></td><td>
                              <table border="0"><tr><td>Periode :</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglso1" name="tglso1" required value="<?php echo $harinow;?>">
                            </div></td><td>-</td><td><div class="input-group date">
                            <div class="input-group date">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              <input type="text" class="form-control pull-right" id="tglso2" name="tglso2" required value="<?php echo $harinow;?>">
                            </div> </td></tr></table>
                            </td><td align="center" style="font-weight: bold; font-size: 14px;"><span style="cursor: pointer;" onclick="eksporso()">Generate</span></strong></span></td>
                    </tr>
                    <tr>
                        <td width="30%" >&nbsp;<label style="font-size: 16px;">Kartu Stock</label></td><td>
                              
                            </td><td align="center" style="font-weight: bold; font-size: 14px;"><span style="cursor: pointer;" onclick="eksporkartustock()">Generate</span></strong></span></td>
                    </tr>
                </table>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <script type="text/javascript">
    $('#tglpiutang1').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglpiutang2').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglcash1').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglcash2').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglbank1').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglbank2').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglpkb1').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglpkb2').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglso1').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    $('#tglso2').datepicker({format: 'yyyy-mm-dd',autoclose: true,});
    function eksporcash(){
      var x =$('#tglcash1').val(); var y= $('#tglcash2').val();
      //alert("laporan/ekspor_cash.php?tgl1="+x+"&tgl2="+y);
      window.location = "laporan/ekspor_cash.php?tgl1="+x+"&tgl2="+y;
    }
    function eksporbank(){
      var x =$('#tglbank1').val(); var y= $('#tglbank2').val();      
      window.location = "laporan/ekspor_bank.php?tgl1="+x+"&tgl2="+y;
    }
    function eksporpiutang(){
      var x =$('#tglpiutang1').val(); var y= $('#tglpiutang2').val();      
      window.location = "laporan/ekspor_piutang.php?tgl1="+x+"&tgl2="+y;
    }
    function eksporso(){
      var x =$('#tglso1').val(); var y= $('#tglso2').val();      
      window.location = "laporan/ekspor_so.php?tgl1="+x+"&tgl2="+y;
    }
      function eksporkartustock(){
     // var x =$('#tglpiutang1').val(); var y= $('#tglpiutang2').val();      
      window.location = "laporan/ekspor_kartustok.php";
    }
  </script>
  <style type="text/css">
.btn {
    font-weight: bold;
    padding-bottom: 0px;
    padding-top: 3px;
    padding-left: 4px;
    padding-right: 4px;
  }
  .title-header {
    font-size: 20px;
    text-align: center;
    font-weight: bold;
    font-family: monospace;
  }
  .modal-title {
    text-align: center;
  }
  </style>
      