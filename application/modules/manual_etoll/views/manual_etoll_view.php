     
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                 
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Upload Manual Non E-Toll
                            </h2>
                            <div id="loader">
                                <div align="center">
                                    <img src="<?php echo base_url('assets/images/gif-load.gif'); ?>">
                                    <br>
                                    <p> Mohon tunggu data sedang di upload ... </p>
                                </div>
                            </div>
                        </div>

                        <div>
                           <div style="margin-left: 10px;" id="formupload">
                             <form method="post" name="frmGroupUser" id="frmGroupUser" enctype="multipart/form-data">
                                        <div class="form-group" >
                                            <label></label>
                                            <input type="file" name="excel_file" id="excel_file" class="form-control" required="true">
                                            <input type="hidden" name="exel_name" id="exel_name">
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" id="myButton" data-loading-text="Loading..." class="btn btn-primary btn-sm">Upload</button> 
                                           
                                            

                                            <a href="<?php echo base_url('assets/excel_template/template_sample_form_upload_manual_etoll.xls');?>" class="btn btn-success btn-sm">[Download Template]</a>
                                             
                                            <span class="btn btn-danger"> XLS file Only! Max 5 MB ! </span>
                                        </div>
                                    </form>

                           </div>
                        </div>
                        <div class="body">
                                 
                        </div>
                    </div>
                </div>
            </div>
         


        </div>
    </section>
 
 
   <script type="text/javascript">
    $("#loader").hide();
     $("#frmGroupUser").on("submit", function(event){
            //var $btn = $("#myButton").button('Mohon Tunggu, data sedang di unggah!');
            //$('button').value('Uploading...');
            $("#formupload").slideUp();
            event.preventDefault();
            var formData = new FormData(this);
         
             $.ajax({
                url : "<?php echo base_url('manual_etoll/pro_upload'); ?>", 
                type : "post",
                data : formData,
                cache: false,
                contentType: false,
                processData: false, 
                beforeSend: function(){
                 $("#loader").show();
                 $('button').prop('disabled', true);
                },
                success: function(e){
                    //$btn.button('reset')
                    alert('Data berhasil di upload!');
                    $("#loader").hide();
                    $("#formupload").slideDown();
                    $('button').prop('disabled', false);
         
                },
                error: function(e){
                    $btn.button('reset')
                    alert('Data gagal di upload!');
                }
           });
       });
   
      
      
  
         
    </script>