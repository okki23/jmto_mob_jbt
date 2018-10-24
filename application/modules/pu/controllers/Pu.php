<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
author     : Karlina
email      : karlinamaksum19@gmail.com
copyright  : 2018 
deskripsi  : Class pu berisi rincian method atau fungsi logic yang digunakan untuk melakukan olah data master pu, dimana method yang terdaftar mengadopsi dari Parent Controller
*/

class Pu extends Parent_Controller {

  /*variabel global yang digunakan untuk instance di masing masing method agar dapat
  digunakan sewaktu waktu tanpa harus menulis ulang
  */
  var $nama_tabel = 't_pu';
  var $daftar_field = array('id', 'no_pu','id_customer', 'id_sales', 'id_bank', 'id_bf', 'id_unit', 'cicilan', 'date_assign', 'user_assign');
  var $primary_key = 'id';
 
  //method construct dijalankan pertama kali dan terus berjalan selama class digunakan
 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_pu'); 
		if(!$this->session->userdata('username')){
		   echo "<script language=javascript>
				 alert('Anda tidak berhak mengakses halaman ini!');
				 window.location='" . base_url() . "';
				 </script>";
		}
 	}

  //method untuk memanggil halaman pu pertama kali
	public function index(){
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'pu/pu_view';
		$this->load->view('template_view',$data);		
   
	}

  //method untuk memanggil data dari database untuk di buatkan data JSON dan di parse ke view yang akan di sajikan dalam datatable
  	public function fetch_pu(){  
       $getdata = $this->m_pu->fetch_pu();
       echo json_encode($getdata);   
  	}  

  	public function generate_ttbf(){
		 
		echo "TBF".generate_ttbf(6);
	}
	
	public function generate_no_pu(){
	 
		echo "LK".generate_no_pu(6);
	}
	public function cetak_kp(){
		$id = $this->uri->segment(3);
		$sql = "select a.*,b.nama as nama_customer,b.no_hp,b.kode_pelanggan,b.alamat,b.email,c.nik,c.nama as nama_sales,d.nama_bank,d.jumlah_kpa,d.no_rekening,d.kode_bank,e.blok_tower,e.harga,e.lantai,e.luas,e.no_unit,e.tipe from t_pu a
INNER JOIN m_customer b on b.id = a.id_customer
INNER JOIN m_sales c on c.id = a.id_sales
INNER JOIN m_bank d on d.id = a.id_bank
INNER JOIN m_unit e on e.id = a.id_unit where a.id = '".$id."' ";
$trans = $this->db->query($sql)->row();
			  $data['trans'] = $trans;

			  $this->load->library("pdf");
              $this->pdf->setPrintHeader(false);
              $this->pdf->setPrintFooter(true, 'aku', 'kau');
              $this->pdf->SetHeaderData("", "", 'Judul Header', "codedb.co");
              $this->pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
              // set auto page breaks
              $this->pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
              // add a page
              $this->pdf->AddPage("P", "A4");
              // set font
              $this->pdf->SetFont("helvetica", "", 9);
              $html = $this->load->view('pu/cetak_kp', $data, true);

              $this->pdf->writeHTML($html, true, false, true, false, "");
              ob_end_clean();
              //$this->pdf->Output("Employee Information.pdf", "I");
              $this->pdf->Output('c:/xampp/htdocs/pp_meikarta/upload/filename.pdf', 'I');
	 
	}
	
	public function get_priority_code_assign(){
	   $getdata = $this->m_pu->get_priority_code_assign();
       echo json_encode($getdata); 
	}

  	public function generate_priority_code(){
		 
		echo "PCD".generate_ttbf(6);
	}

	public function fetch_nama_customer(){  
       $getdata = $this->m_pu->fetch_nama_customer();
       echo json_encode($getdata);   
  	}  


	public function fetch_nama_sales(){  
       $getdata = $this->m_pu->fetch_nama_sales();
       echo json_encode($getdata);   
  	}  

  	public function fetch_nama_unit(){  
       $getdata = $this->m_pu->fetch_nama_unit();
       echo json_encode($getdata);   
  	}  


	public function fetch_nama_bank(){  
       $getdata = $this->m_pu->fetch_nama_bank();
       echo json_encode($getdata);   
  	}  

	
  //method yang digunakan untuk menarik id dari data yang dituju untuk diambil datanya dengan query kemudian di parse kedalam form edit data
	public function get_data_edit(){
		$id = $this->uri->segment(3); 
		$get = $this->db->query("SELECT a.*,b.nama as nama_customer,c.nama as nama_sales FROM 
								t_pu a
								INNER JOIN m_customer b on b.id = a.id_customer
								INNER JOIN m_sales c on c.id = a.id_sales where a.id = '".$id."' ")->row();
		echo json_encode($get,TRUE);
	}
	
  //method atau fungsi yang digunakan untuk menghapus data 
	public function hapus_data(){
		$id = $this->uri->segment(3);  
    //cek apakah foto/gambar tersedia
		 

    $sqlhapus = $this->m_pu->hapus_data($id);
		
		if($sqlhapus){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);
	}
	
  //method atau fungsi yang digunakan untuk menyimpan data dari form,baik saat melakukan simpan maupun ubah data
	public function simpan_data(){
    
    
    $data_form = $this->m_pu->array_from_post($this->daftar_field);
 	// var_dump($data_form);
 	// exit();
    //$id = isset($data_form['id']) ? $data_form['id'] : NULL; 
 
 	

    $simpan = $this->db->query("insert into t_pu set id_customer = '".$data_form['id_customer']."',
    							no_pu = '".$data_form['no_pu']."',
								id_sales  = '".$data_form['id_sales']."',
								id_bank  = '".$data_form['id_bank']."',
								id_bf  = '".$data_form['id_bf']."',
								id_unit  = '".$data_form['id_unit']."',
								cicilan  = '".$data_form['cicilan']."',
								date_assign  = '".date('Y-m-d')."',
								user_assign  = '".$this->session->userdata('username')."' ");
								 
 
		if($simpan){
			$result = array("response"=>array('message'=>'success'));
		}else{
			$result = array("response"=>array('message'=>'failed'));
		}
		
		echo json_encode($result,TRUE);

	}
	
  


}
