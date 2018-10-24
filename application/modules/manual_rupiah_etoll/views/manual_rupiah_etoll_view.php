 
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
                                Form Upload Manual Rupiah E-Toll
                            </h2>
                            <br>
                             
 
                        </div>
                        <div class="body">
                                
                            <div class="table-responsive">
							   

                            <div class="modal-body">
                                 <form method="post" name="frmGroupUser" id="frmGroupUser" enctype="multipart/form-data">
                                        <div class="form-group" >
                                            <label></label>
                                            <input type="file" name="excel_file" id="excel_file" class="form-control" required="true">
                                            <input type="hidden" name="exel_name" id="exel_name">
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" id="myButton" data-loading-text="Loading..." class="btn btn-primary btn-sm">Upload</button> 
                                           
                                            

                                            <a href="<?php echo base_url('assets/excel_template/template_sample_form_upload_manual_rupiah_etolls.xls');?>" class="btn btn-success btn-sm">[Download Template]</a>
                                             
                                            <span class="btn btn-danger"> XLS file Only! Max 5 MB ! </span>
                                        </div>
                                    </form>

 
                       </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
         


        </div>
    </section>
 
    
 
   <script type="text/javascript">
	 

     $("#frmGroupUser").on("submit", function(event){
            var $btn = $("#myButton").button('Mohon Tunggu, data sedang di unggah!');
            event.preventDefault();
            var formData = new FormData(this);
         
             $.ajax({
                url : "<?php echo base_url('manual_rupiah_etoll/pro_upload'); ?>", 
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
		 
		$('#example').DataTable( {
			"ajax": "<?php echo base_url(); ?>manual_rupiah_etoll/fetch_manual_rupiah_etoll" 
		});
	 
	 
		 
	  });
  
		
		 
    </script>