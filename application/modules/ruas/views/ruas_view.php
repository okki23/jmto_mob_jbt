 
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
                                Data Ruas
                            </h2>
                            <br>
                            <a href="javascript:void(0);" id="addmodal" class="btn btn-primary waves-effect">  <i class="material-icons">add_circle</i>  Tambah Data </a>
 
                        </div>
                        <div class="body">
                                
                            <div class="table-responsive">
							   <table class="table table-bordered table-striped table-hover js-basic-example" id="example" >
									<thead>
										<tr>
											<th style="width:5%;">No</th>
                                            <th style="width:5%;">Nama</th>  
											<th style="width:5%;">Lokasi</th>   
											<th style="width:15%;">Opsi</th> 
										</tr>
									</thead> 
								</table> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         


        </div>
    </section>

   
	<!-- form tambah dan ubah data -->
	<div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Form Tambah Data</h4>
                        </div>
                        <div class="modal-body">
                              <form method="post" id="user_form" enctype="multipart/form-data">   
                                
                                    <input type="hidden" name="id" id="id"> 
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama" />
                                        </div>
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="lokasi" id="lokasi" class="form-control" placeholder="Lokasi" />
                                        </div>
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="long_coordinate" id="long_coordinate"  class="form-control" placeholder="Long Coordinate" />
                                        </div>
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="lat_coordinate" id="lat_coordinate"  class="form-control" placeholder="Lat Coordinate" />
                                        </div>
                                    </div>
									 

								   <button type="button" onclick="Simpan_Data();" class="btn btn-success waves-effect"> <i class="material-icons">save</i> Simpan</button>

                                   <button type="button" name="cancel" id="cancel" class="btn btn-danger waves-effect" onclick="javascript:Bersihkan_Form();" data-dismiss="modal"> <i class="material-icons">clear</i> Batal</button>
							 </form>
					   </div>
                     
                    </div>
                </div>
    </div>
	
	<!-- detail data customer -->
	<div class="modal fade" id="DetailModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Detail ruas</h4>
                        </div>
                        <div class="modal-body">
						
						<table class="table table-responsive">
							<tr>
								<td style="font-weight:bold;"> Nama </td>
								<td> : </td>
								<td> <p id="nama_dtl"> </p> </td>
								
								<td style="font-weight:bold;"> Lokasi</td>
								<td> : </td>
								<td> <p id="lokasi_dtl"> </p> </td> 
							</tr>
							<tr>
								<td style="font-weight:bold;"> Long Coordinate</td>
								<td> : </td>
								<td> <p id="long_dtl"> </p> </td>
								
								<td style="font-weight:bold;"> Lat Coordinate</td>
								<td> : </td>
								<td> <p id="lat_dtl"> </p> </td> 
							</tr>
							  
							 <div class="modal-footer">
							  <button type="button" class="btn btn-danger" data-dismiss="modal"> X Tutup </button>
							 </div>
						</table>
                           
					   </div>
                     
                    </div>
                </div>
    </div>
			
 
   <script type="text/javascript">
	
      
	 function Show_Detail(id){ 
		$("#DetailModal").modal({backdrop: 'static', keyboard: false,show:true});
		$.ajax({
			 url:"<?php echo base_url(); ?>ruas/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){  
			 
                 $("#nama_dtl").html(result.nama);
                 $("#lokasi_dtl").html(result.lokasi);
                 $("#long_dtl").html(result.long_coordinate); 
				 $("#lat_dtl").html(result.lat_coordinate); 
				   
				 
			 }
		 });
	 }
       
	 function Ubah_Data(id){
		$("#defaultModalLabel").html("Form Ubah Data");
		$("#defaultModal").modal('show');
 
		$.ajax({
			 url:"<?php echo base_url(); ?>ruas/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){ 
                
				 $("#defaultModal").modal('show'); 
				 $("#id").val(result.id);
                 $("#nama").val(result.tipe);
                 $("#lokasi").val(result.lantai);
                 $("#long_coordinate").val(result.no_ruas);
				 $("#lat_coordinate").val(result.foto);
				  
                  
			 }
		 });
	 }
 
	 function Bersihkan_Form(){
        $(':input').val(''); 
     
     }

	 function Hapus_Data(id){
		if(confirm('Anda yakin ingin menghapus data ini?'))
        {
         
        $.ajax({
            url : "<?php echo base_url('ruas/hapus_data')?>/"+id,
            type: "GET",
            dataType: "JSON",
            success: function(data)
            {
			   
               $('#example').DataTable().ajax.reload(); 
			   
			    $.notify("Data berhasil dihapus!", {
					animate: {
						enter: 'animated fadeInRight',
						exit: 'animated fadeOutRight'
					}  
				 },{
					type: 'success'
					});
				 
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error deleting data');
            }
        });
   
    }
	}
    
 
  
  
	function Simpan_Data(){
		 
		 var formData = new FormData($('#user_form')[0]);  

         var nama = $("#nama").val();
         var lokasi = $("#lokasi").val();
         var long_coordinate = $("#long_coordinate").val();
		 var lat_coordinate = $("#lat_coordinate").val();
         
        
            $.ajax({
             url:"<?php echo base_url(); ?>ruas/simpan_data",
             type:"POST",
             data:formData,
             contentType:false,  
             processData:false,   
             success:function(result){ 
                
                 $("#defaultModal").modal('hide');
                 $('#example').DataTable().ajax.reload(); 
                 $('#user_form')[0].reset();
                 
                 $.notify("Data berhasil disimpan!", {
                    animate: {
                        enter: 'animated fadeInRight',
                        exit: 'animated fadeOutRight'
                 } 
                 } );
             }
            }); 

         }

	  
	 
       $(document).ready(function() {
		   
		$("#addmodal").on("click",function(){
			$("#defaultModal").modal({backdrop: 'static', keyboard: false,show:true});
            $("#method").val('Add');
            $("#defaultModalLabel").html("Form Tambah Data");
		});
		
	 
		
		$('#example').DataTable( {
			"ajax": "<?php echo base_url(); ?>ruas/fetch_ruas" 
		});
	 
	 
		 
	  });
  
		
		 
    </script>