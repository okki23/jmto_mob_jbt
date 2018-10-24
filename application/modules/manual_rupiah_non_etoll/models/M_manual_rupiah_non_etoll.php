<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class M_manual_rupiah_non_etoll extends Parent_Model { 
   

  var $nama_tabel = 'm_manual_rupiah_non_etoll';
  
    
  public function __construct(){
        parent::__construct();
        $this->load->database();
  }
  public function fetch_manual_rupiah_non_etoll(){   
       $getdata = $this->db->get($this->nama_tabel)->result();
       $data = array();  
       $no = 1;
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                $sub_array[] = $no;
                $sub_array[] = $row->blok_tower;   
          $sub_array[] = $row->no_manual_rupiah_non_etoll;   
                $sub_array[] = $row->tipe;  
          $sub_array[] = "Rp.".number_format($row->harga,0);  
         
          $sub_array[] = '<a href="javascript:void(0)" class="btn btn-primary btn-xs waves-effect" id="detail" onclick="Show_Detail('.$row->id.');" > <i class="material-icons">aspect_ratio</i> Detail </a> 
                &nbsp; <a href="javascript:void(0)" class="btn btn-warning btn-xs waves-effect" id="edit" onclick="Ubah_Data('.$row->id.');" > <i class="material-icons">create</i> Ubah </a> 
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
