 
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                 
            </div>
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Pencapaian Vol Lalin & Beban Ruas
                            </h2>
                            <br>
                            <a href="javascript:void(0);" id="addmodal" class="btn btn-primary waves-effect">  <i class="material-icons">add_circle</i>  Tambah Data </a> &nbsp; &nbsp; Periode : 
                            <select name="period_change" id="period_change" onchange="AmbilData(this.value);">
                                <?php
                                if($selectlist->num_rows() > 0){
                                    foreach ($selectlist->result() as $key => $value) {
                                     
                                        echo '<option value="'.$value->periode.'"> '.$value->periode.' </option>';
                                    }
                                }else{
                                        echo '<option value="-"> Tidak ada data </option>';
                                }
                                 
                                ?>
                                
                            </select>
 
                        </div>
                        <div class="body">

            <div class="row clearfix">
                <!-- Line Chart -->
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Data Gardu Masuk</h2>
                             
                        </div>
                        <div class="body">
                                <div class="table-responsive">
                               <table class="table table-bordered table-striped table-hover js-basic-example center-all" id="list_masuk" >
                                    <thead>
                                     <tr>
                                        <th rowspan="3">No</th>
                                        <th rowspan="3">Gerbang Tol</th>
                                        <th colspan="6">Gardu Masuk</th>
                                        <th rowspan="3">Total</th>
                                        <th rowspan="3">Total Tanpa KTP</th>
                                        <th rowspan="3">LHR dengan KTP</th>
                                        <th rowspan="3">LHR Tanpa KTP</th>
                                      </tr>
                                      <tr>
                                        <td colspan="6"><b>e-Toll</b></td>
                                      </tr>
                                      <tr>
                                        <td>I</td>
                                        <td>II</td>
                                        <td>III</td>
                                        <td>IV</td>
                                        <td>V</td>
                                        <td>O</td>
                                      </tr>
                                    </thead> 
                                     <tfoot>
                                        <tr>
                                            <th colspan="2" style="text-align:right; ">Total:</th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </tfoot>
                                </table> 
                            </div>

                        </div>
                    </div>
                </div>
          
                <!-- #END# Line Chart -->
                <!-- Bar Chart -->
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Chart Gardu Masuk</h2>  
                        </div>
                        <div class="body">
                            <canvas id="bar_chart_masuk" height="150"></canvas>
                        </div>
                    </div>
                </div>
                <!-- #END# Bar Chart -->
            </div>

 
                        
                              
                        </div>
                    </div>
                </div>
            </div>
         


        </div>
    </section>

   
	<!-- form tambah dan ubah data -->
	<div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Form Tambah Data</h4>
                        </div>

                         <div class="modal-body">
                                 <form method="post" name="frmGroupUser" id="frmGroupUser" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="periode" id="periode" class="form-control datepicker-period" placeholder="Periode" />
                                        </div>
                                    </div>
                                        <div class="form-group" >
                                            <label></label>
                                            <input type="file" name="excel_file" id="excel_file" class="form-control" required="true">
                                            <input type="hidden" name="exel_name" id="exel_name">
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" id="myButton" data-loading-text="Loading..." class="btn btn-primary btn-sm">Upload</button>  
                                             <button type="button" name="cancel" id="cancel" class="btn btn-danger btn-sm waves-effect" onclick="javascript:Bersihkan_Form();" data-dismiss="modal">   Batal</button>
                                        </div>
                                      
                                    </form>

 
                       </div>
 
                    </div>
                </div>
    </div>
	  <!-- Chart Plugins Js -->
    <script src="<?php echo base_url(); ?>assets/js/chart.bundle.js"></script>
   
   <script type="text/javascript">
	function AmbilData(data){
        console.log(data);
    }



    $(function () { 
        new Chart(document.getElementById("bar_chart_masuk").getContext("2d"), getChartJsmasuk());
       
    });
    function getChartJsmasuk() {
    var config = null;
   

            config = {
                type: 'bar',
                data: {
                    labels: ["Madiun", "Wilangan", "Kartasura"],
                    datasets: [{
                        label: "My First dataset",
                        data: [15221, 11408, 12555],
                        backgroundColor: 'rgba(0, 188, 212, 0.8)'
                    }]
                },
                options: {
                    responsive: true,
                    legend: false
                }
            }
     
        return config;
    }

     $("#frmGroupUser").on("submit", function(event){
            var $btn = $("#myButton").button('Mohon Tunggu, data sedang di unggah!');
            event.preventDefault();
            var formData = new FormData(this);
         
             $.ajax({
                url : "<?php echo base_url('pencapaian_vol_ban/pro_upload'); ?>", 
                type : "post",
                data : formData,
                cache: false,
                contentType: false,
                processData: false, 
                success: function(e){
                    $btn.button('reset')
                    alert('Data berhasil di upload!');
                    //location.reload();
         
                },
                error: function(e){
                    $btn.button('reset')
                    alert('Data gagal di upload!');
                }
           });
       });
   
     function Empty(){
        $.post("<?php echo base_url('listing_data/drop_content'); ?>",function(data){
            alert('Data telah dikosongkan!');
            $('#example').DataTable().ajax.reload(); 
        });
    }
	 function Bersihkan_Form(){
        $(':input').val(''); 
        $("#image1").attr('src','<?php echo base_url('upload/image_prev.jpg'); ?>');
     }
 

	 $('.datepicker').bootstrapMaterialDatePicker({
        format: 'YYYY-MM-DD',
        clearButton: true,
        weekStart: 1,
        time: false
     });
      $('.datepicker-period').bootstrapMaterialDatePicker({
        format: 'YYYY-MM',
        clearButton: true,
        weekStart: 1,
        time: false
     });

	 
       $(document).ready(function() {
		   
		$("#addmodal").on("click",function(){
			$("#defaultModal").modal({backdrop: 'static', keyboard: false,show:true});
            $("#method").val('Add');
            $("#defaultModalLabel").html("Form Tambah Data");
		});
	 
		
		$('#list_masuk').DataTable( {
			"ajax": "<?php echo base_url(); ?>pencapaian_vol_ban/fetch_lalin",
             "footerCallback": function ( row, data, start, end, display ) {
                var api = this.api(), data;
     
                // Remove the formatting to get integer data for summation
                var intVal = function ( i ) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '')*1 :
                        typeof i === 'number' ?
                            i : 0;
                };
     
                // Total over all pages
                total = api
                    .column(2)
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
     
                // Total over this page
                pageTotalgol1 = api
                    .column(2, { page: 'current'} )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
                pageTotalgol2 = api
                    .column(3, { page: 'current'} )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
                pageTotalgol3 = api
                    .column(4, { page: 'current'} )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
                pageTotalgol4 = api
                    .column(5, { page: 'current'} )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
                pageTotalgol5 = api
                    .column(6, { page: 'current'} )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
                pageTotalgol1to5 = api
                    .column(8, { page: 'current'} )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
     
                // Update footer
                $( api.column(2).footer() ).html(
                    pageTotalgol1
                );
                $( api.column(3).footer() ).html(
                    pageTotalgol2
                );
                $( api.column(4).footer() ).html(
                    pageTotalgol3
                );
                $( api.column(5).footer() ).html(
                    pageTotalgol4
                );
                $( api.column(6).footer() ).html(
                    pageTotalgol5
                );
                $( api.column(8).footer() ).html(
                    pageTotalgol1to5
                );
            }
		});
        //$('#examlist_ple').DataTable();
	 
	 
		 
	  });
  
		
		 
    </script>