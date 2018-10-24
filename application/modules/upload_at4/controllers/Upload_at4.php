<?php
defined('BASEPATH') OR exit('No direct script access allowed');
  
class Upload_at4 extends Parent_Controller { 
   
  var $nama_tabel = 'm_upload_at4';
  var $daftar_field = array('id', 'blok_tower', 'lantai', 'no_upload_at4', 'luas', 'tipe', 'foto', 'harga', 'user_insert', 'date_insert', 'user_update', 'date_update');
  var $primary_key = 'id';
  
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_upload_at4'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}

  
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'upload_at4/upload_at4_view';
		$this->load->view('template_view',$data);		
   
	}

    

  public function fetch_gerbang(){  
       $getdata = $this->m_upload_at4->fetch_gerbang();
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
                $this->upload->data();
            }

          

            $inputFileName = $folder . "/" . str_replace(" ","_", $fileName);
            // echo base_url().'/'.str_replace(" ","_", $inputFileName);
            // exit();
            //  Read your Excel workbook
            try {
                $inputFileType = IOFactory::identify($inputFileName);
                $objReader = IOFactory::createReader($inputFileType);
                $objPHPExcel = $objReader->load($inputFileName);
            } catch (Exception $e) {
                die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage());
            }

            
            $sheet = $objPHPExcel->getSheet(0);
            echo "<pre>";
            var_dump($sheet);
            echo "</pre>";
            exit();
 
            $highestRow = $sheet->getHighestRow();
            $highestColumn = $sheet->getHighestColumn(); 
            for ($row = 2; $row <= $highestRow; $row++) {               
                $rowData = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE);
                  
                $data = array(
                     

                    "tanggal" => $rowData[0][0],
                    "shift" => $rowData[0][1],
                    "id_bank" => $rowData[0][2],
                    "id_ruas" => $rowData[0][3],
                    "jumlah" => $rowData[0][4]
                    
                     
                );
 
         
                $sql = $this->db->insert_string('m_rupiah_etoll', $data);
                $this->db->query($sql);
                 
            }
 
        }
    }


	public function kosongkan_data(){
	 	return $this->db->truncate('t_jmto_trans_non_etool');
	}


}
