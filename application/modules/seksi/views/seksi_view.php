 
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
                               Seksi
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
                                            <th style="width:10%;">Nama Departemen</th>  
											<th style="width:10%;">Nama Seksi</th>  
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
									 
                                    <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="nama_departemen" id="nama_departemen" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_departemen" id="id_departemen" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariDepartemen();" class="btn btn-primary"> Pilih departemen... </button>
                                                </span>
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="nama_seksi" id="nama_seksi" class="form-control" placeholder="Nama seksi" />
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
    <div class="modal fade" id="CariDepartemenModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Departemen</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_departemen" >
  
                                    <thead>
                                        <tr>  
                                            <th style="width:98%;">Nama Departemen </th> 
                                         </tr>
                                    </thead> 
                                    <tbody id="daftar_departemenx">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>

 
   <script type="text/javascript">
	
        $('#daftar_departemen').DataTable( {
            "ajax": "<?php echo base_url(); ?>seksi/fetch_departemen"           
        });

     
     
    function CariDepartemen(){
        $("#CariDepartemenModal").modal({backdrop: 'static', keyboard: false,show:true});
    } 
   
        
        var daftar_departemen = $('#daftar_departemen').DataTable();
     
        $('#daftar_departemen tbody').on('click', 'tr', function () {
            
            var content = daftar_departemen.row(this).data()
            console.log(content);
            $("#nama_departemen").val(content[0]);
            $("#id_departemen").val(content[1]);
            $("#CariDepartemenModal").modal('hide');
        } );

       
       
	 function Ubah_Data(id){
		$("#defaultModalLabel").html("Form Ubah Data");
		$("#defaultModal").modal('show');
 
		$.ajax({
			 url:"<?php echo base_url(); ?>seksi/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){ 
                  
				 $("#defaultModal").modal('show'); 
				 $("#id").val(result.id);  
                 $("#id_departemen").val(result.id_departemen);  
                 $("#nama_seksi").val(result.nama_seksi);
                 $("#nama_departemen").val(result.nama_departemen);
              
                  
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
            url : "<?php echo base_url('seksi/hapus_data')?>/"+id,
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

           
         var nama_seksi = $("#nama_seksi").val();
         
           

            //transaksi dibelakang layar
            $.ajax({
             url:"<?php echo base_url(); ?>seksi/simpan_data",
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
			"ajax": "<?php echo base_url(); ?>seksi/fetch_seksi",
            'rowsGroup': [1],
            "order": [[ 1, "asc" ]]
		});
	 
	 
		 
	  });
  
		
		 
    </script>