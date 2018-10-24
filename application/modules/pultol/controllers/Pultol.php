<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 

class Pultol extends Parent_Controller {

   
  var $nama_tabel = 'm_pultol';
  var $daftar_field = array('id','id_ruas','id_gerbang','jml_pultol');
  var $primary_key = 'id';
  
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_pultol'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url('login') . "';
				 </script>";
		}
 	}

   
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'pultol/pultol_view';
		$data['list_ruas'] = $this->m_pultol->fetch_all_ruas();
		$this->load->view('template_view',$data);		
   
	}

	 public function get_gerbang(){
     
		$id_ruas = $this->input->post('row');		 
 		$gerbang = $this->m_pultol->get_gerbang($id_ruas);

			echo '<select name="">';
    		echo '<option value="">--Pilih Gerbang--</option>';
				foreach ($gerbang as $row){
    				echo '<option value="'.$row->id.'">'.$row->nama.'</option>';
				}
			echo '</select>';
		 
  	}

  	public function get_new_gerbang(){
  		$id = $this->input->post('id');
  		$sql = $this->db->where('id_ruas',$id)->get('m_gerbang')->result();
  		echo "<select name = 'id_gerbang' id='id_gerbang'>";
  		foreach ($sql as $key => $value) {
  			echo "<option value = '".$value->id."' > ".$value->nama." </option>";
  		}
  		echo "</select>";

  	}
  
  	public function fetch_pultol(){  
       $getdata = $this->m_pultol->fetch_pultol();
       echo json_encode($getdata);   
  	}  


  	public function fetch_ruas(){  
       $getdata = $this->m_pultol->fetch_ruas();
       echo json_encode($getdata);   
  	}  

  	public function fetch_ruas_name(){
  		$id = $this->uri->segment(3);
  		echo json_encode($id);
  	}

    public function fetch_gerbang_name(){
      $id = $this->uri->segment(3);
      $data = $this->db->where('id',$id)->get('m_gerbang')->row();
      echo json_encode($data);
    }

  	public function fetch_gerbang(){  
  	   // $id_ruas =  $this->uri->segment(3);
  	   $id_ruas =  $this->input->post('id_ruas');
       $sql = "select * from m_gerbang where id_ruas = '".$id_ruas."' ";
   
       $getdata = $this->db->query($sql)->result();
       $return_arr = array();

       foreach ($getdata as $key => $value) {
       	 $row_array['nama'] = $value->nama;
       	 $row_array['lokasi'] = $value->lokasi;

         //$row_array['id'] = $value->id;
       	 $row_array['action'] = "<button typpe='button' onclick='GetDataSrc(".$value->id.");' class = 'btn btn-warning'> Get Data </button>";  
       	 array_push($return_arr,$row_array);
       }
       echo json_encode($return_arr);
 
  	}  
	
  
	public function get_data_edit(){
		$id = $this->uri->segment(3); 
    $sql = "select a.*,b.nama as nama_ruas,c.nama as nama_gerbang from m_pultol a 
               left join m_ruas b on b.id = a.id_ruas 
               left join m_gerbang c on c.id = a.id_gerbang where a.id = '".$id."' ";
		$get = $this->db->query($sql)->row();
		echo json_encode($get,TRUE);
	}
	
  
	public function hapus_data(){
		$id = $this->uri->segment(3);  
     
    	$sqlhapus = $this->m_pultol->hapus_data($id);
		
		if($sqlhapus){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);
	}
	 
	public function simpan_data(){
    
    
    $data_form = $this->m_pultol->array_from_post($this->daftar_field);

    $id = isset($data_form['id']) ? $data_form['id'] : NULL; 
 

    $simpan_data = $this->m_pultol->simpan_data($data_form,$this->nama_tabel,$this->primary_key,$id);
     
	
		if($simpan_data){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);

	}
	 
       


}
