<?php

//clase de prueba para páginas estáticas.

class Pages extends CI_Controller{
	
	public function view($page='home'){
		$this->load->model('app_model');	
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->library('session');
		$this->load->library('encrypt');
		
		log_message('debug',"Pages view: $page");
		if(!file_exists('application/views/pages/'.$page.".php")){
			//whoops.
			show_404();
		}
		
		$data['title']=ucfirst($page);
		if($page=="home" || $page=="recpass" || $page=="loginerror" || $page=="nuevacuenta"){
			
			
			$stats=$this->app_model->getGeneralStats();
			
			$data['stats_er']=$stats['total_er'];
			$data['stats_usr']=$stats['total_usr'];
			
						
			$validsession=$this->session->userdata('USERID');
			if(!empty($validsession)){
				$data['sessiondata']=$this->session->all_userdata();
				$data['username']=$this->encrypt->decode($data['sessiondata']['USERNAME']);
			}
			
			//$this->session->sess_destroy();
			$this->load->view('templates/headerhome',$data);
			$this->load->view('pages/'.$page,$data);
			$this->load->view('templates/footer',$data);
			
			
				
		}elseif($page=="logoff" ){
			$this->session->sess_destroy();
			$this->load->view('templates/headerhome',$data);
			$this->load->view('pages/logoff',$data);
			$this->load->view('templates/footer',$data);
		}else{
			
			$validsession=$this->session->userdata('USERID');
			if(empty($validsession)){
				log_message('debug','*No se encontró sesión');
				redirect('/loginerror', 'location', 302);
				die();	
			}
			$data['sessiondata']=$this->session->all_userdata();
			$data['username']=$this->encrypt->decode($data['sessiondata']['USERNAME']);
			$this->load->view('templates/header',$data);
			$this->load->view('pages/'.$page,$data);
			$this->load->view('templates/footer',$data);
		}
		
	}
}

?>