<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class M_pultol extends Parent_Model { 
   

  var $nama_tabel = 'm_pultol';
  var $daftar_field = array('id','id_ruas','id_gerbang','jml_pultol');
  var $primary_key = 'id';

	  
  public function __construct(){
        parent::__construct();
        $this->load->database();
  }
  public function fetch_pultol(){ 
       $sql = "select a.*,b.nama as nama_ruas,c.nama as nama_gerbang from m_pultol a 
               left join m_ruas b on b.id = a.id_ruas 
               left join m_gerbang c on c.id = a.id_gerbang";

		   $getdata = $this->db->query($sql)->result();
		   $data = array();  
		   $no = 1;
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                $sub_array[] = $no;
                $sub_array[] = $row->nama_ruas;   
			          $sub_array[] = $row->nama_gerbang;   
                $sub_array[] = $row->jml_pultol;  
			     
			          $sub_array[] = '<a href="javascript:void(0)" class="btn btn-warning btn-xs waves-effect" id="edit" onclick="Ubah_Data('.$row->id.');" > <i class="material-icons">create</i> Ubah </a> 
								&nbsp; <a href="javascript:void(0)" id="delete" class="btn btn-danger btn-xs waves-effect" onclick="Hapus_Data('.$row->id.');" > <i class="material-icons">delete</i> Hapus </a>';  
               
                $data[] = $sub_array;  
                 $no++;
           }  
          
		   return $output = array("data"=>$data);
		    
    }

    public function fetch_all_ruas(){
      return $this->db->get('m_ruas')->result();
    }

    public function fetch_ruas(){
     
       $getdata = $this->db->get('m_ruas')->result();
       $data = array();  
       $no = 1;
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                $sub_array[] = $row->nama;
                $sub_array[] = $row->lokasi;
                $sub_array[] = $row->id;   
               
                $data[] = $sub_array;  
                 $no++;
           }  
          
       return $output = array("data"=>$data);
        
    }

    public function get_gerbang($id_ruas){
    if (isset($id_ruas)) {
      $this->db->where('id_ruas', $id_ruas);
    }

    $this->db->select('id,nama');
    $this->db->from('m_gerbang');
    $result = $this->db->get();
    return $result->result();
  }

    public function fetch_gerbang(){
     
       $getdata = $this->db->get('m_gerbang')->result();
       $data = array();  
       $no = 1;
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                $sub_array[] = $row->nama;
                $sub_array[] = $row->lokasi;
                $sub_array[] = $row->id;   
               
                $data[] = $sub_array;  
                 $no++;
           }  
          
       return $output = array("data"=>$data);
        
    }
  
  
	 
 
}
