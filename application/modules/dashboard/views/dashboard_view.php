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
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                   		 <div class="card">
                        <div class="header">
                            
                        </div>
                           
                        <div id="bar_a" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

                           <!-- <canvas 
                            id="bar_chart_masuk" height="150"></canvas> -->

                        </div>
                </div>
                
                <!-- Line Chart -->
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                   		 <div class="card">
                        <div class="header">
                            <h2 align="center">  Pemenuhan Formasi Berdasarkan Divisi</h2>
                             <?php
                             echo $dataparse_div;
                             ?>
                             <div class="chart-container" id="chart"></div>


                        </div>
                         
                        </div>
                </div>
                </div>
                <div class="row clearfix">
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                         <div class="card">
                        <div class="header">
                            <h2>  Map Formasi Jabatan </h2>
                             
                        </div>
                                
                      
                             <div class="container-fluid">
      
                            <?php
                            echo $dataparse;
                            ?>
                            <div id="chart-container-new" style="border:1px solid #999; padding:10px; border-radius:8px;"></div>
     
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
<style type="text/css">
    #chart, #chart-advanced, #chart-3d {height: 400px; width: 100%; position: relative; }
</style>
<script src="http://code.highcharts.com/highcharts.js"></script>

<script type="text/javascript" src="<?php echo base_url('assets/'); ?>grouped-categories.js"></script>

<script src="http://code.highcharts.com/modules/exporting.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">
<link rel="stylesheet" href="<?php echo base_url('assets/orgchart/'); ?>org_new.css">
<script type="text/javascript" src="<?php echo base_url('assets/orgchart/'); ?>org.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/orgchart/'); ?>orgExtras.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/orgchart/'); ?>scripts.js"></script>
<!-- 
<link rel="stylesheet" href="<?php echo base_url('assets/'); ?>jquery.orgchart.css">
<link rel="stylesheet" href="<?php echo base_url('assets/'); ?>orgchart_style.css">
<script type="text/javascript" src="<?php echo base_url('assets/'); ?>jquery.orgchart.js"></script> -->
<script type="text/javascript" src="<?php echo base_url('assets/'); ?>html2canvas.js"></script>
<script type="text/javascript" src="<?php echo base_url('assets/'); ?>html2canvas.min.js"></script>
 
<script>
        Highcharts.setOptions({
                chart: {
                        borderWidth: 10,
                        borderColor: '#e8eaeb',
                        borderRadius: 0,
                        backgroundColor: '#f7f7f7'
                },
                title: {
                        style: {
                                'fontSize': '1em'
                        },
                        useHTML: true,
                        x: -10,
                        y: 8,
                        text: ''
                }
        });
</script>  

<script>
window.chart = new Highcharts.Chart({
    chart: {
        renderTo: "chart",
        type: "column"
    },
    series:
    [{
        data: [4, 14, 18,89, 5, 6, 5,50, 14, 15, 18,30,20,12,4,33,44,33,34,45,32,54,32,32]
    }],
    xAxis: {
        categories: [{
            "name": "Operation Management",
            "categories": ["1", "2", "3","4","5","6"]
        }, {
            "name": "Information Technology",
            "categories": ["1", "2", "3","4","5","6"]
        }, {
            "name": "Human Capital",
            "categories": ["1", "2", "3","4","5","6"]
        },
        {
            "name": "General Affair",
            "categories": ["1", "2", "3","4","5","6"]
        }]
    }
});
</script>

<script type="text/javascript">
     
	  
    $(function () {

        // $('#chart-container').orgchart({
        //     'data' : $('#ul-data')
        // });

   $('#bar_a').highcharts({
                 chart: {
        type: 'column'
    },
    title: {
        text: 'Pemenuhan Formasi Berdasarkan Kelompok Jabatan'
    },
    xAxis: {
        categories:  <?php echo $datacat; ?>,
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Persentase'
        },
        stackLabels: {
            enabled: true,
            style: {
                fontWeight: 'bold',
                color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
            }
        }
    },
    legend: {
        align: 'right',
        x: -30,
        verticalAlign: 'top',
        y: 25,
        floating: true,
        backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
        borderColor: '#CCC',
        borderWidth: 1,
        shadow: false
    },
    tooltip: {
        headerFormat: '<b>{point.x}</b><br/>',
        pointFormat: '{series.name}: {point.y}<br/>Total: {point.stackTotal}'
    },
    plotOptions: {
        column: {
            stacking: 'normal',
            dataLabels: {
                enabled: true,
                color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
            }
        }
    },
        series : [{
            name: 'Kosong',
            data: <?php echo $datakosong; ?>,
            color: '#0000FF',
        },{
          name: 'Terisi',
          data: <?php echo $dataisi; ?>,
          color: '#FF8C00',
      }]
                //series: '<?php echo base_url('dashboard/chart_data_kelas_jabatan_kosong'); ?>'
            });
        });
</script>

 

<!-- <script src="<?php echo base_url(); ?>assets/js/chart.bundle.js"></script> -->

     