<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 

class Dashboard extends Parent_Controller {
 

 	public function __construct(){
 		parent::__construct();
 		$this->load->model('m_dashboard');
 	}
 


 public function databars(){

            $data_div = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
                            LEFT JOIN m_karyawan b on b.npp = a.npp
                            LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
                            LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
                            LEFT JOIN m_seksi e on e.id = a.id_seksi
                            LEFT JOIN m_divisi f on f.id = a.id_divisi 
                            where a.id_departemen = 0 and a.id_divisi != 0")->result();
            $return = [];

            foreach ($data_div as $key => $value) {
                $data['name'] = $value->nama_divisi;
             
                     $sqlb = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
                                        d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from 
                                        m_formasi_jabatan a
                                        LEFT JOIN m_karyawan b on b.npp = a.npp
                                        LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
                                        LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
                                        LEFT JOIN m_seksi e on e.id = a.id_seksi
                                        LEFT JOIN m_divisi f on f.id = a.id_divisi 
                                        where a.id_divisi = '".$value->id_divisi."'
                                        GROUP BY c.id_kelas_jabatan")->result();
                     $listing = array();

                     foreach ($sqlb as $keyz => $valuez) {
                        $listing[] = $valuez->nama_kelas_jabatan;

    					$sql_all = $this->db->query("select a.* from m_formasi_jabatan a 
    					left join m_divisi b on b.id = a.id_divisi
    					left join m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
    					left join m_kelas_jabatan d on d.id = c.id_kelas_jabatan where a.id_divisi = '".$value->id_divisi."' and d.nama_kelas_jabatan = '".$valuez->nama_kelas_jabatan."' ")->num_rows();
    					$sql_full = $this->db->query("select a.* from m_formasi_jabatan a 
    					left join m_divisi b on b.id = a.id_divisi
    					left join m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
    					left join m_kelas_jabatan d on d.id = c.id_kelas_jabatan where a.id_divisi = '".$value->id_divisi."' and d.nama_kelas_jabatan = '".$valuez->nama_kelas_jabatan."' and a.npp != '' ")->num_rows();
    			 		$return[] = round($sql_full/$sql_all,1)*100;
                     }
					 
            }
			echo json_encode($return);
  }

  public function testing(){
         
            $data_div = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
                            LEFT JOIN m_karyawan b on b.npp = a.npp
                            LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
                            LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
                            LEFT JOIN m_seksi e on e.id = a.id_seksi
                            LEFT JOIN m_divisi f on f.id = a.id_divisi 
                            where a.id_departemen = 0 and a.id_divisi != 0")->result();
            $return = [];
            foreach ($data_div as $key => $value) {
                $data['name'] = $value->nama_divisi;
             
                     $sqlb = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
                                        d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from 
                                        m_formasi_jabatan a
                                        LEFT JOIN m_karyawan b on b.npp = a.npp
                                        LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
                                        LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
                                        LEFT JOIN m_seksi e on e.id = a.id_seksi
                                        LEFT JOIN m_divisi f on f.id = a.id_divisi 
                                        where a.id_divisi = '".$value->id_divisi."'
                                        GROUP BY c.id_kelas_jabatan")->result();
                     $listing = array();
                     foreach ($sqlb as $keyz => $valuez) {
                        $listing[] = $valuez->nama_kelas_jabatan;
                      
                     }

                
                $return_arr = ["name" => $value->nama_divisi,
                			   "categories" => $listing,];
        	  	$return[] = $return_arr;
                
            }
			echo json_encode($return);
            
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
		 
		//$data['testing'] = $this->cobas();
		 
		$data['datakosong'] = '['.implode(",", $kosong).']'; 
		$data['dataisi'] = '['.implode(",", $terisi).']';
		$data['datacat'] = '['.implode(",", $list_cat).']';

		$data['datadiv'] = '['.implode(",", $list_div).']';
 	 
		$data['judul'] = $this->data['judul']; 
		$data['konten'] = 'dashboard/dashboard_view';
	 
		


		$this->load->view('template_view',$data);
	}

	public function cobas(){
		 $data_div = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
                            LEFT JOIN m_karyawan b on b.npp = a.npp
                            LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
                            LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
                            LEFT JOIN m_seksi e on e.id = a.id_seksi
                            LEFT JOIN m_divisi f on f.id = a.id_divisi 
                            where a.id_departemen = 0 and a.id_divisi != 0")->result();
            $return = [];
            foreach ($data_div as $key => $value) {
                $data['name'] = $value->nama_divisi;
             
                     $sqlb = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
                                        d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from 
                                        m_formasi_jabatan a
                                        LEFT JOIN m_karyawan b on b.npp = a.npp
                                        LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
                                        LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
                                        LEFT JOIN m_seksi e on e.id = a.id_seksi
                                        LEFT JOIN m_divisi f on f.id = a.id_divisi 
                                        where a.id_divisi = '".$value->id_divisi."'
                                        GROUP BY c.id_kelas_jabatan")->result();
                     $listing = array();
                     foreach ($sqlb as $keyz => $valuez) {
                        $listing[] = $valuez->nama_kelas_jabatan;
                        
                     }
 
                $return_arr = ["name" => $value->nama_divisi,
                               "categories" => $listing,];
                $return[] = $return_arr;
                
            }
                echo json_encode($return);
            
	 		
	}
	 public function coba(){
	 	//header('Content-Type: application/json');
	 	$data_div = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from m_formasi_jabatan a
					      	LEFT JOIN m_karyawan b on b.npp = a.npp
					      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
					      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
					      	LEFT JOIN m_seksi e on e.id = a.id_seksi
					      	LEFT JOIN m_divisi f on f.id = a.id_divisi 
					      	where a.id_departemen = 0 and a.id_divisi != 0")->result();
	 		foreach ($data_div as $key => $value) {
	 			echo $value->nama_divisi."<br>";

	 			$sqlb = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
	 									d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from 
	 									m_formasi_jabatan a
								      	LEFT JOIN m_karyawan b on b.npp = a.npp
								      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
								      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
								      	LEFT JOIN m_seksi e on e.id = a.id_seksi
								      	LEFT JOIN m_divisi f on f.id = a.id_divisi 
										where a.id_divisi = '".$value->id_divisi."'
										GROUP BY c.id_kelas_jabatan")->result();
	 			foreach ($sqlb as $keyz => $valuez) {
	 				//echo $valuez->nama_kelas_jabatan."<br>";

	 				$sqlklas_all = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
	 									d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from 
	 									m_formasi_jabatan a
								      	LEFT JOIN m_karyawan b on b.npp = a.npp
								      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
								      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
								      	LEFT JOIN m_seksi e on e.id = a.id_seksi
								      	LEFT JOIN m_divisi f on f.id = a.id_divisi 
								      	where a.id_divisi = '".$valuez->id_divisi ."' and d.nama_kelas_jabatan = '".$valuez->nama_kelas_jabatan."'  ")->num_rows();
	 				$sqlklas_full = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
	 									d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from 
	 									m_formasi_jabatan a
								      	LEFT JOIN m_karyawan b on b.npp = a.npp
								      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
								      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
								      	LEFT JOIN m_seksi e on e.id = a.id_seksi
								      	LEFT JOIN m_divisi f on f.id = a.id_divisi 
								      	where a.id_divisi = '".$valuez->id_divisi ."' and d.nama_kelas_jabatan = '".$valuez->nama_kelas_jabatan."' and a.npp != '' ")->num_rows();

	 				$sqlklas_empty = $this->db->query("SELECT a.*,b.nama_karyawan,c.nama_kelompok_jabatan,
	 									d.nama_kelas_jabatan,e.nama_seksi,f.nama_divisi from 
	 									m_formasi_jabatan a
								      	LEFT JOIN m_karyawan b on b.npp = a.npp
								      	LEFT JOIN m_kelompok_jabatan c on c.id = a.id_kelompok_jabatan
								      	LEFT JOIN m_kelas_jabatan d on d.id = c.id_kelas_jabatan
								      	LEFT JOIN m_seksi e on e.id = a.id_seksi
								      	LEFT JOIN m_divisi f on f.id = a.id_divisi 
								      	where a.id_divisi = '".$valuez->id_divisi ."' and d.nama_kelas_jabatan = '".$valuez->nama_kelas_jabatan."' and a.npp = '' ")->num_rows();
	 				echo " - Untuk Kelas ".$valuez->nama_kelas_jabatan. " Pada divisi ".$value->nama_divisi. " Semua : ".$sqlklas_all. " Kosong : ".$sqlklas_empty. " Terisi : ".$sqlklas_full."<br>";
	 			}

	 		}
			
		exit();
	   
	}

	public function yes(){
		echo '<ul id="mainContainer">
                    <li id="101" title="
                            <div class="row">
                                <div class="col-md-12">
                                    <div align="center">
                                        <img style="width:90px; height:90px;" src='.base_url('assets/images/baper.jpg').' class="img-rounded"/>
                                    </div>
                                </div>
                                 
                                <div class="col-md-12 text-left userName" title="User 1">
                                    <strong>Septerianto Sanaf </strong>
                                </div>
                            </div><span>Direktur Utama</span>
                            <ul>
                                <li id="102"  title="
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <div align="center">
		                                        <img style="width:90px; height:90px;" src='.base_url('assets/images/baper.jpg').' class="img-rounded"/>
		                                    </div>
		                                </div>
		                                 
		                                <div class="col-md-12 text-left userName" title="User 1">
		                                    <strong>Taruli Hutapea </strong>
		                                </div>
		                            </div>
		                            <span>Direktur Teknik & Operasi</span>
                                    </li>
                            </ul>
                            </ul>';
	}
	public function resmenu(){
		echo $this->getmenus(0,"");
	}

	 function getmenus($parent,$hasil){
	 	$sql = $this->db->query("select a.*,b.nama_karyawan,b.foto from m_formasi_jabatan a left join m_karyawan b on b.npp = a.npp where id_parent_seksi = '".$parent."' ");
       
        if(($sql->num_rows())>0)
        {
            $hasil .= "<ul id='mainContainer' style='display:none;'>";

        }
        foreach($sql->result() as $h)
        {
        	if($h->foto == NULL || $h->foto == ''){
        		$hasil .= '<li id='.$h->id.' title="
                            <div class=\'row\'>
                                <div class=\'col-md-12\'>
                                    <div align=\'center\'>
                                        <img style=\'width:70px; height:90px;\' 
                                        src=\''.base_url('assets/images/user_default.png').'\' class=\'img-rounded\'/>
                                    </div>
                                    <div id=\'absolute_div\'>
                                 	 	<b>'.$h->nama_karyawan.' </b><br>
									    '.$h->nama_jabatan.' 
									 
									</div>
                                </div>
                                 
                                 
                            </div> 
                        ">';
        	}else{
        		$hasil .= '<li id='.$h->id.' title="
                            <div class=\'row\'>
                                <div class=\'col-md-12\'>
                                    <div align=\'center\'>
                                        <img style=\'width:90px; height:90px;\' 
                                        src=\''.base_url('upload/').$h->foto.'\' class=\'img-rounded\'/>
                                    </div>
                                     
                                 	 <div id=\'absolute_div\'>
                                 	 		<b>'.$h->nama_karyawan.' </b><br>
									    '.$h->nama_jabatan.' 
									 
									</div>
                                </div>
                                  
                        ">';
        	}
        	 
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
