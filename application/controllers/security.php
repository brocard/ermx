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
	
	
	public function recpass(){
		$this->load->helper('form');
		global $glob_recpassmsg;
		$usuario=$this->input->post('email');
		log_message('info','security/recpass');
		
		if($this->app_model->userExist($usuario)){
			$newpass=substr(microtime()." ",0,6);
			$this->app_model->recpass($usuario,$newpass);
			$data['msg']="Una nueva constraseña ha sido enviada a su correo electrónico.";
			
			$msgRecpass=sprintf($glob_recpassmsg,$newpass);
			$this->mailto_user($msgRecpass,"Nuevo Password en ERmx",$usuario);
		}else{
			
			$data['msg']="No se ha encontrado ningún registro con ese correo electrónico.";
		}
		$this->load->view('templates/header',$data);
		$this->load->view('pages/recpass',$data);
		$this->load->view('templates/footer',$data);
			
	}
	
	//SENDMAIL TO USER.
	function mailto_user($message,$subject,$to){
		
		if(_SEND_EMAILS_==1){
			$this->load->library('email');
			$this->email->from(_MAIL_FROM_ADDR_, _MAIL_FROM_NAME_);
			$this->email->to($to);
			$this->email->subject($subject);
			$this->email->message($message);
			$this->email->send();
			//echo $this->email->print_debugger();
			//die();
		}
	}

}
?>