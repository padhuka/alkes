
  <!-- Left side column. contains the logo and sidebar -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="title-header">
    Flow Chart
    </div>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Flow Chart Aplikasi</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">

            <div class="box-body" style="padding: 100px">
              
              <tr>
              <td width="20"></td>
              <td valign="top">
                <table id="flowchart" align="center">
                        <tbody>
                          <tr>
                            <td onclick="location='#'" colspan="2">
                                <div><!--bercabang, set sendiri left nya -->
                                    <div class="bawah" style="top:40px"><img style="height:25px" src="../file/panahbawah.png">
                                    </div>Kartu Pelanggan
                                 </div>
                            </td>
                           </tr>
                          <tr>                  
                            <td colspan="2" onclick="location='#'">
                                <div>                         
                                    <div class="bawah" style="top:40px"><img style="height:25px" src="../file/panahbawah.png"></div>
                                Sales Order
                              </div>
                           </td>
                          </tr>

                        <tr>                 
                        <td colspan="2" onclick="location='#'" rowspan="3">
                              <div>
                                  <div class="kanan" style="left:110px"><img style="height:25px" src="../file/panahkanan.png"></div>
                                  Delivery Order  
                                </div>          
                              </td>       
                        </tr>

                        <tr>             
                          </td>                  
                         </tr>
              <tr>
                  <td colspan="2" onclick="location='#'">
                      <div>
                         <div class="kanan" style="left: 110px"><img style="height:25px;padding-left:5px" src="../file/panahkanan.png"></div>
              Cetak Kwitansi
            </div>
          </td>

            
          
                    <td>
                      <table height="100%" cellspacing="0" cellpadding="0">
                          <tbody><tr>
                              <td onclick="location='#'">Cash</td>
                              <td onclick="location='#'">Bank</td>
                            </tr>
                        </tbody></table>
          </td>
                </tr>
            </tbody></table>
    </td>
    <td width="20"></td>
  </tr>


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
       
<style type="text/css">
  .box {
    background: #ecf0f5;
  }
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
  #flowchart td:not(:empty){
  font-size:12px;
  letter-spacing:1px;
  border:inset;
  width:220px;
  height:80px;
  text-align:center;
  padding:5px;
  cursor:pointer;
  background-color:#CCC;
}

#flowchart td:hover:not(:empty){
  background-color:#AAA;
}

#flowchart td table tr td:not(:empty){
  background-color:#CCC;
  border:none;
  height:0px;
}

#flowchart td table tr td:hover:not(:empty){
  background-color:#EEE;
}

#flowchart td.no-access:hover:not(:empty){
  background-color:#FF5333;
  cursor:default;
}

#flowchart td div {
  position:relative;
}

#flowchart td div div.bawah{ /* tanda panah :not(:empty)*/
  position:relative;
  height:0px;
  top:28px;
}

#flowchart td div div.kanan{ /* tanda panah :not(:empty)*/
  position:relative;
  height:0px;
  left:68px;
  top:-3px
}

#flowchart td div div.atas{ /* tanda panah :not(:empty)*/
  position:relative;
  height:0px;
  top: -21px;
}

#flowchart td div div.kiri{ /* tanda panah :not(:empty)*/
  position:relative;
  height:0px;
  left:-56px;
}
</style>