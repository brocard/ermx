<?php
/*
ermex Controller.
*/
class ermex extends CI_Controller{

	//constructor y carga del modelo base.
	public function __construct(){
			parent::__construct();
			$this->load->model('app_model');
			$this->load->library('session');
			$this->load->library('encrypt');
			$this->load->helper('url');
	}

	public function newaccount(){
		log_message('debug','ermex/newaccount');
		if($this->input->post('email')!="" && $this->input->post('password')!=""){
			
			
			//account information.
			$email=strtolower($this->input->post('email'));
			$nick=$this->input->post('nick');
			$password=$this->input->post('password');
			$agent=$_SERVER['HTTP_USER_AGENT'];
			$sourceip=$_SERVER['REMOTE_ADDR'];

			//email unicity validation.
			$exist=$this->app_model->userExist($email);
			if(!$exist){
				//create user.
				$this->app_model->insertUser($email,$password,$nick,$sourceip,$agent,USERTYPE_NORMAL);
				//send confirmation email.
				$this->mailto_user($glob_mensajeExito,"Registro en ERmex",$email);
				$this->mailto_user("nuevo usuario: ".$email,"ERmex: nuevo usuario",ADMIN_EMAIL);
				
				//go to login.
				redirect('?c=true#nc', 'location', 302);
				exit;
				
			}else{
				redirect('/nuevacuenta?userexist=t', 'location', 302);	
				
			}
	
		}else{
				
			redirect('/nuevacuenta', 'location', 302);	
		}
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
	
	//PRESENTS MAIN MENU FOR REGISTRATION OF NEW LOCATION.
	function mainmenunewloc(){
		$this->load->library('GMap');
		$this->gmap->GoogleMapAPI('newlocmap','ermex');
		
		// valid types are hybrid, satellite, terrain, map
		$this->gmap->setMapType('map');
		
		//Set Mobile Parameters
		$this->gmap->mobile = true;
		$this->gmap->width = "50%";
		$this->gmap->height = "50%";
		$this->gmap->enableInfoWindow();
		
		$this->gmap->addMarkerByAddress("Insurgentes Sur 1400, México , Distrito Federal, Mexico","Marker Title", "Marker Description", $tooltip="", $filename="");
		
		$this->gmap->disableSidebar();
		
		
		$data['headerjs'] = $this->gmap->getHeaderJS();
		$data['headermap'] = $this->gmap->getMapJS();
		$data['onload'] = $this->gmap->printOnLoad();
		$data['map'] = $this->gmap->printMap();
		
		$this->load->view('pages/mapa',$data);
	}	

	//busca ubicaciones en el mapa.
	function mapLocator(){
		log_message('debug','ermex/mapLocator');
		$this->load->library('GMap');
		
		//valida sesion.
		$validsession=$this->session->userdata('USERID');
		if(empty($validsession)){
			log_message('debug','*No se encontró sesión');
			redirect('/loginerror', 'location', 302);
			die();	
		}
	
		//busqueda por addr o por gps?
		if($this->input->get('findme')!="" && $this->input->get('mylocLat')!="" && $this->input->get('mylocLon')!=""){
			$findType='GPS';	
			log_message('debug','localizando por GPS');
			$lat=$this->input->get('mylocLat');
			$lon=$this->input->get('mylocLon');
			$lmap=$this->locateByCoords($lat,$lon);
		}elseif($this->input->get('findaddr')!=""){
			$findType='ADDR';	
			$addr=$this->input->get('address');
			log_message('debug','localizando por ADDR');
			
			$lmap=$this->locateByAddr($addr);
		}else{
			redirect('/mainmenu', 'location', 302);
		}
		
		$data['headerjs'] = $lmap->getHeaderJS();
		$data['headermap'] = $lmap->getMapJS();
		$data['onload'] = $lmap->printOnLoad();
		$data['map'] = $lmap->printMap();
		$data['sessiondata']=$this->session->all_userdata();
		$data['username']=$this->encrypt->decode($data['sessiondata']['USERNAME']);
		$this->load->view('templates/header',$data);
		$this->load->view('pages/mapa',$data);
		$this->load->view('templates/footer',$data);
		
		
		
	
	}
	
	//localiza en base a una dirección.
	function locateByAddr($addr){
		log_message('debug','creando mapa por addr: $addr ');
		$this->load->library('GMap');
		$this->gmap->GoogleMapAPI('locMap','ermex');
		// valid types are hybrid, satellite, terrain, map
		$this->gmap->setMapType('map');
		//Set Mobile Parameters
		$this->gmap->mobile = true;
		$this->gmap->width = 0;
		$this->gmap->height = 0;
		$this->gmap->enableInfoWindow();
		$this->gmap->setInfoWindowTrigger('mouseover');
		$this->gmap->addMarkerByAddress($addr,"Tu posicion","Doble click para registrar la posición", $tooltip="ER", $filename="");
		$this->gmap->disableSidebar();
		return $this->gmap;
	}
	
	//localiza en base a una dirección.
	function locateByCoords($lat,$lon){
		log_message('debug',"creando mapa por coords: $lat x $lon ");
		$this->load->library('GMap');
		$this->gmap->GoogleMapAPI('locMap','ermex');
		// valid types are hybrid, satellite, terrain, map
		$this->gmap->setMapType('map');
		//Set Mobile Parameters
		$this->gmap->mobile = true;
		$this->gmap->width = 0;
		$this->gmap->height = 0;
		$this->gmap->enableInfoWindow();
		$this->gmap->setInfoWindowTrigger('mouseover');
		$this->gmap->addMarkerByCoords($lon,$lat,"Tu posicion","Doble click para registrar la posición", $tooltip="ER", $filename="");
		$this->gmap->disableSidebar();
		return $this->gmap;
	}
}
?>