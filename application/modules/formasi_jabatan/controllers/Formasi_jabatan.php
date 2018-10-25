<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class formasi_jabatan extends Parent_Controller {
 
  var $nama_tabel = 'm_formasi_jabatan';
  var $daftar_field = array('id','id_lokasi','npp','nama_formasi_jabatan');
  var $primary_key = 'id';
  
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_formasi_jabatan'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}
 
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'formasi_jabatan/formasi_jabatan_view';
		$this->load->view('template_view',$data);		
   
	}
 
  	public function fetch_formasi_jabatan(){  
       $getdata = $this->m_formasi_jabatan->fetch_formasi_jabatan();
       echo json_encode($getdata);   
  	}

  	public function fetch_lokasi(){  
       $getdata = $this->m_formasi_jabatan->fetch_lokasi();
       echo json_encode($getdata);   
  	}  
	 
	public function get_data_edit(){
		$id = $this->uri->segment(3);
		$sql = "select a.*,b.nama_lokasi from m_formasi_jabatan a
				LEFT JOIN m_lokasi b on b.id = a.id_lokasi where a.id = '".$id."' ";
		$get = $this->db->query($sql)->row();
		echo json_encode($get,TRUE);
	}
	 
	public function hapus_data(){
		$id = $this->uri->segment(3);  
    

    $sqlhapus = $this->m_formasi_jabatan->hapus_data($id);
		
		if($sqlhapus){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);
	}
	 
	public function simpan_data(){
    
    
    $data_form = $this->m_formasi_jabatan->array_from_post($this->daftar_field);

    $id = isset($data_form['id']) ? $data_form['id'] : NULL; 
 

    $simpan_data = $this->m_formasi_jabatan->simpan_data($data_form,$this->nama_tabel,$this->primary_key,$id);
 
		if($simpan_data){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);

	}
 
  
       


}
