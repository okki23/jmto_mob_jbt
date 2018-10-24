 
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
                                Pilih Unit
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
                                            <th style="width:5%;">Kode PU</th>  
											<th style="width:5%;">Customer</th>  
											<th style="width:5%;">Blok Tower</th> 
										 
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
                <div class="modal-dialog modal-lg modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                             <h4 class="modal-title" id="defaultModalLabel">Form PU</h4>
							 <div align="right">
							 <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>
							 </div>
                        </div>
                        <div class="modal-body">
						
						
						<form id="wizard_with_validation" class="user_form" method="POST" >
                                <h3>Periksa Priority Code</h3>
                                <fieldset>
                                    <div class="form-group">
                                        
                                            <div class="input-group">
                                                <div class="form-line">
                                                    <input type="text" name="priority_code" id="priority_code" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_bf" id="id_bf" required>
                                                    <input type="hidden" name="id_sales" id="id_sales" required>
                                                    <input type="hidden" name="id_customer" id="id_customer" required>
                                                </div>
                                                <span class="input-group-addon">
                                                    <button type="button" onclick="CariPriorityCode();" class="btn btn-primary"> Cari Priority Code... </button>
                                                </span>
                                            </div>
                                        
                                    </div>
									<div id="ceklis">
										<div class="col-md-12">
										
											<div class="col-md-2">
												<img src="<?php echo base_url('ceklis.gif'); ?>" width="75">
											</div>
											
											<div class="col-md-10">
												<div class="alert bg-green">
												Priority Code Berhasil Di Input dan Dapat digunakan untuk proses PU !
												</div>
											</div>
										
										</div> 
									</div>
                                </fieldset>

                                <h3>Pilih Unit</h3>
                                <fieldset>
                                    <div class="form-group">
                                        <div class="form-line">
											<b>Kode Konfirmasi Pesanan</b>
                                            <input type="text" name="no_pu" id="no_pu" class="form-control" readonly="readonly" />
                                        </div>
                                    </div>
									<!-- <div class="form-group">
                                        <div class="form-line">
											<b>Nama Customer</b>
      
                                                    <input type="text" name="nama_customer" id="nama_customer" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_customer" id="id_customer" required>
													<button type="button" onclick="CariCustomer();" class="btn btn-primary"> Cari Customer... </button>
                                            </div>
                                           
                                    </div>
									<div class="form-group">
                                        <div class="form-line">
											<b>Nama Sales</b>
      
                                                    <input type="text" name="nama_sales" id="nama_sales" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_sales" id="id_sales" required>
													<button type="button" onclick="CariSales();" class="btn btn-primary"> Cari Sales... </button>
                                            </div>
                                           
                                    </div> -->
                                    <div class="form-group">
                                        <div class="form-line">
                                            <b>Unit</b>
      
                                                    <input type="text" name="nama_unit" id="nama_unit" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_unit" id="id_unit" required>
                                                    <button type="button" onclick="CariUnit();" class="btn btn-primary"> Cari Unit... </button>
                                            </div>
                                           
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <b>Bank</b>
      
                                                    <input type="text" name="nama_bank" id="nama_bank" class="form-control" required readonly="readonly" >
                                                    <input type="hidden" name="id_bank" id="id_bank" required>
                                                    <button type="button" onclick="CariBank();" class="btn btn-primary"> Cari Bank... </button>
                                            </div>
                                           
                                    </div>
                                 
                                   
                                    <div class="form-group form-float">
                                        

                                              <div class="form-line">
                                                      <b>Cicilan</b>
                                                    <input type="text" name="cicilan" id="cicilan" class="form-control" required placeholder="12 atau 24"  > 
                                             </div>

                                         
                                    </div>
									 
                                </fieldset>

                                <h3>Syarat dan Ketentuan - Selesai </h3>
                                <fieldset>
                                    <input id="acceptTerms-2" name="acceptTerms" type="checkbox" required>
                                    <label for="acceptTerms-2">Dengan ini saya telah menyepakati proses PU dan Sistem akan mencetak bukti Konfirmasi Pesanan.</label>
                                </fieldset>
                            </form>
							
							
							
					   </div>
                     
                    </div>
                </div>
    </div>
	
 
    <!-- modal cari customer -->
    <div class="modal fade" id="CariCustomerModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Customer</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_customer" >
  
                                    <thead>
                                        <tr> 
                                            <th style="width:5%;"></th>
                                            <th style="width:5%;">Kode Pelanggan</th>
                                            <th style="width:5%;">Nama</th> 
                                            <th style="width:5%;">Email</th> 
                                            <th style="width:10%;">Alamat</th> 
                                        </tr>
                                    </thead> 
                                    <tbody id="daftar_customerx">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>

    <!-- modal cari priority code -->
    <div class="modal fade" id="CariPriorityCodeModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Pilih Priority Code</h4>
							 <div align="right">
							 <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>
							 </div>
						</div>
                        <div class="modal-body">
 

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_prioritycode" >
   
                                    <thead>
                                        <tr> 
                                            <th style="width:5%;"></th>
                                            <th style="width:5%;">Kode TTBF</th>
                                            <th style="width:5%;">Priority Code</th> 
                                            <th style="width:5%;">Nama Customer</th> 
                                            <th style="width:5%;">Nama Sales</th> 
											<th style="width:5%;">Tanggal Booking Fee</th> 

                                        </tr>
                                    </thead> 
                                    <tbody id="daftar_prioritycodex">

                                </tbody>
                                </table> 
                       </div>
					    
                     
                    </div>
                </div>
    </div>
	
	 <!-- modal cari sales -->
    <div class="modal fade" id="CariSalesModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Sales</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_sales" >
  
                                    <thead>
                                        <tr> 
                                            <th style="width:5%;"></th>
                                            <th style="width:5%;">NIK</th>
                                            <th style="width:5%;">Nama</th> 
                                            <th style="width:5%;">No Telp</th> 
                                            <th style="width:10%;">Email</th> 
                                        </tr>
                                    </thead> 
                                    <tbody id="daftar_salesx">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>

     <!-- modal cari unit -->
    <div class="modal fade" id="CariUnitModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Unit</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_unit" >
  
                                    <thead>
                                        <tr> 
                                            <th style="width:5%;"></th>
                                            <th style="width:5%;">Blok Tower</th>
                                            <th style="width:5%;">Lantai</th> 
                                            <th style="width:5%;">No Unit</th> 
                                            <th style="width:10%;">Luas</th> 
                                            <th style="width:10%;">Tipe</th> 
                                        </tr>
                                    </thead> 
                                    <tbody id="daftar_unitx">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>

     <!-- modal cari unit -->
    <div class="modal fade" id="CariBankModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" >Cari Bank</h4>
                        </div>
                        <div class="modal-body">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X Tutup</button>

                                <br>
                                <hr>

                                 <table width="100%" class="table table-bordered table-striped table-hover " id="daftar_bank" >
  
                                    <thead>
                                        <tr> 
                              
                                            <th style="width:5%;">Kode Bank</th>
                                            <th style="width:5%;">Nama Bank</th> 
                                            <th style="width:5%;">No Rekening</th> 
                                            <th style="width:10%;">Jumlah KPA</th> 
                                            <th style="width:10%;">Tipe</th> 
                                        </tr>
                                    </thead> 
                                    <tbody id="daftar_bankx">

                                </tbody>
                                </table> 
                       </div>
                     
                    </div>
                </div>
    </div>

    <!-- detail data customer -->
    <div class="modal fade" id="DetailModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Detail PU</h4>
                        </div>
                        <div class="modal-body">
                        
                        <table class="table table-responsive">
                            <tr>
                                <td style="font-weight:bold;"> Kode TTBF</td>
                                <td> : </td>
                                <td> <p id="kode_ttbf_dtl"> </p> </td>
                                
                                <td style="font-weight:bold;"> Priority Code</td>
                                <td> : </td>
                                <td> <p id="priority_code_dtl"> </p> </td> 
                            </tr>
                            <tr>
                                <td style="font-weight:bold;"> Nama Customer</td>
                                <td> : </td>
                                <td> <p id="nama_customer_dtl"> </p> </td>
                                
                                <td style="font-weight:bold;"> Nama Sales</td>
                                <td> : </td>
                                <td> <p id="nama_sales_dtl"> </p> </td> 
                            </tr>
                            
                            <tr>
                                <td style="font-weight:bold;"> Upload Booking Fee  </td> 
                                <td colspan="4">  : </td> 
                            </tr> 
                            <tr>
                                <td colspan="6" align="center">  
                                <img src="" width="100%" class="img responsive" id="upload_bukti_transfer_dtl">
                                </td>
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
	
     function ShowFileName(input) {
        if (input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function (e) {
               $('#image1').attr('src', e.target.result);
				$("#upload_bukti_transfer").val($('#user_bukti').val().replace(/C:\\fakepath\\/i, ''));
            };
            reader.readAsDataURL(input.files[0]);
			
        }
     }
	 
    function CariCustomer(){
        $("#CariCustomerModal").modal({backdrop: 'static', keyboard: false,show:true});
    }

    function CariUnit(){
        $("#CariUnitModal").modal({backdrop: 'static', keyboard: false,show:true});
    }

     function CariBank(){
        $("#CariBankModal").modal({backdrop: 'static', keyboard: false,show:true});
    }
	
	function CariPriorityCode(){
        $("#CariPriorityCodeModal").modal({backdrop: 'static', keyboard: false,show:true});
        $('#daftar_prioritycode').DataTable().ajax.reload(); 
    }

    function CariSales(){
        $("#CariSalesModal").modal({backdrop: 'static', keyboard: false,show:true});
    }

	function Show_Detail(id){ 
		$("#DetailModal").modal({backdrop: 'static', keyboard: false,show:true});
		$.ajax({
			 url:"<?php echo base_url(); ?>pu/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){  
			 
                 $("#kode_ttbf_dtl").html(result.kode_ttbf);
                 $("#priority_code_dtl").html(result.priority_code);
                 $("#nama_sales_dtl").html(result.nama_sales); 
				 $("#nama_customer_dtl").html(result.nama_customer); 
				  
				 
				 $("#upload_bukti_transfer_dtl").attr("src","upload/"+result.upload_bukti_transfer);
				 
				 
				 
			 }
		 });
	 }
       
	 function Ubah_Data(id){
		$("#defaultModalLabel").html("Form Ubah Data");
		$("#defaultModal").modal('show');
 
		$.ajax({
			 url:"<?php echo base_url(); ?>pu/get_data_edit/"+id,
			 type:"GET",
			 dataType:"JSON", 
			 success:function(result){ 
                
				 $("#defaultModal").modal('show'); 
				 $("#id").val(result.id);
                 $("#kode_ttbf").val(result.kode_ttbf);
                 $("#priority_code").val(result.priority_code);
                 $("#nama_sales").val(result.nama_sales);
				 $("#nama_customer").val(result.nama_customer);
				 $("#id_sales").val(result.id_sales);
                 $("#id_customer").val(result.id_customer); 
                 $("#upload_bukti_transfer").val(result.upload_bukti_transfer);
                 $('#image1').attr('src',"upload/"+result.upload_bukti_transfer);
                  
			 }
		 });
	 }
 
	 function Bersihkan_Form(){
        $(':input').val(''); 
        
     }

	 function Hapus_Data(id){
        console.log(id);
		if(confirm('Anda yakin ingin menghapus data ini?'))
        {
        // ajax delete data to database
        $.ajax({
            url : "<?php echo base_url('pu/hapus_data')?>/"+id,
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
     
    $('.thumbnail').on('click',function(){
        $('.modal-body').empty();
        var title = $(this).parent('a').attr("title");
        $('.modal-title').html(title);
        $($(this).parents('div').html()).appendTo('.modal-body');
        $('#Prev').modal({show:true});
    });
  
	function Simpan_Data(){
		//setting semua data dalam form dijadikan 1 variabel 
		 var formData = new FormData($('.user_form')[0]); 
 
         //validasi form sebelum submit ke controller
         var id_sales = $("#id_sales").val();
         var id_customer = $("#id_customer").val();
         var id_bank = $("#id_bank").val();
         var id_bf = $("#id_bf").val();
         var id_unit = $("#id_unit").val();
         var no_pu = $("#no_pu").val();
         var cicilan = $("#cicilan").val();
		 
         if(id_customer == ''){
            alert("Nama Customer Belum anda masukkan!");
            $("#id_customer").parents('.form-line').addClass('focused error');
            $("#id_customer").focus();
         }else if(id_sales == ''){
            alert("Nama Sales Belum anda masukkan!");
            $("#id_sales").parents('.form-line').addClass('focused error');
            $("#id_sales").focus();
         	alert('Anda Belum Unggah Foto!');
		 }else if(id_unit == ''){
            alert("Unit Belum anda masukkan!");
            $("#id_unit").parents('.form-line').addClass('focused error');
            $("#id_unit").focus();
            alert('Anda Belum Unggah Foto!');
         }else if(id_bank == ''){
            alert("Bank Belum anda masukkan!");
            $("#id_bank").parents('.form-line').addClass('focused error');
            $("#id_bank").focus();
            alert('Anda Belum Unggah Foto!');
         }else if(cicilan == ''){
            alert("Cicilan Belum anda masukkan!");
            $("#cicilan").parents('.form-line').addClass('focused error');
            $("#cicilan").focus();
          
		 }else{

            //transaksi dibelakang layar
            $.ajax({
             url:"<?php echo base_url(); ?>pu/simpan_data",
             type:"POST",
             data:formData,
             contentType:false,  
             processData:false,   
             success:function(result){ 
                
                 $("#defaultModal").modal('hide');
                 $('#example').DataTable().ajax.reload(); 
                 $('.user_form')[0].reset();
                 
                 $.notify("Data berhasil disimpan!", {
                    animate: {
                        enter: 'animated fadeInRight',
                        exit: 'animated fadeOutRight'
                 } 
                 } );
             }
            }); 

         }

	}
     

	 $('.datepicker').bootstrapMaterialDatePicker({
        format: 'YYYY-MM-DD',
        clearButton: true,
        weekStart: 1,
        time: false
     });

	 
       $(document).ready(function() {
		$("#ceklis").hide();
		$("#addmodal").on("click",function(){
			$("#defaultModal").modal({backdrop: 'static', overflow:'auto', keyboard: false,show:true});
            $("#method").val('Add');
			Bersihkan_Form();
			$("#ceklis").hide();
			$("#kode_ttbf").prop("readonly",true);
            $.get("<?php echo base_url('pu/generate_no_pu'); ?>",function(data){
                  $("#no_pu").val(data);
            });
          //  $('#wizard_with_validation').bootstrapWizard('show',0); 
          $("#wizard_with_validation").steps("setStep", 0); 
        
		});
		 
		
		$('#example').DataTable( {
			"ajax": "<?php echo base_url(); ?>pu/fetch_pu" 
		});

        $('#daftar_customer').DataTable( {
            "ajax": "<?php echo base_url(); ?>pu/fetch_nama_customer" 
        });

        $('#daftar_sales').DataTable( {
            "ajax": "<?php echo base_url(); ?>pu/fetch_nama_sales" 
        });

        $('#daftar_unit').DataTable( {
            "ajax": "<?php echo base_url(); ?>pu/fetch_nama_unit" 
        });

         $('#daftar_bank').DataTable( {
            "ajax": "<?php echo base_url(); ?>pu/fetch_nama_bank" 
        });
		
		$('#daftar_prioritycode').DataTable( {

            "ajax": "<?php echo base_url(); ?>pu/get_priority_code_assign" 
        });

        var daftar_customer = $('#daftar_customer').DataTable();
     
        $('#daftar_customer tbody').on('click', 'tr', function () {
            
            var content = daftar_customer.row(this).data()
            console.log(content);

            $("#nama_customer").val(content[2]);
            $("#id_customer").val(content[0]);
            $("#CariCustomerModal").modal('hide');
        } );

        var daftar_sales = $('#daftar_sales').DataTable();
     
        $('#daftar_sales tbody').on('click', 'tr', function () {
            
            var content = daftar_sales.row(this).data()
            console.log(content);

            $("#nama_sales").val(content[2]);
            $("#id_sales").val(content[0]);
            $("#CariSalesModal").modal('hide');
        } );

        var daftar_unit = $('#daftar_unit').DataTable();
     
        $('#daftar_unit tbody').on('click', 'tr', function () {
            
            var content = daftar_unit.row(this).data()
            console.log(content);

            $("#nama_unit").val("Blok Tower : "+content[1]+" Lantai : "+content[2]+" No Unit : "+content[3]+ " Luas : "+content[4]+ " Tipe : "+content[5] );
            $("#id_unit").val(content[0]);
            $("#CariUnitModal").modal('hide');
        } );

        var daftar_bank = $('#daftar_bank').DataTable();
     
        $('#daftar_bank tbody').on('click', 'tr', function () {
            
            var content = daftar_bank.row(this).data()
            console.log(content);

            $("#nama_bank").val(content[2]);
            $("#id_bank").val(content[0]);
            $("#CariBankModal").modal('hide');
        } );
		
		var daftar_prioritycode = $('#daftar_prioritycode').DataTable();
     
        $('#daftar_prioritycode tbody').on('click', 'tr', function () {
            
            var content = daftar_prioritycode.row(this).data()
            console.log(content);

            $("#id_bf").val(content[0]);
            $("#id_customer").val(content[7]);
            $("#id_sales").val(content[6]);
            $("#priority_code").val(content[2]);
			$("#ceklis").show();

            $("#CariPriorityCodeModal").modal('hide');
			
        } );
      
		 
	  });
  
		
		 
    </script>