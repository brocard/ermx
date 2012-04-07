<?php
/*
Security Controller.
*/
class Security extends CI_Controller{

	//constructor y carga del modelo base.
	public function __construct(){
			parent::__construct();
			$this->load->model('app_model');
			$this->load->library('session');
			$this->load->library('encrypt');
			$this->load->helper('url');
	}

		//login al sistema.
	public function login(){
			
			
			log_message('debug','*Security/login');
						
			if($this->input->post('user')!="" && $this->input->post('password')!=""){
				
				$usuario=$this->input->post('user');
				$password=$this->input->post('password');
				
				$sesion=$this->app_model->login($usuario,$password);
				
				
				if(isset($sesion['userid']) && $sesion['userid']>0 ){
					
					$this->session->set_userdata('USERID', $this->encrypt->encode($sesion['userid']));
					$this->session->set_userdata('USERTYPE', $sesion['type']);
					$this->session->set_userdata('USERNAME', $this->encrypt->encode($sesion['username']));
					log_message('info',"USER LOGIN: ".$sesion['username']);
					
					//presenta la vista.
					redirect('/mainmenu', 'location', 302);
					
				}else{
					
					redirect('/?lerr=true#le', 'location', 302);
					
				}
			}else{
				
					redirect('/?lerr=true#le', 'location', 302);	
			}
						
	}

}
?>