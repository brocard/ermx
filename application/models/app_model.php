<?php
class App_model extends CI_Model{
	
	public function __construct()
		{
			parent::__construct();
			//load the database library to make it available trough $this->db
			$this->load->database(); 
		}

	public function login($username='', $password=''){
			log_message('debug','App_model login');
			$userdata=array();
			
			$passmd5=md5($password);
			
			$query=$this->db->get_where('users', array('email' => $username, 'password'=>$passmd5) );
			if ($query->num_rows() > 0){
				log_message('debug','**Found user**');
				$result=$query->row();
				$userdata['userid']=($result->iduser);
				$userdata['username']=($result->nick);
				$userdata['type']=($result->type);
			}
			return $userdata;
					
	}
	
	public function userExist($username=''){
		log_message('debug','App_model/userExist');
		
		$query = $this->db->get_where('users', array('email' => $username));
		$result=$query->result();	
		$exists=false;
		if(empty($result)){
			log_message('debug','Email not registered');	
		}else{
			log_message('debug','Email already used');
			$exists=true;	
		}
		return $exists;
	}
	
	public function insertUser($username='',$password='',$name='',$source='',$info='',$type){
		
		log_message('debug','App_model/insertUser');	
		$data=array(
				'email'=>$username,
				'password'=>md5($password),
				'nick'=>$name,
				'sourceip'=>$source,
				'sourceinfo'=>$info,
				'status'=>STATUS_ACTIVE,
				'type'=>$type);
		return $this->db->insert('users', $data);
		
	}

}

?>