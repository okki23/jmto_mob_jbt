 
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
                                Data Gerbang
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
                                            <th style="width:5%;">Ruas</th>  
											<th style="width:5%;">Nama Gerbang</th>  
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
									

                                    <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="Ruas" id="ruas" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_ruas" id="id_ruas" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariRuas();" class="btn btn-primary"> Pilih Ruas... </button>
                                                </span>
                                    </div>

									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama" />
                                        </div>
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="lokasi" id="lokasi"  class="form-control" placeholder="Lokasi" />
                                        </div>
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="long_coordinate" id="long_coordinate"  class="form-control" placeholder="Long Coordinate" />
                                        </div>
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="lat_coordinate" id="lat_coordinate" class="form-control" placeholder="Lat Coordinate" />
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
                            <h4 class="modal-title">Detail Gerbang</h4>
                        </div>
                        <div class="modal-body">
						
						<table class="table table-responsive">
							<tr>
								<td style="font-weight:bold;"> Ruas</td>
								<td> : </td>
								<td> <p id="blok_tower_dtl"> </p> </td>
								
								<td style="font-weight:bold;"> Nama Gerbang</td>
								<td> : </td>
								<td> <p id="tipe_dtl"> </p> </td> 
							</tr>
							<tr>
								<td style="font-weight:bold;"> Lokasi</td>
								<td> : </td>
								<td> <p id="lantai_dtl"> </p> </td>
								
								<td style="font-weight:bold;"> Long Coordinate</td>
								<td> : </td>
								<td> <p id="luas_dtl"> </p> </td> 
							</tr>
							<tr>
								 
								<td style="font-weight:bold;"> Lat Coordinate </td>
								<td> : </td>
								<td> <p id="harga_dtl"> </p> </td> 
							</tr>
							 
							 
							 <div class="modal-footer">
							  <button type="button" class="btn btn-danger" data-dismiss="modal"> X Tutup </button>
							 </div>
						</table>
                           
					   </div>
                     
                    </div>
                </div>
    </div>

     <!-- modal cari ruas -->
    <div class="modal fade" id="CariRuasModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Ruas</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_ruas" >
  
                                    <thead>
                                        <tr> 
                                     
                                            <th style="width:55%;">Nama Ruas</th>
                                            <th style="width:55%;">Lokasi</th>
                                           
                                         </tr>
                                    </thead> 
                                    <tbody id="daftar_ruasx">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>


			
 
   <script type="text/javascript">
	function CariRuas(){
        $("#CariRuasModal").modal({backdrop: 'static', keyboard: false,show:true});
    }



    $('#daftar_ruas').DataTable( {
        "ajax": "<?php echo base_url(); ?>gerbang/fetch_ruas_txt" 
    });

     var daftar_ruas = $('#daftar_ruas').DataTable();
     
        $('#daftar_ruas tbody').on('click', 'tr', function () {
            
            var content = daftar_ruas.row(this).data()
            console.log(content);
            $("#ruas").val(content[0]);
            $("#id_ruas").val(content[2]);
            $("#CariRuasModal").modal('hide');
        } );


  
	 function Show_Detail(id){ 
		$("#DetailModal").modal({backdrop: 'static', keyboard: false,show:true});
		$.ajax({
			 url:"<?php echo base_url(); ?>gerbang/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){  
			 
                 $("#blok_tower_dtl").html(result.blok_tower);
                 $("#tipe_dtl").html(result.tipe);
                 $("#no_gerbang_dtl").html(result.no_gerbang); 
				 $("#lantai_dtl").html(result.lantai); 
				 $("#harga_dtl").html(result.harga);
				 $("#luas_dtl").html(result.luas);
				 $("#foto_gerbang_dtl").attr("src","upload/"+result.foto);
				 
				 
				 
			 }
		 });
	 }
       
	 function Ubah_Data(id){
		$("#defaultModalLabel").html("Form Ubah Data");
		$("#defaultModal").modal('show');
 
		$.ajax({
			 url:"<?php echo base_url(); ?>gerbang/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){ 
                
				 $("#defaultModal").modal('show'); 
				    var id = $("#id").val(result.id);
                    var id_ruas = $("#id_ruas").val(result.id_ruas);
                    var ruas = $("#ruas").val(result.nama_ruas); 
                    var nama = $("#nama").val(result.nama);
                    var lokasi = $("#lokasi").val(result.lokasi);
                    var long_coordinate = $("#long_coordinate").val(result.long_coordinate);
                    var lat_coordinate = $("#lat_coordinate").val(result.lat_coordinate);
          
                  
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
            url : "<?php echo base_url('gerbang/hapus_data')?>/"+id,
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
  
         var id_ruas = $("#id_ruas").val();
         var nama = $("#nama").val();
         var lokasi = $("#lokasi").val();
		 var long_coordinate = $("#long_coordinate").val();
         var lat_coordinate = $("#lat_coordinate").val();
          
        
            //transaksi dibelakang layar
            $.ajax({
             url:"<?php echo base_url(); ?>gerbang/simpan_data",
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
		
		$("#addmodalx").on("click",function(){
			$("#defaultModalx").modal({backdrop: 'static', keyboard: false,show:true});
            $("#defaultModalLabel").html("Form Tambah Datax");
		});
		
		$('#example').DataTable( {
			"ajax": "<?php echo base_url(); ?>gerbang/fetch_gerbang",
            'rowsGroup': [1]
		});

        
	 
	 
		 
	  });
  
		
		 
    </script>