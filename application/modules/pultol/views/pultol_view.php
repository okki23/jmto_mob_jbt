 
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
                                Pultol

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
											<th style="width:5%;">Gerbang</th>  
											<th style="width:5%;">Jml Pultol</th> 
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
                                     
									<div class="form-group">
                                        <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="ruas" id="ruas" class="form-control" required readonly="readonly" >
                                                    <input type="text" name="id_ruas" id="id_ruas" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariRuas();" class="btn btn-primary"> Pilih Ruas... </button>
                                                </span>
                                        </div>
                                        <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="gerbang" id="gerbang" class="form-control" required readonly="readonly" >
                                                    <input type="text" name="id_gerbang" id="id_gerbang" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariGerbang();" class="btn btn-primary"> Pilih Gerbang... </button>
                                                </span>
                                        </div>
 
                                         <div class="form-line">
                                            <input type="text" name="jml_pultol" id="jml_pultol" class="form-control" placeholder="Jumlah Pultol" />
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

    <!-- modal cari gerbang -->
    <div class="modal fade" id="CariGerbangModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Gerbang</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="tabel_gemblung" >
  
                                    <thead>
                                        <tr> 
                                     
                                            <th style="width:15%;">Nama Gerbang</th>
                                            <th style="width:15%;">Nama Lokasi</th>
                                            <th style="width:15%;">Action</th>
                                      
                                           
                                           
                                         </tr>
                                    </thead>
                                    <tbody>
                                        
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

    function GetDataSrc(id){
        console.log(id);
        $.get("<?php echo base_url('pultol/fetch_gerbang_name/'); ?>"+id,function(result){
            console.log(result);
            var parse = JSON.parse(result);
            $("#id_gerbang").val(id);
            $("#gerbang").val(parse.nama);
            $("#CariGerbangModal").modal('hide');
        });

    }

 
    function CariGerbang(){
        $("#CariGerbangModal").modal({backdrop: 'static', keyboard: false,show:true});

        var id_ruas = $("#id_ruas").val();
        
        $('#tabel_gemblung').DataTable({
            "processing" : true,
            "ajax" : {
                "url" : "<?php echo base_url('pultol/fetch_gerbang'); ?>",
                "data":{id_ruas},
                "type":"POST",
                dataSrc : '',

            },
 

            "columns" : [ {
                "data" : "nama"
            },{
                "data" : "lokasi"
            },{
                "data" : "action"
            }],

            "rowReorder": {
                "update": false
            },

            "destroy":true,
        });
    
 
    } 

    $('#daftar_ruas').DataTable({
        "ajax": "<?php echo base_url(); ?>pultol/fetch_ruas" 
    });
    
    
        
        var daftar_ruas = $('#daftar_ruas').DataTable();
     
        $('#daftar_ruas tbody').on('click', 'tr', function () {
            
        var content = daftar_ruas.row(this).data()
            console.log(content);
            $("#ruas").val(content[0]);
            $("#id_ruas").val(content[2]);
            $("#CariRuasModal").modal('hide');
        });

          
	 function Ubah_Data(id){
		$("#defaultModalLabel").html("Form Ubah Data");
		$("#defaultModal").modal('show');
 
		$.ajax({
			 url:"<?php echo base_url(); ?>pultol/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){ 
                
				 $("#defaultModal").modal('show'); 
				 $("#id").val(result.id);
                 $("#id_ruas").val(result.id_ruas);
                 $("#id_gerbang").val(result.id_gerbang);
                 $("#ruas").val(result.nama_ruas);
                 $("#gerbang").val(result.nama_gerbang);
                 $("#jml_pultol").val(result.jml_pultol);
				 
                  
			 }
		 });
	 }
 
	 function Bersihkan_Form(){
        $(':input').val('');         
     }

	 function Hapus_Data(id){
		if(confirm('Anda yakin ingin menghapus data ini?')){
        // ajax delete data to database
        $.ajax({
            url : "<?php echo base_url('pultol/hapus_data')?>/"+id,
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
         var id_gerbang = $("#id_gerbang").val();
         var jml_pultol = $("#jml_pultol").val();
		  
            //transaksi dibelakang layar
            $.ajax({
             url:"<?php echo base_url(); ?>pultol/simpan_data",
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
			"ajax": "<?php echo base_url(); ?>pultol/fetch_pultol" 
		});
	 
	 
		 
	  });
  
		
		 
    </script>