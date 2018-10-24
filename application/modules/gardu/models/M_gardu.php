<?php
defined('BASEPATH') OR exit('No direct script access allowed');
  
class M_gardu extends Parent_Model { 

  var $nama_tabel = 'm_gardu';
  var $daftar_field = array('id','id_gerbang','nama','lokasi','long_coordinate','lat_coordinate','user_insert','date_insert','user_update','date_update');
  var $primary_key = 'id';

	  
  public function __construct(){
        parent::__construct();
        $this->load->database();
  }
  public function fetch_gardu(){   
       $sql = "select a.*,b.nama as nama_ruas from m_gardu a
               LEFT JOIN m_gerbang b on b.id = a.id_gerbang";
		   $getdata = $this->db->query($sql)->result();
		   $data = array();  
		   $no = 1;
          foreach($getdata as $row) {  
                $sub_array = array();  
                $sub_array[] = $no;
                $sub_array[] = $row->nama_ruas;   
			          $sub_array[] = $row->nama;   
                $sub_array[] = $row->lokasi;  
			     
         
			    $sub_array[] = '<a href="javascript:void(0)" class="btn btn-warning btn-xs waves-effect" id="edit" onclick="Ubah_Data('.$row->id.');" > <i class="material-icons">create</i> Ubah </a> 
								&nbsp; <a href="javascript:void(0)" id="delete" class="btn btn-danger btn-xs waves-effect" onclick="Hapus_Data('.$row->id.');" > <i class="material-icons">delete</i> Hapus </a>';  
               
                $data[] = $sub_array;  
                 $no++;
           }  
          
		   return $output = array("data"=>$data);
		    
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
