 
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
                                Formasi Jabatan
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
                                            
											<th style="width:5%;">Direktorat</th>
                                            <th style="width:5%;">Divisi</th> 
                                            <th style="width:5%;">Departemen</th>
                                            <th style="width:5%;">Seksi</th>
                                            <th style="width:5%;">Kls Jabatan</th> 
                                            <th style="width:5%;">Kel Jabatan</th>
                                            <th style="width:5%;">NPP</th>
                                            <th style="width:5%;">Nama</th>
                                            <th style="width:5%;">Opsi</th> 
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
                                    <!-- hidden -->
									<div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="nama_lokasi" id="nama_lokasi" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_lokasi" id="id_lokasi" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariLokasi();" class="btn btn-primary"> Pilih Lokasi... </button>
                                                </span>
                                    </div>

									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="npp" id="npp" class="form-control" placeholder="NPP" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="nama_formasi_jabatan" id="nama_formasi_jabatan" class="form-control" placeholder="Nama formasi_jabatan" />
                                        </div>
                                    </div>
									 

								   <button type="button" onclick="Simpan_Data();" class="btn btn-success waves-effect"> <i class="material-icons">save</i> Simpan</button>

                                   <button type="button" name="cancel" id="cancel" class="btn btn-danger waves-effect" onclick="javascript:Bersihkan_Form();" data-dismiss="modal"> <i class="material-icons">clear</i> Batal</button>
							 </form>
					   </div>
                     
                    </div>
                </div>
    </div>


    <!-- modal cari ruas -->
    <div class="modal fade" id="CariLokasiModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Lokasi</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_lokasi" >
  
                                    <thead>
                                        <tr>  
                                            <th style="width:98%;">Lokasi </th> 
                                         </tr>
                                    </thead> 
                                    <tbody id="daftar_lokasix">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>

			
 
   <script type="text/javascript">
	

    $('#daftar_lokasi').DataTable( {
            "ajax": "<?php echo base_url(); ?>formasi_jabatan/fetch_lokasi"           
    });

     
     
    function CariLokasi(){
        $("#CariLokasiModal").modal({backdrop: 'static', keyboard: false,show:true});
    } 
   
        
        var daftar_lokasi = $('#daftar_lokasi').DataTable();
     
        $('#daftar_lokasi tbody').on('click', 'tr', function () {
            
            var content = daftar_lokasi.row(this).data()
            console.log(content);
            $("#nama_lokasi").val(content[0]);
            $("#id_lokasi").val(content[1]);
            $("#CariLokasiModal").modal('hide');
        } );

       
 
       
	 function Ubah_Data(id){
		$("#defaultModalLabel").html("Form Ubah Data");
		$("#defaultModal").modal('show');
 
		$.ajax({
			 url:"<?php echo base_url(); ?>formasi_jabatan/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){ 
                  
				 $("#defaultModal").modal('show'); 
				 $("#id").val(result.id);
                 $("#npp").val(result.npp);
                 $("#id_lokasi").val(result.id_lokasi);                 
                 $("#nama_formasi_jabatan").val(result.nama_formasi_jabatan);
                 $("#nama_lokasi").val(result.nama_lokasi);
              
                  
			 }
		 });
	 }
 
	 function Bersihkan_Form(){
        $(':input').val(''); 
         
     }

	 function Hapus_Data(id){
		if(confirm('Anda yakin ingin menghapus data ini?'))
        {
        // ajax delete data to database
        $.ajax({
            url : "<?php echo base_url('formasi_jabatan/hapus_data')?>/"+id,
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
		//setting semua data dalam form dijadikan 1 variabel 
		 var formData = new FormData($('#user_form')[0]); 

           
         var nama_formasi_jabatan = $("#nama_formasi_jabatan").val();
         
           

            //transaksi dibelakang layar
            $.ajax({
             url:"<?php echo base_url(); ?>formasi_jabatan/simpan_data",
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
                 },{
                    type: 'success'
                });
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
			"ajax": "<?php echo base_url(); ?>formasi_jabatan/fetch_formasi_jabatan",
            'rowsGroup': [3] ,
            'order': [[ 0, 'asc' ], [ 4, 'asc' ]]
		});
	  
		 
	  });
  
		
		 
    </script>