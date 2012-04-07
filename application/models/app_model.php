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
				$data=array(
				'logindate'=>date('Y-m-d H:i:s'),
				'loginip'=>$_SERVER['REMOTE_ADDR'],
				'loginsource'=>$_SERVER['HTTP_USER_AGENT'],
				'user'=>$result->iduser);
				$this->db->insert('login', $data);
		
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
	
	public function createNewRegistry($lat,$lon,$addrgps,$addruser,$name,$type,$desc,$author,$srcinfo){
		log_message('debug','App_model/createNewRegistry');
		$data=array(
			'name'=>$name,
			'lat'=>$lat,
			'lon'=>$lon,
			'fulladdr'=>$addruser,
			'description'=>$desc,
			'georefaddr'=>$addrgps,
			'type'=>$type,
			'author'=>$author,
			'device'=>$srcinfo,
			'inputdatetime'=>date('Y-m-d H:i:s'),
			'status'=>ER_STATUS_NEW
		);
		$this->db->insert('er', $data);
		return $this->db->insert_id();
	}
	
	public function getGeneralStats(){
		$query = $this->db->get('stats');
		$result=$query->row_array();
		return $result;
	}
	
	public function recpass($email,$newpass){
		$data=array(	
			'password'=>md5($newpass),
		);	
		$this->db->update('users', $data, "email = '$email'");
		
	}
	
	public function fullList(){
		$query = $this->db->query('select er.name,er.fulladdr,er.type,users.nick as author from er left join users on (er.author=users.iduser) where er.status<3');
		$result=$query->result();
		return $result;
	}

}

?>