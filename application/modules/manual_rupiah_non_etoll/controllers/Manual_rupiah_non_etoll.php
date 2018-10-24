<?php
defined('BASEPATH') OR exit('No direct script access allowed');
  
class Manual_rupiah_non_etoll extends Parent_Controller { 
   
  var $nama_tabel = 'm_rupiah_non_etoll';
 
  var $primary_key = 'id';
  
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_manual_rupiah_non_etoll'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}

  
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'manual_rupiah_non_etoll/manual_rupiah_non_etoll_view';
		$this->load->view('template_view',$data);		
   
	}

   
  	public function fetch_manual_rupiah_non_etoll(){  
       $getdata = $this->m_manual_rupiah_non_etoll->fetch_manual_rupiah_non_etoll();
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
                    "id_pic" => $rowData[0][2],
                    "tunai" => $rowData[0][3],
                    "opr" => $rowData[0][4],
                    "karyawan" => $rowData[0][5],
                    "mitra" => $rowData[0][6]
                     
                     
                );
 
         
                $sql = $this->db->insert_string('m_rupiah_non_etoll', $data);
                $this->db->query($sql);
                 
            }
 
        }
    }


	public function kosongkan_data(){
	 	return $this->db->truncate('t_jmto_trans_non_etool');
	}


}
