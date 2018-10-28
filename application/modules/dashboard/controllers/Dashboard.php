<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 

class Dashboard extends Parent_Controller {
 

 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_dashboard');
 	}
	public function index(){
		//VP level
		$sql_g_div_all = $this->db->query("select * from m_formasi_jabatan GROUP BY id_divisi")->num_rows();
		 
		$sql_g_div_empty = $this->db->query("select * from m_formasi_jabatan WHERE npp = '' and id_departemen = 0 and id_seksi = 0")->num_rows();

		$sql_g_div_full = $this->db->query("select * from m_formasi_jabatan WHERE npp != '' and id_departemen = 0 and id_seksi = 0")->num_rows(); 

		//AVP level
		$sql_g_dep_all = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi = 0 and id_departemen != 0 ")->num_rows();
		 
		$sql_g_dep_empty = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi = 0 and id_departemen != 0 and npp = '' ")->num_rows();

		$sql_g_dep_full = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi = 0 and id_departemen != 0 and npp != '' ")->num_rows(); 

		//MGR level
		$sql_g_dep_all = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 ")->num_rows();
		 
		$sql_g_dep_empty = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 and npp = '' ")->num_rows();

		$sql_g_dep_full = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0  and npp != '' ")->num_rows(); 


		//SO level
		$sql_g_dep_all = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 ")->num_rows();
		 
		$sql_g_dep_empty = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 and npp = '' ")->num_rows();

		$sql_g_dep_full = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0  and npp != '' ")->num_rows(); 

		// $get_div_vp = $this->db->query("select * from m_formasi_jabatan GROUP BY id_divisi");
	 
		// $data = array();
		// foreach ($get_div_vp->result() as $key => $value) {

		// 	if($value->npp != '474784'){
		// 		$sub_array = array();  
		// 		$sub_array[] = $value->id;   
		// 	    $sub_array[] = $value->npp;
		// 	    $sub_array[] = $value->nama_jabatan; 
		// 	    $data[] = $sub_array;  
		// 	}
			 
			 
		// }
		// //jumlah dari seluruh data VP 
		// echo count($data);
		 

		  
		 
		// exit();

		$count_vp = $this->db->query("select * from m_formasi_jabatan GROUP BY id_divisi")->num_rows();
		//echo $count_vp;
		//exit();
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'dashboard/dashboard_view';
		//$data['all_div_vp'] = $get_div_vp;
		$data['dataparse'] = $this->m_dashboard->getMenu(0,"");
		$this->load->view('template_view',$data);
	}
	 
}
