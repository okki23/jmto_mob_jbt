<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Get_lalin extends Parent_Controller {
 
  var $nama_tabel = 'm_get_lalin';
  var $daftar_field = array('id','kode_menu','nama_menu','link','kode_parent');
  var $primary_key = 'id';
  
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_get_lalin','me'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}
 
   	 
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['dataparse'] = $this->me->getMenu(0,"");
		$data['konten'] = 'get_lalin/get_lalin_view';
		$this->load->view('template_view',$data);		
   
	}

	public function fetch_gt(){
		//header("Content-type: application/json; charset=utf-8");
		$getdata = $this->db->query("select b.nama as nama_gerbang from t_jmto_trans_non_etool a left join m_gerbang b on b.id = a.id_gate_in group by a.id_gate_in")->result();

		// $return_arr = array();

  //      foreach ($data as $key => $value) {
  //      	 $row_array[] = $value->nama_gerbang; 
  //      	 array_push($return_arr,$row_array);
  //      }
  //      echo json_encode(array('jsondata'=>$return_arr));
		//echo json_encode($data,JSON_FORCE_OBJECT);
			$data = array();  
		 
         	foreach($getdata as $row) {  
                $sub_array = array();   
                $sub_array['nama_gerbang'] = $row->nama_gerbang;    
                $data[] = $sub_array;  
               
           }  
          
		   echo json_encode(array("data"=>$data));
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

       		$sql_tot = $this->db->query("select sum(gol1_tunai) as total_gol1,sum(gol2_tunai) as total_gol2,sum(gol3_tunai) as total_gol3,sum(gol4_tunai) as total_gol4,sum(gol5_tunai) as total_gol5, (sum(gol1_tunai) + sum(gol2_tunai) + sum(gol3_tunai) + sum(gol4_tunai) + sum(gol5_tunai)) as total_semua_per_gerbang from t_jmto_trans_non_etool where id_gate_in = '".$value->id_gate_in."' ")->result();

       		foreach ($sql_tot as $keyz => $valuez) {
       		$sub_array[] = $value->nama_gate;
       		$sub_array[] = $valuez->total_gol1;
       		$sub_array[] = $valuez->total_gol2;
       		$sub_array[] = $valuez->total_gol3;
       		$sub_array[] = $valuez->total_gol4;
       		$sub_array[] = $valuez->total_gol5;
       		$sub_array[] = $valuez->total_semua_per_gerbang;
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
	 

}
