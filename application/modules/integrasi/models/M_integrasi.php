<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_integrasi extends Parent_Model { 
  
  var $nama_tabel = 'm_integrasi';
  var $daftar_field = array('id','id_ruas','id_integrasi');
  var $primary_key = 'id';

	  
  public function __construct(){
        parent::__construct();
        $this->load->database();
  }
  public function fetch_integrasi(){
       $sql = "select a.*,b.nama as nama_ruas,c.nama as ruas_integrasi from m_integrasi a 
       left join m_ruas b on b.id = a.id_ruas
       left join m_ruas c on c.id = a.id_integrasi";   
		   $getdata = $this->db->query($sql)->result();
		   $data = array();  
		   $no = 1;
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                $sub_array[] = $row->nama_ruas;
                $sub_array[] = $row->ruas_integrasi;    
         
			    $sub_array[] = '<a href="javascript:void(0)" id="delete" class="btn btn-danger btn-xs waves-effect" onclick="Hapus_Data('.$row->id.');" > <i class="material-icons">delete</i> Hapus </a>';  
               
                $data[] = $sub_array;  
                 $no++;
           }  
          
		   return $output = array("data"=>$data);
		    
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

    public function fetch_ruas_integrasi(){
     
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

  
  
	 
 
}
