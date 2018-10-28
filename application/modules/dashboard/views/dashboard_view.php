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
                              Selamat Datang di Sistem Aplikasi Monitoring Jabatan
                            </h2>
                            <br>
                            
                        <div class="body">
                           <!--  <p> All DIV VP : <?php echo $all_div_vp; ?></p> -->
            	<div class="row clearfix">
                <!-- Line Chart -->
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                   		 <div class="card">
                        <div class="header">
                            <h2> Pemenuhan Formasi Berdasarkan Kelompok Jabatan</h2>
                             
                        </div>
                           <canvas id="bar_chart_masuk" height="150"></canvas>

                        </div>
                </div>
                
                <!-- Line Chart -->
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                   		 <div class="card">
                        <div class="header">
                            <h2>  Pemenuhan Formasi Berdasarkan Divisi</h2>
                             
                        </div>
                           <canvas id="bar_chart_keluar" height="150"></canvas>

                        </div>
                </div>
                </div>
                <div class="row clearfix">
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                         <div class="card">
                        <div class="header">
                            <h2>  Map Formasi Jabatan </h2>
                             
                        </div>
                            <div class="tree">
                                <?php 
                                echo $dataparse;
                                ?>
                              
                            </div>
                        </div>
                </div>
                </div>
          
                
            </div>

 
                        
                              
                        </div>
                    </div>
                </div>
            </div>
         


        </div>
</section>
<script type="text/javascript">
	
    $(function () { 
     new Chart(document.getElementById("bar_chart_masuk").getContext("2d"), getChartJsmasuk());
     new Chart(document.getElementById("bar_chart_keluar").getContext("2d"), getChartJskeluar());
       
    });
    function getChartJsmasuk() {
    var config = null;
   

            config = {
                type: 'bar',
                data: {
                    labels: ["Madiun", "Wilangan", "Kartasura"],
                    datasets: [{
                        label: "My First dataset",
                        data: [15221, 11408, 12555],
                        backgroundColor: 'rgba(0, 188, 212, 0.8)'
                    }]
                },
                options: {
                    responsive: true,
                    legend: false
                }
            }
     
        return config;
    }

	function getChartJskeluar() {
    var config = null;
   

            config = {
                type: 'bar',
                data: {
                    labels: ["Madiun", "Wilangan", "Kartasura"],
                    datasets: [{
                        label: "My First dataset",
                        data: [15221, 11408, 12555],
                        backgroundColor: 'rgba(0, 188, 212, 0.8)'
                    }]
                },
                options: {
                    responsive: true,
                    legend: false
                }
            }
     
        return config;
    }

</script>

<script src="<?php echo base_url(); ?>assets/js/chart.bundle.js"></script>

     