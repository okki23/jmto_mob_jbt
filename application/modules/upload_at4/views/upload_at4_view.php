 
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
                                Upload AT4
                            </h2>
                            <br>
                             
 
                        </div>
                        <div class="body">
                                
                            <div class="table-responsive">
							   

                            <div class="modal-body">
                                <form method="post" name="frmGroupUser" id="frmGroupUser" enctype="multipart/form-data">
                                    <input type="hidden" name="id" id="id"> 
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" name="tanggal" id="tanggal" class="form-control datepicker" placeholder="Tanggal" />
                                        </div>
                                    </div>
                                    <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="Gerbang" id="gerbang" class="form-control" placeholder="Pilih Gerbang Keluar" readonly="readonly" >
                                                    <input type="hidden" name="id_gerbang" id="id_gerbang" required>
                                                    
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariGerbang();" class="btn btn-primary"> Pilih... </button>
                                                </span>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                              <select name="shift" class="form-control show-tick">
                                                <option value="">-- Pilih Shift --</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option> 
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="file" name="excel_file" id="excel_file"  class="form-control" placeholder="File AT4" />
                                        </div>
                                        <br>
                                       
                                            <span class="btn btn-danger"> XLS file Only! Max 5 MB ! </span>
                                    </div>
                                   

                                   

                                   <button type="submit" class="btn btn-success waves-effect"> <i class="material-icons">save</i> Simpan</button>

                                    
                             </form>
                       </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
         


        </div>
    </section>

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

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_gerbang" >
  
                                    <thead>
                                        <tr> 
                                     
                                            <th style="width:55%;">Nama Gerbang</th>
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
	 
     function CariGerbang(){
        $("#CariGerbangModal").modal({backdrop: 'static', keyboard: false,show:true});
    } 

    $('#daftar_gerbang').DataTable( {
        "ajax": "<?php echo base_url(); ?>upload_at4/fetch_gerbang" 
    });

     var daftar_gerbang = $('#daftar_gerbang').DataTable();
     
        $('#daftar_gerbang tbody').on('click', 'tr', function () {
            
            var content = daftar_gerbang.row(this).data()
            console.log(content);
            $("#gerbang").val(content[0]);
            $("#id_gerbang").val(content[2]);
            $("#CariGerbangModal").modal('hide');
        } );



	 $('.datepicker').bootstrapMaterialDatePicker({
        format: 'YYYY-MM-DD',
        clearButton: true,
        weekStart: 1,
        time: false
     });

	 

     $("#frmGroupUser").on("submit", function(event){
            var $btn = $("#myButton").button('Mohon Tunggu, data sedang di unggah!');
            event.preventDefault();
            var formData = new FormData(this);
         
             $.ajax({
                url : "<?php echo base_url('upload_at4/pro_upload'); ?>", 
                type : "post",
                data : formData,
                cache: false,
                contentType: false,
                processData: false, 
                success: function(e){
                    $btn.button('reset')
                    alert('Data berhasil di upload!');
         
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
			"ajax": "<?php echo base_url(); ?>upload_at4/fetch_upload_at4" 
		});
	 
	 
		 
	  });
  
		
		 
    </script>