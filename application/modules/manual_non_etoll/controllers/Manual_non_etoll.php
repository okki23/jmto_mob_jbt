<?php
defined('BASEPATH') OR exit('No direct script access allowed');
  
class Manual_non_etoll extends Parent_Controller { 
   
  var $nama_tabel = 't_jmto_trans_non_etool';
 
  var $primary_key = 'id';
  
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_manual_non_etoll'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}

  
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'manual_non_etoll/manual_non_etoll_view';
		$this->load->view('template_view',$data);		
   
	}

   
  	public function fetch_manual_non_etoll(){  
       $getdata = $this->m_manual_non_etoll->fetch_manual_non_etoll();
       echo json_encode($getdata);   
  	}	  
	
     
   
    
   public function pro_upload() {
        if (!isset($_POST)) {
            show_404();
        } else {
            $this->load->library("phpexcel/PHPExcel");
            $this->load->library("phpexcel/PHPExcel/IOFactory");
            $folder = "upload";
            if (!is_dir($folder)) {
                mkdir($folder, 0777, TRUE);
            }
            $fileName = $_FILES['excel_file']['name'];



            $config['upload_path'] = $folder;
            $config['upload_url'] = $folder;
            $config['file_name'] =  $fileName;
            $config['allowed_types'] = 'xls|xlsx';
            $config['max_size'] = '20000';
            $this->load->library('upload');
            $this->upload->initialize($config);

            if ($this->upload->do_upload('excel_file')) {
                $media = $this->upload->data();
            }

          

            $inputFileName = $folder . "/" . $media['file_name'];

            //  Read your Excel workbook
            try {
                $inputFileType = IOFactory::identify($inputFileName);
                $objReader = IOFactory::createReader($inputFileType);
                $objPHPExcel = $objReader->load($inputFileName);
            } catch (Exception $e) {
                die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage());
            }

            
            $sheet = $objPHPExcel->getSheet(0);

            // var_dump($sheet);
            // exit();
 
            $highestRow = $sheet->getHighestRow();
            $highestColumn = $sheet->getHighestColumn(); 
            
            for ($row = 2; $row <= $highestRow; $row++) { 

                $rowData = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE);
                  
                $data = array( 
                    "tanggal" => $rowData[0][0],
                    "shift" => $rowData[0][1],
                    "id_ruas" => $rowData[0][2],
                    "id_gate_out" => $rowData[0][3],
                    "id_gate_in" => $rowData[0][4],
                    "gol1_tunai" => $rowData[0][5],
                    "gol2_tunai" => $rowData[0][6],
                    "gol3_tunai" => $rowData[0][7],
                    "gol4_tunai" => $rowData[0][8],
                    "gol5_tunai"=> $rowData[0][9],
                    "gol1_opr_ktp" => $rowData[0][10],
                    "gol2_opr_ktp" => $rowData[0][11],
                    "gol3_opr_ktp" => $rowData[0][12],
                    "gol1_kary_ktp" => $rowData[0][13],
                    "gol2_kary_ktp" => $rowData[0][14],
                    "gol1_mit_ktp" => $rowData[0][15],
                    "gol2_mit_ktp" => $rowData[0][16]
                );
 
         
                $sql = $this->db->insert_string('t_jmto_trans_non_etool', $data);
                $this->db->query($sql);
                // echo "<pre>";
                // var_dump($data);
                // echo "</pre>";
            }
 
        }
    }


	public function kosongkan_data(){
	 	return $this->db->truncate('t_jmto_trans_non_etool');
	}


}
