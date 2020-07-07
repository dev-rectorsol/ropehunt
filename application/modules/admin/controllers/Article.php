<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article extends CI_Controller {

	public function __construct()
	{
			parent::__construct();
			if(check()){
				if(!isAdmin($this->session->userdata('roles')))
					redirect(base_url(), 'refresh');
      }else{
				 	redirect(base_url(), 'refresh');
			}
            $this->load->model('common_model');
             $this->load->model('article_model');
	}
	public function index()
	{
		$data= array();
    $data['page'] ='article';
    $data['tag']=  $this->common_model->select('tags');
		$data['category']=  $this->common_model->select('category');
		$data['main_content']= $this->load->view('article/add',$data, true);
		$this->load->view('index',$data);
    }
	  public function add()
		{
			if($_POST){
				$data1=$_POST;
				$id = $this->common_model->get_last_id('article');
				if($data1['submit']=='save') {
					$article=[
						'postid' => getCustomId($id, 'post'),
						'title' => $data1['name'],
						'content' => $data1['content'],
						'created_by' => $_SESSION['userID'],
						'slug' => $data1['slug'],
						'created_at	' => current_datetime()
					];
				} else {
					$article=[
						'postid' => getCustomId($id, 'post'),
						'title' => $data1['name'],
						'content' => $data1['content'],
						'created_by' => $_SESSION['userID'],
						'slug' => $data1['slug'],
						'created_at' => current_datetime(),
						'public_at' => current_datetime(),
						'is_publish' => 1,
					];
				}
				$id =  $this->common_model->insert($article,'article');
				// echo $id;exit;
				if ($id) {
				  $this->common_model->indexing($_POST, $id);
					if ( isset($_POST['featureImage'])){
						// if added feature images
						$this->common_model->addThumb($_POST['featureImage'], $id);
					}
				 	$this->session->set_flashdata(array('error' => 0, 'msg' => 'Article add Done'));
				 	redirect(base_url('admin/article/View/'), 'refresh');
			 }
			  else {
				 $this->session->set_flashdata(array('error' => 1, 'msg' => 'Article Creation Failed'));
				 redirect($_SERVER['HTTP_REFERER'], 'refresh');
			 }
		 }else{
			 $this->session->set_flashdata(array('error' => 1, 'msg' => 'Request not Allowed'));
			 redirect($_SERVER['HTTP_REFERER'], 'refresh');
		 }
		}


		public function View()
		{
			$data['page'] ='article';
			$data['articles']=  $this->article_model->select_published();
			$data['main_content']= $this->load->view('article/View',$data, true);
			$this->load->view('index',$data);
		}


		public function edit($id){
			$data = array();
			$data['page'] = 'Edit Article';

			$data['tag']=  $this->common_model->select('tags');
			$data['category']=  $this->common_model->select('category');
			$data['article'] = $this->article_model->select_by_id($id);
			// echo "<pre>";
			// print_r($data['article']);exit;
			$data['image'] = $this->common_model->getThumByRootvale($id);
			// echo "<pre>";
			// print_r($data['image']);exit;
			$data['indexcategory'] = $this->common_model->getIndexCategorys($id);
			$data['indextags'] = $this->common_model->getIndexTags($id);
			$data['main_content'] = $this->load->view('article/edit-view',$data, true);
			$this->load->view('index',$data);
		}

		public function update(){
			if($_POST){
				$data=$_POST;

				if($data['submit']=='save') {
					$article=[
						'title' => $data['name'],
						'content' => $data['content'],
						'created_by' => $_SESSION['userID'],
						'slug' => $data['slug'],
					];
				} else if($data['submit']=='publish'){
					$article=[
						'title' => $data['name'],
						'content' => $data['content'],
						'created_by' => $_SESSION['userID'],
						'slug' => $data['slug'],
						'public_at' => current_datetime(),
						'is_publish' => 1,
					];
				} else {
					$article=[
						'title' => $data['name'],
						'content' => $data['content'],
						'created_by' => $_SESSION['userID'],
						'slug' => $data['slug'],
					];
				}
				if ( $this->common_model->update($article, 'id', $data['postid'], 'article') ) {
				  $this->common_model->updateIndexing($_POST, $data['postid']);

					if ( isset($_POST['featureImage']) ) {
						// if updated feature image
						$this->common_model->updateThumb($_POST['featureImage'], $data['postid']);
					}


				 	$this->session->set_flashdata(array('error' => 0, 'msg' => 'Article Update Done'));
				 	redirect(base_url('admin/article/view/'), 'refresh');
			 }  else {
				 $this->session->set_flashdata(array('error' => 1, 'msg' => 'Update Failed'));
				 redirect($_SERVER['HTTP_REFERER'], 'refresh');
			 }
		 }else{
			 $this->session->set_flashdata(array('error' => 1, 'msg' => 'Request not Allowed'));
			 redirect($_SERVER['HTTP_REFERER'], 'refresh');
		 }
		}


     public function viewDraft()
	{
	 $data['page'] ='article';

        $data['article']=  $this->article_model->select_draft();
        $data['main_content']= $this->load->view('article/ViewDraft',$data, true);
		$this->load->view('index',$data);
    }
     public function viewDeleted()
	{
	 $data['page'] ='article';

        $data['article']=  $this->article_model->select_deleted();
        $data['main_content']= $this->load->view('article/ViewDeleted',$data, true);
		$this->load->view('index',$data);
	}
 public function Delete($id)
	{
           $article=[
             'is_publish' => '0',
            'deleted' => 1,];
            $this->common_model->update($article,'id',$id,'article');
            redirect(base_url() . 'admin/article/view', 'refresh');
  }


}
