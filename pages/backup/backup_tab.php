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
    Backup Database
    </div>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>        
        <li class="active">Backup Database</li>
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
                <?php
      error_reporting(0);
      //date_default_timezone_set("ASIA/JAKARTA");
      function backup_tables($host,$user,$pass,$name,$nama_file,$tables = '*')
      {
        //untuk koneksi database
        $link = mysql_connect($host,$user,$pass);
        mysql_select_db($name,$link);
        
        if($tables == '*')
        {
          $tables = array();
          $result = mysql_query('SHOW TABLES');
          while($row = mysql_fetch_row($result))
          {
            $tables[] = $row[0];
          }
        }else{
          //jika hanya table-table tertentu
          $tables = is_array($tables) ? $tables : explode(',',$tables);
        }
        
        //looping dulu ah
        foreach($tables as $table)
        {
          $result = mysql_query('SELECT * FROM '.$table);
          $num_fields = mysql_num_fields($result);
          
          //menyisipkan query drop table untuk nanti hapus table yang lama
          $return.= 'DROP TABLE '.$table.';';
          $row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
          $return.= "\n\n".$row2[1].";\n\n";
          
          for ($i = 0; $i < $num_fields; $i++) 
          {
            while($row = mysql_fetch_row($result))
            {
              //menyisipkan query Insert. untuk nanti memasukan data yang lama ketable yang baru dibuat. so toy mode : ON
              $return.= 'INSERT INTO '.$table.' VALUES(';
              for($j=0; $j<$num_fields; $j++) 
              {
                //akan menelusuri setiap baris query didalam
                $row[$j] = addslashes($row[$j]);
                $row[$j] = ereg_replace("\n","\\n",$row[$j]);
                if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
                if ($j<($num_fields-1)) { $return.= ','; }
              }
              $return.= ");\n";
            }
          }
          $return.="\n\n\n";
        }
        
        //simpan file di folder yang anda tentukan sendiri. kalo saya sech folder "DATA"
        //$nama_file;
        $d= date("d-m-Y-h-i-s");
        //echo $d;
        $handle = fopen('../file/backup/alkesdb-'.$d.'.sql','w+');
        //$handle = fopen('./file/tmp/'.$nama_file,'w+');
        fwrite($handle,$return);
        fclose($handle);
      }
      $d= date("d-m-Y-h-i-s");
      $file='../file/backup/alkesdb-'.$d.'.sql';
      //panggil fungsi dengan memberi parameter untuk koneksi dan nama file untuk backup
      $a = backup_tables("localhost:3356","root","","alkesdb",$file);
      //exit;
      ?>
            <p align="center"><a style="cursor:pointer" onclick="location.href='<?php echo $file?>'" title="Download">Download file database</a></p>
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
      