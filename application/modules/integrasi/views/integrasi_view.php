 
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
                                Integrasi
                            </h2>
                            <br>
                           <!--  <a href="javascript:void(0);" id="addmodal" class="btn btn-primary waves-effect">  <i class="material-icons">add_circle</i>  Tambah Data </a> -->
 
                        </div>
                        <div class="body">
                        <form method="post" id="user_form" enctype="multipart/form-data">   
                                
                                    <input type="hidden" name="id" id="id"> 
                                    
                                    <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="ruas" id="ruas" class="form-control" placeholder="Pilih Ruas" readonly="readonly" >
                                                    <input type="hidden" name="id_ruas" id="id_ruas" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariRuas();" class="btn btn-primary"> Pilih Ruas... </button>
                                                </span>
                                    </div>


                                    <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="ruas_integrasi" id="ruas_integrasi" class="form-control" placeholder="Pilih Ruas Integrasi" readonly="readonly" >
                                                    <input type="hidden" name="id_integrasi" id="id_integrasi" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariRuasIntegrasi();" class="btn btn-primary"> Pilih Ruas Integrasi... </button>
                                                </span>
                                    </div>
                                        
                                   <button type="button" onclick="Simpan_Data();" class="btn btn-success waves-effect"> <i class="material-icons">save</i> Simpan</button>
                                    
                             </form>
                            <br>
                            <hr>
                                
                            <div class="table-responsive">
							   <table class="table table-bordered table-striped table-hover js-basic-example" id="example" >
									<thead>
										<tr>
											<th style="width:5%;">Ruas</th>
                                            <th style="width:5%;">Integrasi</th> 
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

    <!-- modal cari ruas integrasi -->
    <div class="modal fade" id="CariRuasIntegrasiModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Ruas Integrasi</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_ruas_integrasi" >
  
                                    <thead>
                                        <tr> 
                                     
                                            <th style="width:55%;">Nama Ruas</th>
                                            <th style="width:55%;">Lokasi</th>
                                           
                                         </tr>
                                    </thead> 
                                    <tbody id="daftar_ruas_integrasix">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>



    
 
   <script type="text/javascript">
    $('#daftar_ruas').DataTable( {
            "ajax": "<?php echo base_url(); ?>integrasi/fetch_ruas",
            'rowsGroup': [0]
        });

    $('#daftar_ruas_integrasi').DataTable( {
            "ajax": "<?php echo base_url(); ?>integrasi/fetch_ruas_integrasi",
            'rowsGroup': [0]
        });
     
	function CariRuas(){
        $("#CariRuasModal").modal({backdrop: 'static', keyboard: false,show:true});
    } 
    function CariRuasIntegrasi(){
        $("#CariRuasIntegrasiModal").modal({backdrop: 'static', keyboard: false,show:true});
    }
        
        var daftar_ruas = $('#daftar_ruas').DataTable();
     
        $('#daftar_ruas tbody').on('click', 'tr', function () {
            
            var content = daftar_ruas.row(this).data()
            console.log(content);
            $("#ruas").val(content[0]);
            $("#id_ruas").val(content[2]);
            $("#CariRuasModal").modal('hide');
        } );

        var daftar_ruas_integrasi = $('#daftar_ruas_integrasi').DataTable();
     
        $('#daftar_ruas_integrasi tbody').on('click', 'tr', function () {
            
            var content = daftar_ruas_integrasi.row(this).data()
            console.log(content);
            $("#ruas_integrasi").val(content[0]);
            $("#id_integrasi").val(content[2]);
            $("#CariRuasIntegrasiModal").modal('hide');
        } );

 
	 function Hapus_Data(id){
		if(confirm('Anda yakin ingin menghapus data ini?'))
        {
        
        $.ajax({
            url : "<?php echo base_url('integrasi/hapus_data')?>/"+id,
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
         var id_integrasi = $("#id_integrasi").val();
          
        
            $.ajax({
             url:"<?php echo base_url(); ?>integrasi/simpan_data",
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
			"ajax": "<?php echo base_url(); ?>integrasi/fetch_integrasi",
            'rowsGroup': [0]
		});

       
	 
		 
	  });
  
		
		 
    </script>