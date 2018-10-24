<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 

class Pencapaian_vol_ban extends Parent_Controller {
 
  var $nama_tabel = 'm_pencapaian_vol_ban';
  var $daftar_field = array('id', 'blok_tower', 'lantai', 'no_pencapaian_vol_ban', 'luas', 'tipe', 'foto', 'harga', 'user_insert', 'date_insert', 'user_update', 'date_update');
  var $primary_key = 'id';
 
  //method construct dijalankan pertama kali dan terus berjalan selama class digunakan
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_pencapaian_vol_ban'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}

  //method untuk memanggil halaman pencapaian_vol_ban pertama kali
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'pencapaian_vol_ban/pencapaian_vol_ban_view';
		$data['selectlist'] = $this->db->query("select SUBSTRING(tanggal, 1, 7) as periode from t_jmto_trans_non_etool GROUP BY SUBSTRING(tanggal, 1, 7) ");
		$this->load->view('template_view',$data);		
   
	}
 
   public function pro_upload() {
   		$periode = str_replace("-","",$this->input->post('periode'));
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
          
 
            $highestRow = $sheet->getHighestRow();
            $highestColumn = $sheet->getHighestColumn(); 
            // echo "<pre>";
            // var_dump($highestColumn);
            // echo "</pre>";
            // exit();
            $cekisirow = array('Total','total','Sub Total','sub total','Total ','total ','Sub Total ','sub total ');
            for ($row = 4; $row <= $highestRow; $row++) {     


                //echo $row;
                // exit();  
                $rowData = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE);

                if($rowData[0][1] != 'Total' || $rowData[0][1] != 'total' || $rowData[0][1] != 'Sub Total' || $rowData[0][1] != 'sub total' ){

                	$selectdt = $this->db->query("select * from m_gerbang where nama = '".$rowData[0][1]."' OR nama LIKE '%".$rowData[0][1]."%' ")->row(); 
               		 $data = array( 
	                	"periode"=>$periode,
	                    "id_gerbang" => $selectdt->id,
	                    "gol1_masuk" => $rowData[0][2],
	                    "gol2_masuk" => $rowData[0][3],
	                    "gol3_masuk" => $rowData[0][4],
	                    "gol4_masuk" => $rowData[0][5],
	                    "gol5_masuk" => $rowData[0][6],
	                    "total_masuk"=> $rowData[0][7],
	                    "total_tnp_tp_ktp_masuk" => $rowData[0][8],
	                    "lhr_trans_ktp_masuk" => $rowData[0][9],
	                    "lhr_trans_non_ktp_masuk" => $rowData[0][10],
	                    "gol1_keluar" => $rowData[0][11],
	                    "gol2_keluar" => $rowData[0][12],
	                    "gol3_keluar" => $rowData[0][13],
	                    "gol4_keluar" => $rowData[0][14],
	                    "gol5_keluar" => $rowData[0][15],
	                    "total_keluar" => $rowData[0][16],
	                    "total_tnp_tp_ktp_keluar" => $rowData[0][17],
	                    "lhr_trans_ktp_keluar" => $rowData[0][18],
	                    "lhr_trans_non_ktp_keluar" => $rowData[0][19] 
	                );

               		echo "<pre>";
		            var_dump($data);
		            echo "</pre>";

                }
    //            	if (in_array($rowData[0][1], $cekisirow)){ 
				// 	break;
				// }else{ 
				//  	$selectdt = $this->db->query("select * from m_gerbang where nama = '".$rowData[0][1]."' OR nama LIKE '%".$rowData[0][1]."%' ")->row(); 
    //            		 $data = array( 
	   //              	"periode"=>$periode,
	   //                  "id_gerbang" => $selectdt->id,
	   //                  "gol1_masuk" => $rowData[0][2],
	   //                  "gol2_masuk" => $rowData[0][3],
	   //                  "gol3_masuk" => $rowData[0][4],
	   //                  "gol4_masuk" => $rowData[0][5],
	   //                  "gol5_masuk" => $rowData[0][6],
	   //                  "total_masuk"=> $rowData[0][7],
	   //                  "total_tnp_tp_ktp_masuk" => $rowData[0][8],
	   //                  "lhr_trans_ktp_masuk" => $rowData[0][9],
	   //                  "lhr_trans_non_ktp_masuk" => $rowData[0][10],
	   //                  "gol1_keluar" => $rowData[0][11],
	   //                  "gol2_keluar" => $rowData[0][12],
	   //                  "gol3_keluar" => $rowData[0][13],
	   //                  "gol4_keluar" => $rowData[0][14],
	   //                  "gol5_keluar" => $rowData[0][15],
	   //                  "total_keluar" => $rowData[0][16],
	   //                  "total_tnp_tp_ktp_keluar" => $rowData[0][17],
	   //                  "lhr_trans_ktp_keluar" => $rowData[0][18],
	   //                  "lhr_trans_non_ktp_keluar" => $rowData[0][19] 
    //             );
 			  
    //             $sql = $this->db->insert_string('m_pencapaian_vol_laban', $data);
    //             $this->db->query($sql);
				// }
 
                 
            }
 
        }
    }


  	public function fetch_lalin(){  
  	   //header("Content-type: application/json; charset=utf-8");

       $sql_gate = $this->db->query("select a.id_gate_in,b.nama as nama_gate from t_jmto_trans_non_etool a
       left join m_gerbang b on b.id = a.id_gate_in group by id_gate_in")->result();
       $data = array();
       $no = 1;  
       foreach ($sql_gate as $key => $value) {
       $sub_array = array();  
       $sub_array[] = $no;
       		//echo "nama gate : ".$value->nama_gate."- ";

       		$sql_tot = $this->db->query("select sum(gol1_tunai) as total_gol1,sum(gol2_tunai) as total_gol2,sum(gol3_tunai) as total_gol3,sum(gol4_tunai) as total_gol4,sum(gol5_tunai) as total_gol5, (sum(gol1_tunai) + sum(gol2_tunai) + sum(gol3_tunai) + sum(gol4_tunai) + sum(gol5_tunai)) as total_tunai_semua_per_gerbang,  (sum(gol1_opr_ktp) + sum(gol2_opr_ktp) + sum(gol3_opr_ktp) + sum(gol1_kary_ktp) + sum(gol2_kary_ktp) + sum(gol1_mit_ktp) + sum(gol2_mit_ktp)) as total_opr_semua_per_gerbang from t_jmto_trans_non_etool where id_gate_in = '".$value->id_gate_in."' ")->result();

       		foreach ($sql_tot as $keyz => $valuez) {
       		$sub_array[] = $value->nama_gate;
       		$sub_array[] = $valuez->total_gol1;
       		$sub_array[] = $valuez->total_gol2;
       		$sub_array[] = $valuez->total_gol3;
       		$sub_array[] = $valuez->total_gol4;
       		$sub_array[] = $valuez->total_gol5;
       		$sub_array[] = $valuez->total_opr_semua_per_gerbang;
       		$sub_array[] = $valuez->total_tunai_semua_per_gerbang;
       		$sub_array[] = '';
       		$sub_array[] = '';
       		$sub_array[] = '';
       			// echo "nama gate : ".$value->nama_gate. " |  total gol1 :" .$valuez->total_gol1. " total gol2 :" .$valuez->total_gol2. " total gol3 :" .$valuez->total_gol3. " total gol4 :" .$valuez->total_gol4. " total gol5 :" .$valuez->total_gol5. " Total 1-5 " .$valuez->total_semua_per_gerbang."<br>";
       		
       		}
       		
       	$data[] = $sub_array;  
        $no++;
       }
       $output = array("data"=>$data);
       echo json_encode($output);
       // echo "<pre>";
       // var_dump($sql_gate);
       // echo "</pre>";
  	}

  	public function fetch_chart_lalin_masuk(){  
  	   
  	  header("Content-type: application/json; charset=utf-8");
       $sql_gate = $this->db->query("select a.id_gate_in,b.nama as nama_gate from t_jmto_trans_non_etool a
       left join m_gerbang b on b.id = a.id_gate_in group by id_gate_in")->result();
       $data = array();
       $no = 1;  
       foreach ($sql_gate as $key => $value) {
       $sub_array = array();  
     

       		$sql_tot = $this->db->query("select sum(gol1_tunai) as total_gol1,sum(gol2_tunai) as total_gol2,sum(gol3_tunai) as total_gol3,sum(gol4_tunai) as total_gol4,sum(gol5_tunai) as total_gol5, (sum(gol1_tunai) + sum(gol2_tunai) + sum(gol3_tunai) + sum(gol4_tunai) + sum(gol5_tunai)) as total_semua_per_gerbang from t_jmto_trans_non_etool where id_gate_in = '".$value->id_gate_in."' ")->result();

       		foreach ($sql_tot as $keyz => $valuez) {
       		$sub_array['nama_gerbang'] = $value->nama_gate;
       		$sub_array['total'] = $valuez->total_semua_per_gerbang;
       		  
       		}
       		
       	$data[] = $sub_array;  
       
       }
       $output = array("data"=>$data);
       echo json_encode($output);
       // echo "<pre>";
       // var_dump($sql_gate);
       // echo "</pre>";
  	}  
	 


	public function kosongkan_data(){
	 	return $this->db->truncate('t_jmto_trans_non_etool');
	}


}
