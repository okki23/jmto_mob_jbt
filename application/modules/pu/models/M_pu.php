<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
author     : Karlina
email      : karlinamaksum19@gmail.com
copyright  : 2018 
deskripsi  : Class M_pu berisi rincian method atau fungsi logic yang digunakan untuk melakukan transaksi data master pu, dimana method yang terdaftar mengadopsi dari Parent Model
*/
class M_pu extends Parent_Model { 
  
  /*variabel global yang digunakan untuk instance di masing masing method agar dapat
  digunakan sewaktu waktu tanpa harus menulis ulang
  */

  var $nama_tabel = 't_pu';
  var $daftar_field = array('id','no_pu', 'id_customer', 'id_sales', 'id_bank', 'id_bf', 'id_unit', 'cicilan', 'date_assign', 'user_assign' );
  var $primary_key = 'id';

	  
  public function __construct(){
        parent::__construct();
        $this->load->database();
  }
 
	public function fetch_pu(){   
		   $getdata = $this->db->query("select a.*,b.kode_pelanggan,b.nama as nama_customer,c.nik,c.nama as nama_sales,d.kode_ttbf,d.priority_code,e.blok_tower,e.lantai,e.no_unit,e.luas,e.tipe,e.foto,e.harga from t_pu a
                    LEFT join m_customer b on b.id = a.id_customer
                    LEFT JOIN m_sales c on c.id = a.id_sales
                    LEFT JOIN t_booking_fee d on d.id = a.id_bf
                    LEFT JOIN m_unit e on e.id = a.id_unit")->result();
		   $data = array();  
		   $no = 1;
		   foreach($getdata as $row){  
                $sub_array = array();  
                $sub_array[] = $no;
                $sub_array[] = $row->no_pu;   
			          $sub_array[] = $row->nama_customer;   
                $sub_array[] = $row->blok_tower;  
      			 		
               
      			    $sub_array[] = '<a href="javascript:void(0)" class="btn btn-primary btn-xs waves-effect" id="detail" onclick="Show_Detail('.$row->id.');" > <i class="material-icons">aspect_ratio</i> Detail </a> 
									&nbsp; <a target="_blank" href="'.base_url('pu/cetak_kp/'.$row->id).'" id="delete" class="btn btn-primary btn-xs waves-effect" onclick="Cetak_KP('.$row->id.');" > <i class="material-icons">print</i> Cetak KP </a>
      								';  
               
                $data[] = $sub_array;  
                $no++;
           }  
          
		   return $output = array("data"=>$data);
		    
    }
	


  public function fetch_nama_unit(){   
       $getdata = $this->db->query("select * from m_unit")->result();
       $data = array();  
        
       foreach($getdata as $row){  
                $sub_array = array();  
            
                $sub_array[] = $row->id;   
                $sub_array[] = $row->blok_tower;   
                $sub_array[] = $row->lantai;  
                $sub_array[] = $row->no_unit;  
                $sub_array[] = $row->luas;   
                $sub_array[] = $row->harga;         
               
                $sub_array[] = '<a href="javascript:void(0)" class="btn btn-primary btn-xs waves-effect" id="detail" onclick="Show_Detail('.$row->id.');" > <i class="material-icons">aspect_ratio</i> Detail </a> 
                   &nbsp; <a href="javascript:void(0)" id="delete" class="btn btn-primary btn-xs waves-effect" onclick="KP('.$row->id.');" > <i class="material-icons">print</i> Cetak KP </a>
                      &nbsp; <a href="javascript:void(0)" id="delete" class="btn btn-danger btn-xs waves-effect" onclick="Hapus_Data('.$row->id.');" > <i class="material-icons">delete</i> Hapus </a>';  
               
                $data[] = $sub_array;  
                
           }  
          
       return $output = array("data"=>$data);
        
    }

    public function fetch_bank(){   
       $getdata = $this->db->query("select * from")->result();
       $data = array();  
       $no = 1;
       foreach($getdata as $row){  
                $sub_array = array();  
                $sub_array[] = $no;
                $sub_array[] = $row->no_pu;   
          $sub_array[] = $row->nama_customer;   
                $sub_array[] = $row->blok_tower;  
            $sub_array[] = $row->lantai;  
        $sub_array[] = $row->no_unit;         
               
                $sub_array[] = '<a href="javascript:void(0)" class="btn btn-primary btn-xs waves-effect" id="detail" onclick="Show_Detail('.$row->id.');" > <i class="material-icons">aspect_ratio</i> Detail </a> 
                     
                      &nbsp; <a href="javascript:void(0)" id="delete" class="btn btn-danger btn-xs waves-effect" onclick="Hapus_Data('.$row->id.');" > <i class="material-icons">delete</i> Hapus </a>';  
               
                $data[] = $sub_array;  
                $no++;
           }  
          
       return $output = array("data"=>$data);
        
    }
  
	public function get_priority_code_assign(){
		$sql = $this->db->query("select a.*,b.nama as nama_customer,c.nama as nama_sales from t_booking_fee a
                left join m_customer b on b.id = a.id_customer
                left join m_sales   c on c.id = id_sales                
                where not exists
(select d.* from t_pu d where d.id_bf = a.id)
")->result();
								 $data = array();  
		   $no = 1;
		   foreach($sql as $row){  
                $sub_array = array();  
                $sub_array[] = $row->id;   
                $sub_array[] = $row->kode_ttbf;   
			          $sub_array[] = $row->priority_code;   
                $sub_array[] = $row->nama_customer;  
          			$sub_array[] = $row->nama_sales;  
        				$sub_array[] = $row->date_assign;
                $sub_array[] = $row->id_sales;
                $sub_array[] = $row->id_customer;  				
              
                $data[] = $sub_array;  
                $no++;
           }  
          
		   return $output = array("data"=>$data);
	}


	public function fetch_nama_customer(){   
       $getdata = $this->db->get('m_customer')->result();
       $data = array();  
        
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                
                $sub_array[] = $row->id;  
                $sub_array[] = $row->kode_pelanggan;  
                $sub_array[] = $row->nama;  
                $sub_array[] = $row->email;  
                $sub_array[] = $row->alamat;   
                $data[] = $sub_array;  
                  
           }  
          
       return $output = array("data"=>$data);
        
    }

    public function fetch_nama_sales(){   
       $getdata = $this->db->get('m_sales')->result();
       $data = array();  
        
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                
                $sub_array[] = $row->id;  
                $sub_array[] = $row->nik;  
                $sub_array[] = $row->nama;  
                $sub_array[] = $row->no_telp;  
                $sub_array[] = $row->email;   
                $data[] = $sub_array;  
                  
           }  
          
       return $output = array("data"=>$data);
        
    }
	
	public function fetch_nama_bank(){   
       $getdata = $this->db->get('m_bank')->result();
       $data = array();  
        
           foreach($getdata as $row)  
           {  
                $sub_array = array();  
                
                $sub_array[] = $row->id;  
                $sub_array[] = $row->kode_bank;  
                $sub_array[] = $row->nama_bank;  
                $sub_array[] = $row->no_rekening;  
                $sub_array[] = $row->jumlah_kpa;   
                $data[] = $sub_array;  
                  
           }  
          
       return $output = array("data"=>$data);
        
    }
	
	 

  
  
	 
 
}
