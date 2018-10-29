<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 

class Dashboard extends Parent_Controller {
 

 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_dashboard');
 	}
 
	public function index(){
		$get_categori = $this->db->query("select * from m_kelompok_jabatan")->result();
	 	foreach ($get_categori as $key => $value) {
	 		$list_cat[] = '"'.$value->nama_kelompok_jabatan.'"';
	 	}
	 	 
		//VP Level
 		$sql_g_div_all = $this->db->query("select * from m_formasi_jabatan GROUP BY id_divisi")->num_rows();
		 
		$sql_g_div_empty = $this->db->query("select * from m_formasi_jabatan WHERE npp = '' and id_departemen = 0 and id_seksi = 0")->num_rows();

		$sql_g_div_full = $this->db->query("select * from m_formasi_jabatan WHERE npp != '' and id_departemen = 0 and id_seksi = 0")->num_rows(); 
 

		//AVP Level
		$sql_g_dep_all = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi = 0 and id_departemen != 0 ")->num_rows();
		 
		$sql_g_dep_empty = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi = 0 and id_departemen != 0 and npp = '' ")->num_rows();

		$sql_g_dep_full = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi = 0 and id_departemen != 0 and npp != '' ")->num_rows(); 

		 
		//MGR level
		$sql_g_sek_all = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 ")->num_rows();
		 
		$sql_g_sek_empty = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 and npp = '' ")->num_rows();

		$sql_g_sek_full = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0  and npp != '' ")->num_rows(); 
 

		//SO level
		$sql_g_so_all = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
							d.nama_kelas_jabatan,e.nama_seksi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi     
 							where d.nama_kelas_jabatan != 1 AND d.nama_kelas_jabatan != 2  AND 
 							d.nama_kelas_jabatan != 3   ")->num_rows();
		 
		$sql_g_so_empty = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi     
 							where d.nama_kelas_jabatan != 1 AND d.nama_kelas_jabatan != 2  AND 
 							d.nama_kelas_jabatan != 3 and a.npp = '' ")->num_rows();

		$sql_g_so_full = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
							d.nama_kelas_jabatan,e.nama_seksi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi     
 							where d.nama_kelas_jabatan != 1 AND d.nama_kelas_jabatan != 2  AND 
 							d.nama_kelas_jabatan != 3  and a.npp != '' ")->num_rows();

 		$terisi = array(($sql_g_div_full/$sql_g_div_all)*100,($sql_g_dep_full/$sql_g_dep_all)*100,($sql_g_sek_full/$sql_g_sek_all)*100,($sql_g_so_full/$sql_g_so_all)*100);

		$kosong = array(($sql_g_div_empty/$sql_g_div_all)*100,($sql_g_dep_empty/$sql_g_dep_all)*100,($sql_g_sek_empty/$sql_g_sek_all)*100,($sql_g_so_empty/$sql_g_so_all)*100);

		$data_div = $this->db->query("select * from m_divisi")->result();
		foreach ($data_div as $key => $value) {
	 		$list_div[] = '"'.$value->nama_divisi.'"';
	 	}

	 	// echo $terisi[3];
	 	// echo "<br>";
	 	// echo $kosong[3];
	 	// exit();
 	// 	$data['name'] = "terisi";
		// $data['data'] = $terisi;
		// $data2['name'] = "kosong";
		// $data2['data'] = $kosong; 

		// echo '['.implode(",", $kosong).']';
		$data['dataparse'] = $this->getmenus(0,"");
		// var_dump($data['dataparse']);
		// exit();
		$data['datakosong'] = '['.implode(",", $kosong).']'; 
		$data['dataisi'] = '['.implode(",", $terisi).']';
		$data['datacat'] = '['.implode(",", $list_cat).']';

		$data['datadiv'] = '['.implode(",", $list_div).']';
 	 
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'dashboard/dashboard_view';
	 
		


		$this->load->view('template_view',$data);
	}


	 public function coba(){
	 	header('Content-Type: application/json');
	 	$sql = $this->db->query("select a.*,b.nama_karyawan from m_formasi_jabatan a
	 	left join m_karyawan b on b.npp = a.npp ")->result();
	 	 $return_arr = array();
	 		foreach ($sql as $key => $value) {
	 		$data['id'] = $value->id;
	 		$data['parentid'] = $value->id_parent_seksi;
	 		$data['nama_karyawan'] = $value->nama_karyawan;
	 		$data['nama_jabatan'] = $value->nama_jabatan;
	 		array_push($return_arr,$data);
	 		}

	 		echo json_encode($return_arr);
	 }

	 function getmenus($parent,$hasil){
	 	$sql = $this->db->query("select a.*,b.nama_karyawan from m_formasi_jabatan a left join m_karyawan b on b.npp = a.npp where id_parent_seksi = '".$parent."' ");
        //$sql = $this->db->where('id_parent_seksi',$parent)->get('m_formasi_jabatan');

        if(($sql->num_rows())>0)
        {
            $hasil .= "<ul id='ul-data' class='data'>";

        }
        foreach($sql->result() as $h)
        {
            $hasil .= "<li>".$h->nama_karyawan." </a>";
            $hasil = $this->getmenus($h->id,$hasil);
            $hasil .= "</li>";
        }
        if(($sql->num_rows())>0)
        {
            $hasil .= "</ul>";
        }
        return $hasil;

    } 
  
 
	 
}
