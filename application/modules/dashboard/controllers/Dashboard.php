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
 		$sql_g_div_all = $this->db->query("select * from m_formasi_jabatan where id_divisi != 0 and id_departemen = 0")->num_rows();
		 
		// echo $sql_g_div_all;
		// exit();
		$sql_g_div_empty = $this->db->query("select * from m_formasi_jabatan where id_divisi != 0 and id_departemen = 0 and npp = ''")->num_rows();

		$sql_g_div_full = $this->db->query("select * from m_formasi_jabatan where id_divisi != 0 and id_departemen = 0 and npp != ''")->num_rows(); 
 

		//AVP Level
		$sql_g_dep_all = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
where a.id_seksi = 0 and a.id_departemen != 0 ")->num_rows();
		 
		$sql_g_dep_empty = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
where a.id_seksi = 0 and a.id_departemen != 0 and a.npp = '' ")->num_rows();

		$sql_g_dep_full = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
where a.id_seksi = 0 and a.id_departemen != 0 and a.npp != '' ")->num_rows(); 

		 
		//MGR level
		$sql_g_sek_all = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 ")->num_rows();
		 
		$sql_g_sek_empty = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0 and npp = '' ")->num_rows();

		$sql_g_sek_full = $this->db->query("select * from m_formasi_jabatan WHERE id_seksi != 0  and npp != '' ")->num_rows(); 
 

		//SO level
		$sql_g_so_all = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
where a.id_seksi != 0  and d.nama_kelas_jabatan NOT IN ('I','II','III')   ")->num_rows();
		 
		$sql_g_so_empty = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
where a.id_seksi != 0  and d.nama_kelas_jabatan NOT IN ('I','II','III') and a.npp = '' ")->num_rows();

		$sql_g_so_full = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
where a.id_seksi != 0  and d.nama_kelas_jabatan NOT IN ('I','II','III')   and a.npp != '' ")->num_rows();

 		$terisi = array(($sql_g_div_full/$sql_g_div_all)*100,round($sql_g_dep_full/$sql_g_dep_all,1)*100,round($sql_g_sek_full/$sql_g_sek_all,1)*100,($sql_g_so_full/$sql_g_so_all)*100);

		$kosong = array(($sql_g_div_empty/$sql_g_div_all)*100,round($sql_g_dep_empty/$sql_g_dep_all,1)*100,round($sql_g_sek_empty/$sql_g_sek_all,1)*100,($sql_g_so_empty/$sql_g_so_all)*100);

		$data_div = $this->db->query("select * from m_divisi")->result();
		foreach ($data_div as $key => $value) {
	 		$list_div[] = '"'.$value->nama_divisi.'"';
	 	}
	  
	 
	 	// foreach ($data_div as $keyz => $valuez) {	 		 
	 	// 	echo $valuez->nama_divisi;	  
	 	// }
	 	 

	 	 
		$data['dataparse'] = $this->getmenus(0,"");
		$data['dataparse_div'] = '';
		 
		$data['datakosong'] = '['.implode(",", $kosong).']'; 
		$data['dataisi'] = '['.implode(",", $terisi).']';
		$data['datacat'] = '['.implode(",", $list_cat).']';

		$data['datadiv'] = '['.implode(",", $list_div).']';
 	 
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'dashboard/dashboard_view';
	 
		


		$this->load->view('template_view',$data);
	}


	 public function coba(){
	 	//header('Content-Type: application/json');
	 	$data_div = $this->db->query("select * from m_divisi")->result();
		 
	 
	 	foreach ($data_div as $keyz => $valuez) {
	 		//$datap = $valuez->nama_divisi;
	 		//echo "<li>".$valuez->nama_divisi."</li>";
	 		echo "<br> <br>". $valuez->nama_divisi."<br> <br>";	
	 		$sqlb = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
									where d.nama_kelas_jabatan = 1 and a.id_divisi = '".$valuez->id."' ")->row();
				echo " Kelas 1 - ".$sqlb->nama_karyawan."<br>";  
			$sqlc = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
									where d.nama_kelas_jabatan = 2 and a.id_divisi = '".$valuez->id."' ")->result();
			foreach ($sqlc as $keyx => $valuex) {
				echo "Kelas 2 - ".$valuex->nama_karyawan."<br>";
			}

			$sqld = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
									where d.nama_kelas_jabatan = 3 and a.id_divisi = '".$valuez->id."' ")->result();

			foreach ($sqld as $keys => $values) {
				echo "Kelas 3 - ".$values->nama_karyawan."<br>";
			}

			$sqle = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
									LEFT JOIN m_divisi f on f.id = a.id_divisi
									where d.nama_kelas_jabatan = 4 and a.id_divisi = '".$valuez->id."' ")->result();


	 	 	foreach ($sqle as $keyc => $valuec) {
				echo "Kelas 4 - ".$valuec->nama_karyawan."<br>";
			}

	 }
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
            $hasil .= "<li>".$h->nama_karyawan . " <br> " . $h->nama_jabatan." </a>";
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
