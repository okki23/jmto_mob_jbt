<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class M_formasi_jabatan extends Parent_Model { 
  
  var $nama_tabel = 'm_formasi_jabatan';
  var $daftar_field = array('id','id_lokasi','npp','nama_formasi_jabatan');
  var $primary_key = 'id';
  
	  
  public function __construct(){
        parent::__construct();
        $this->load->database();
  }
  public function fetch_formasi_jabatan(){
       $sql = "select a.*,b.nama_lokasi from m_formasi_jabatan a
               LEFT JOIN m_lokasi b on b.id = a.id_lokasi";
               
		   $getdata = $this->db->query($sql)->result();
		   $data = array();  
		   $no = 1;
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                $sub_array[] = $no;
                $sub_array[] = $row->npp;  
                $sub_array[] = $row->nama_formasi_jabatan;  
                $sub_array[] = $row->nama_lokasi;
                
                 
			          $sub_array[] = '<a href="javascript:void(0)" class="btn btn-warning btn-xs waves-effect" id="edit" onclick="Ubah_Data('.$row->id.');" > <i class="material-icons">create</i> Ubah </a>  &nbsp; <a href="javascript:void(0)" id="delete" class="btn btn-danger btn-xs waves-effect" onclick="Hapus_Data('.$row->id.');" > <i class="material-icons">delete</i> Hapus </a>';  
                $sub_array[] = $row->id_lokasi;
               
                $data[] = $sub_array;  
                $no++;
           }  
          
		   return $output = array("data"=>$data);
		    
    }

     public function fetch_lokasi(){
      
       $getdata = $this->db->get('m_lokasi')->result();
       $data = array();  
      
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
             
                $sub_array[] = $row->nama_lokasi;  
                $sub_array[] = $row->id;  
                 
                  
                $data[] = $sub_array;  
              
           }  
          
       return $output = array("data"=>$data);
        
    }

  
  
	 
 
}
