<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 

class Gardu extends Parent_Controller {
 
  var $nama_tabel = 'm_gardu';
  var $daftar_field = array('id','id_gerbang','nama','lokasi','long_coordinate','lat_coordinate','user_insert','date_insert','user_update','date_update');
  var $primary_key = 'id';
  
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_gardu'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}
 
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'gardu/gardu_view';
		$this->load->view('template_view',$data);		
   
	}

   
  	public function fetch_gardu(){  
       $getdata = $this->m_gardu->fetch_gardu();
       echo json_encode($getdata);   
  	}  

  	public function fetch_gerbang(){  
       $getdata = $this->m_gardu->fetch_gerbang();
       echo json_encode($getdata);   
  	} 
	 
	public function get_data_edit(){
		$id = $this->uri->segment(3); 
		$get = $this->db->query("select a.*,b.nama as gerbang from m_gardu a left join m_gerbang b on b.id = a.id_gerbang where a.id = '".$id."' ")->row(); 
		echo json_encode($get,TRUE);
	}
	 
	public function hapus_data(){
		$id = $this->uri->segment(3);  
    

    $sqlhapus = $this->m_gardu->hapus_data($id);
		
		if($sqlhapus){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);
	}
	
   
	public function simpan_data(){
    
    
    $data_form = $this->m_gardu->array_from_post($this->daftar_field);

    $id = isset($data_form['id']) ? $data_form['id'] : NULL; 
 

    $simpan_data = $this->m_gardu->simpan_data_master($data_form,$this->nama_tabel,$this->primary_key,$id);
     
 
	
		if($simpan_data){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);

	}
	
   
       


}
