<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends CI_Controller {

	public function __construct()
	{
			parent::__construct();
			if(check()){
				if(!isAdmin($this->session->userdata('roles')))
					redirect(base_url(), 'refresh');
      }else{
				 	redirect(base_url(), 'refresh');
			}
			$this->load->model('Common_model');
	}
	public function index()
	{
		    $data= array();
        $data['page'] ='category';
        $data['tag']=  $this->Common_model->select('tags');
				$data['category']=  $this->Common_model->select('category');
        $data['aim']=  $this->Common_model->select('category');
				$data['main_content']= $this->load->view('category/add',$data, true);
				$this->load->view('index',$data);
	}
    public function Add()
		{
			if($_POST){
			 $data1=$this->security->xss_clean($_POST);
			$aim=[
			'name' => $data1['name'],
			'parent' => $data1['parent'],
			'source'=> $data1['featureImage']
			// 'icon' => $data1['icon'],
			];
			//print_r($aim);exit;
			$this->Common_model->insert($aim,'category');
			redirect(base_url() . 'admin/category', 'refresh');
			}
		}

      public function AddTag()
			{
				if($_POST){
			 $data1=$this->security->xss_clean($_POST);
		         $tag=[
		            'title' => $data1['name'],
		        ];
            $this->Common_model->insert($tag,'tags');
			redirect(base_url() . 'admin/category', 'refresh');
				}
			}
 public function Delete($id)
	{
            $data1=['id'=> $id];
            $this->Common_model->delete($data1,'category');
            redirect(base_url() . 'admin/category', 'refresh');
    }
    public function Edit($id)
	{
		if($_POST){
			 $data1=$this->security->xss_clean($_POST);
			// echo print_r( $data1);exit;
             $aim=[
            'name' => $data1['name'],
            'parent' => $data1['parent'],
						'source'=> $data1['featureImage']
        ];
				print_r($aim);exit;

           $this->Common_model->update($aim,'id',$id,'category');
			redirect(base_url() . 'admin/category', 'refresh');
	}
	}
}
