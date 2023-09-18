<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Super_admin extends CI_Controller {


    function __construct() {
        parent::__construct();

        /*cache control*/
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 2010 05:00:00 GMT");
    }



    public function session_data() {
        $this->load->library('session');
        $this->load->helper('text');
        $this->load->helper('date');

        $this->load->model('user_modification_model', 'umm');
        $this->load->model('page_model', 'pm');

		 if (!$this->session->userdata('user_name')) {
			 redirect("login");
		 }
	 }





	 public function index() {

		 $this->load->library('session');
		 if (!$this->session->userdata('user_name')) {
			 redirect("login");
		 } else {
			 $this->session_data();
             $this->load->model('add_trainee_model', 'atm');
             $data['data'] = $this->atm->get_trainee_dashboard();
           //  $data['data'] = $this->atm->get_pending_trainee();

			$this->load->view('super_admin/index', $data);
		 }
	 }

    public function message_list() {
        $this->session_data();
        $this->load->helper('text');
        $this->load->helper('date');
        $this->db->order_by("ctm_id", "DESC");
        $data['data'] = $this->db->get("contact_message")->result();
        $this->load->view('super_admin/message_list', $data);
    }


    public function about_us() {
        $this->session_data();
        $this->load->model('page_model', 'pm');
        $data['data'] = $this->pm->about_us_id('pages');
        $this->load->view('super_admin/about_us', $data);
    }
    public function update_about_us(){
        $this->session_data();
        $this->load->model('page_model', 'pm');
        $this->pm->update_about_us();
        redirect("super_admin/about_us","refresh");
    }


    public function contact_page() {
        $this->session_data();
        $this->load->model('page_model', 'pm');
        $data['data'] = $this->pm->contact_page_id('contact_page');
        $this->load->view('super_admin/contact_page', $data);
    }

    public function update_contact_page(){
        $this->session_data();
        $this->load->model('page_model', 'pm');
        $this->pm->update_contact_page();
        redirect("super_admin/contact_page","refresh");
    }

	 //Department

	 public function add_department() {
		 $this->session_data();

		 $this->load->model('add_institute_model', 'aim');
		 $data['data'] = $this->aim->get_institute();
		 $this->load->view('super_admin/add_department', $data);
	 }


	 public function save_department() {
		$this->session_data();
   		$this->load->model('add_department_model', 'adm');
		$this->adm->create_department();
		redirect("super_admin/add_department");
	}

	 public function department_list() {
		 $this->session_data();
		 $this->load->model('add_department_model', 'adm');
		 $data['data']=$this->adm->get_department();

		 $this->load->view('super_admin/department_list', $data);
	 }

	 public function edit_department($id) {
		 $this->session_data();

		 $this->load->model('add_institute_model', 'aim');
		 $data['dataa'] = $this->aim->get_institute();

		 $this->load->model('add_department_model', 'adm');
		 $data['data'] = $this->adm->get_department_id('department',$id);
		 $this->load->view('super_admin/edit_department', $data);

	 }

		 public function update_department() {
		 $this->session_data();
		 $this->load->model('add_department_model', 'adm');
		 $this->adm->update_department();
		 redirect("super_admin/department_list","refresh");
	 }

	 function department_delete($dept_id) {
		 $this->session_data();
		 $dept_id  = $this->uri->segment(3);
		 $this->db->where('dept_id', $dept_id);
		 $this->db->delete('department');
		 redirect("super_admin/department_list");
	 }



	 //End Department

		 // Trainee Controller

		//  public function add_trainee() {
		// 	 $this->session_data();
		// 	 $this->load->view('super_admin/add_trainee');
		//  }

		 public function save_trainee() {
			$this->session_data();
			$this->load->model('add_trainee_model', 'atm');
			$this->atm->create_trainee();
			redirect('super_admin/step_trainee');
		}

        public function pending_list() {
            $this->session_data();
            $this->load->model('add_trainee_model', 'atm');
            $data['data'] = $this->atm->get_pending_trainee();
            $this->load->view('super_admin/pending_list',$data);
        }

        public function approve_trainee($trainee_id) {
            $this->session_data();
            $this->load->model('add_trainee_model', 'atm');
            $data['data'] = $this->atm->approve_trainee('trainee',$trainee_id);
            redirect("super_admin/pending_list");
        }

		public function complete_trainee($trainee_id) {
            $this->session_data();
            $this->load->model('add_trainee_model', 'atm');
            $data['data'] = $this->atm->approve_trainee('trainee',$trainee_id);
            $this->load->view('super_admin/pending_list', $data);
        }

		public function certificate_list (){

			$this->session_data();
			$this->db->where('trainee_status', 'Active');
			$histry = $this->db->get('trainee');
			$result['histry_row'] =  $histry->result();
			$this->load->view('super_admin/trainee_certificate_list',$result);
		}
        public function approve_certificate($trainee_id) {
            $this->session_data();
            $this->load->model('add_trainee_model', 'atm');
            $data['data'] = $this->atm->approve_certificate('trainee',$trainee_id);
            redirect("super_admin/certificate_list");
        }

		 public function trainee_list() {
		 	$this->session_data();
		 	$this->load->model('add_trainee_model', 'atm');
		 	$data['data'] = $this->atm->get_trainee();
		 	$this->load->view('super_admin/trainee_list', $data);
		 }

		 public function edit_trainee($id) {
		 	$this->session_data();
			 $this->load->model('add_institute_model', 'aim');
			 $data['dataa'] = $this->aim->get_institute();

			 $this->load->model('add_department_model', 'adm');
			 $data['dept']=$this->adm->get_department();

		 	$this->load->model('add_trainee_model', 'atm');
		 	$data['data'] = $this->atm->get_trainee_id('trainee',$id);
		 	$this->load->view('super_admin/edit_trainee', $data);
		 }

		 public function update_trainee() {
		 	$this->session_data();
		 	$this->load->model('add_trainee_model', 'atm');
		 	$this->atm->update_trainee();
		 	redirect("super_admin/trainee_list","refresh");
		 }

		 function trainee_delete($trainee_id) {
		 	$this->session_data();
		 	$trainee_id  = $this->uri->segment(3);
		 	$this->db->where('trainee_id', $trainee_id);
		 	$this->db->delete('trainee');
		 	redirect("super_admin/trainee_list");
		 }

        public function trainee_details($id) {
            $this->session_data();
            $this->load->model('add_trainee_model', 'atm');
            $data['data'] = $this->atm->get_trainee_details('trainee',$id);
            $this->load->view('super_admin/trainee_details', $data);
        }

        public function trainee_certificate($id) {
            $this->session_data();
            $this->load->model('add_trainee_model', 'atm');
            $data['data'] = $this->atm->get_trainee_certificate('trainee',$id);
            $this->load->view('super_admin/trainee_certificate', $data);
        }

		 //End Department

        // public function step_trainee() {
        //     $this->session_data();
        //    //$this->load->model('add_trainee_model', 'atm');
        //    //$this->atm->create_trainee();
        //     $this->load->view('super_admin/step_trainee');
        // }


		// public function step_trainee() {
		// 	$this->session_data();

		// 	$this->load->view('super_admin/step_trainee');
		// }

		// public function nid_chack(){
		// 	$this->session_data();
		// 	$inputNumber = $this->input->post('nid');

		// 	// Query the database for matching numbers
		// 	$this->db->select('trainee_nid');
		// 	$this->db->from('trainee');
		// 	$this->db->where('trainee_nid', $inputNumber);
		// 	$query = $this->db->get();

		// 	if ($query->num_rows() > 0) {
		// 		// Matching number found

		// 	$this->load->view('super_admin/trainee_info');
		// 	} else {
		// 		// No matching number found
		// 		$this->session->set_flashdata('message', '<div class="alert alert-success">Record has been Created successfully.</div>');
		// 		redirect('super_admin/step_trainee');
		// 	}
		// }




























    //    Add Notice

	 public function add_notice() {
		 $this->session_data();
		 $this->load->model('add_notice_model', 'anm');
		 $this->anm->create_notice();
		 $this->load->view('super_admin/add_notice');
	 }

	 public function notice_list() {
		 $this->session_data();
		 $this->load->model('add_notice_model', 'anm');
		 $data['data'] = $this->anm->get_notice();
		 $this->load->view('super_admin/notice_list',$data);
	 }

	 public function edit_notice($id) {
		 $this->session_data();
		 $this->load->model('add_notice_model', 'anm');
		 $data['data'] = $this->anm->get_notice_id('notice',$id);
		 $this->load->view('super_admin/notice_edit', $data);
	 }


	 public function update_notice() {
		 $this->session_data();
		 $this->load->model('add_notice_model', 'anm');
		 $this->anm->update_notice();
		 redirect("super_admin/notice_list");
	 }

	 public function notice_delete($not_id) {
		 $this->session_data();
		 $not_id  = $this->uri->segment(3);
		 $this->db->where('not_id', $not_id );
		 $this->db->delete('notice');
		 redirect("super_admin/notice_list");
	 }
	 //End Notice


 //    Add Studentes

 public function add_student() {
	 $this->session_data();
	 $this->load->model('add_institute_model', 'aim');
	 // $this->load->model('add_student_model', 'asm');
	 // // $this->asm->create_student();
	 $this->load->view('super_admin/add_student');
 }

 public function save_student() {
	 $this->session_data();
	 $this->load->model('add_student_model', 'asm');
	 $this->asm->create_student();
	 redirect("super_admin/add_student");
	 $this->session->set_flashdata('message', '<div class="alert alert-success">Record has been Created successfully.</div>');
 }

 public function student_list() {
	 $this->session_data();
	 $this->load->model('add_student_model', 'asm');
	 $this->load->view('super_admin/student_list');
 }

 public function edit_student($id) {
		 $this->session_data();
		 $this->load->model('add_student_model', 'asm');
		 $data['data'] = $this->asm->get_student_row($id);
		 $this->load->view('super_admin/edit_student', $data);

 }

	 public function update_student() {
	 $this->session_data();
	 $this->load->model('add_student_model', 'asm');
	 $this->asm->update_student();
	 redirect("super_admin/student_list","refresh");
 }

 function student_delete($st_id) {
	 $this->session_data();
	 $st_id = $this->uri->segment(3);
	 $this->db->where('st_id', $st_id);
	 $this->db->delete('student');
	 redirect("super_admin/student_list");
 }

 public function add_non_student() {
	 $this->session_data();
	 $this->load->view('super_admin/add_non_student');
 }

 public function save_non_student() {
	 $this->session_data();
	 $this->load->model('add_non_student_model', 'asnm');
	 $this->asnm->create_non_student();
	 redirect("super_admin/add_non_student");

 }

 public function non_student_list() {
	 $this->session_data();
	 $this->load->model('add_non_student_model', 'ansm');
	 $this->load->view('super_admin/non_student_list');
 }

 public function edit_non_student($id) {
		 $this->session_data();
		 $this->load->model('add_non_student_model', 'ansm');
		 $data['data'] = $this->ansm->get_non_student_row($id);
		 $this->load->view('super_admin/edit_non_student', $data);

 }

	 public function update_non_student() {
	 $this->session_data();
	 $this->load->model('add_non_student_model', 'ansm');
	 $this->ansm->update_non_student();
	 redirect("super_admin/non_student_list","refresh");
 }
 function non_student_delete($non_st_id) {
	 $this->session_data();
	 $non_st_id = $this->uri->segment(3);
	 $this->db->where('non_st_id', $non_st_id);
	 $this->db->delete('non_student');
	 redirect("super_admin/non_student_list");
 }


	 //End Non Student

	 //News
	 public function create_news() {
		 $this->session_data();
		 $this->load->model('add_news_model', 'anm');
		 $this->anm->create_news();
		 $this->load->view('super_admin/create_news');
	 }

	 public function news_list() {
		 $this->session_data();
		 $this->load->model('add_news_model', 'anm');
		 $data['data'] = $this->anm->get_news();
		 $this->load->view('super_admin/news_list',$data);
	 }

   public function edit_news($id) {
		 $this->session_data();
		 $this->load->model('add_news_model', 'anm');
		 $data['data'] = $this->anm->get_news_id('news',$id);
		 $this->load->view('super_admin/edit_news', $data);

	 }

	 public function update_news() {
		 $this->session_data();
		 $this->load->model('add_news_model', 'anm');
		 $this->anm->update_news();
		 redirect("super_admin/news_list");
	 }

	 function news_delete($news_id) {
		 $this->session_data();
		 $news_id = $this->uri->segment(3);
		 $this->db->where('news_id', $news_id);
		 $this->db->delete('news');
		 redirect("super_admin/news_list");
	 }


	 //End News
	 // public function edit_notice($id) {
	 //     $this->session_data();
	 //     $this->load->model('add_student_model', 'asm');
	 //     $data['data'] = $this->anm->get_student_id('student',$id);
	 //     $this->load->view('super_admin/student_edit', $data);

	 // }


	 // public function update_student() {
	 //     $this->session_data();
	 //     $this->load->model('add_student_model', 'asm');
	 //     $this->asm->update_student();
	 //     redirect("super_admin/student_list");
	 // }

	 // public function student_delete($not_id) {
	 //     $this->session_data();
	 //     $not_id  = $this->uri->segment(3);
	 //     $this->db->where('st_id', $not_id );
	 //     $this->db->delete('student');
	 //     redirect("super_admin/student_list");
	 // }



	 // Add Purohit

	 public function add_purohit(){
		 $this->session_data();
		 $this->load->model('add_purohit_model', 'apm');
		 $this->apm->create_purohit();
		 $this->load->view('super_admin/add_purohit');
	 }

	 public function purohit_list() {
		 $this->session_data();
		 $this->load->model('add_purohit_model', 'apm');
		 $this->apm->get_purohit();
		 $this->load->view('super_admin/purohit_list');
	 }

	 function purohit_delete($purohit_id) {
		 $this->session_data();
		 $news_id = $this->uri->segment(3);
		 $this->db->where('purohit_id', $purohit_id);
		 $this->db->delete('purohit');
		 redirect("super_admin/purohit_list");
	 }

	 public function edit_purohit($id) {
		 $this->session_data();
		 $this->load->model('add_purohit_model', 'apm');
		 $data['data'] = $this->apm->get_purohit_id('purohit',$id);
		 $this->load->view('super_admin/edit_purohit', $data);

	 }

	 public function update_purohit() {
		 $this->session_data();
		 $this->load->model('add_purohit_model', 'apm');
		 $this->apm->update_purohit();
		 redirect("super_admin/purohit_list");
	 }

	 //End Purohit


	 // Add Kazi

	 public function add_kazi(){
		 $this->session_data();
		 $this->load->model('add_kazi_model', 'akm');
		 $this->akm->create_kazi();
		 $this->load->view('super_admin/add_kazi');
	 }

	 public function kazi_list() {
		 $this->session_data();
		 $this->load->model('add_kazi_model', 'akm');
		 $this->akm->get_kazi();
		 $this->load->view('super_admin/kazi_list');
	 }

	 function kazi_delete($kazi_id) {
		 $this->session_data();
		 $kazi_id = $this->uri->segment(3);
		 $this->db->where('kazi_id', $kazi_id);
		 $this->db->delete('kazi');
		 redirect("super_admin/kazi_list");
	 }

	  public function edit_kazi($id) {
		 $this->session_data();
		 $this->load->model('add_kazi_model', 'akm');
		 $data['data'] = $this->akm->get_kazi_id('kazi',$id);
		 $this->load->view('super_admin/edit_kazi', $data);

	 }

	 public function update_kazi() {
		 $this->session_data();
		 $this->load->model('add_kazi_model', 'akm');
		 $this->akm->update_kazi();
		 redirect("super_admin/kazi_list");
	 }
	 //End Kazi

	 // Add Imam

	 public function add_imam(){
		 $this->session_data();
		 $this->load->model('add_imam_model', 'aim');
		 $this->aim->create_imam();
		 $this->load->view('super_admin/add_imam');
	 }

	 public function imam_list() {
		 $this->session_data();
		 $this->load->model('add_imam_model', 'aim');
		 $this->aim->get_imam();
		 $this->load->view('super_admin/imam_list');
	 }

	 function imam_delete($imam_id) {
		 $this->session_data();
		 $imam_id = $this->uri->segment(3);
		 $this->db->where('imam_id', $imam_id);
		 $this->db->delete('imam');
		 redirect("super_admin/imam_list");
	 }

	 public function edit_imam($id) {
		 $this->session_data();
		 $this->load->model('add_imam_model', 'aim');
		 $data['data'] = $this->aim->get_imam_id('imam',$id);
		 $this->load->view('super_admin/edit_imam', $data);

	 }

	 public function update_imam() {
		 $this->session_data();
		 $this->load->model('add_imam_model', 'aim');
		 $this->aim->update_imam();
		 redirect("super_admin/imam_list");
	 }

	 //End Imam

	 //Mosque Start
	 public function add_mosque(){
		 $this->session_data();
		 $this->load->model('add_mosque_model', 'amm');
		 $this->amm->create_mosque();
		 $this->load->view('super_admin/add_mosque');
	 }
	 public function mosque_list() {
		 $this->session_data();
		 $this->load->model('add_mosque_model', 'amm');
		 $this->amm->get_mosque();
		 $this->load->view('super_admin/mosque_list');
	 }

	 function mosque_delete($mosque_id) {
		 $this->session_data();
		 $mosque_id = $this->uri->segment(3);
		 $this->db->where('mosque_id', $mosque_id);
		 $this->db->delete('mosque');
		 redirect("super_admin/mosque_list");
	 }

	 public function edit_mosque($id) {
		 $this->session_data();
		 $this->load->model('add_mosque_model', 'amm');
		 $data['data'] = $this->amm->get_mosque_id('mosque',$id);
		 $this->load->view('super_admin/edit_mosque', $data);

	 }
	 public function update_mosque(){
		 $this->session_data();
		 $this->load->model('add_mosque_model', 'amm');
		 $this->amm->update_mosque();
		 redirect("super_admin/mosque_list");
	 }

	 //End Mosque

	 //Temple Start
	 public function add_temple(){
		 $this->session_data();
		 $this->load->model('add_temple_model', 'atmb');
		 $this->atmb->create_temple();
		 $this->load->view('super_admin/add_temple');
	 }
	 public function temple_list() {
		 $this->session_data();
		 $this->load->model('add_temple_model', 'atmb');
		 $this->atmb->get_temple();
		 $this->load->view('super_admin/temple_list');
	 }

	 function temple_delete($temple_id) {
		 $this->session_data();
		 $temple_id = $this->uri->segment(3);
		 $this->db->where('temple_id', $temple_id);
		 $this->db->delete('temple');
		 redirect("super_admin/temple_list");
	 }

	 public function edit_temple($id) {
		 $this->session_data();
		 $this->load->model('add_temple_model', 'atmb');
		 $data['data'] = $this->atmb->get_temple_id('temple',$id);
		 $this->load->view('super_admin/edit_temple', $data);

	 }

	 public function update_temple(){
		 $this->session_data();
		 $this->load->model('add_temple_model', 'atmb');
		 $this->atmb->update_temple();
		 redirect("super_admin/temple_list");
	 }

	 //End Temple

	 //Guardian List
	 public function guardian_list() {
		 $this->session_data();
		 $this->load->model('guardian_model', 'gm');
		 $this->gm->get_guardian();
		 $this->load->view('super_admin/guardian_list');
	 }

	 public function edit_guardian($id) {
		 $this->session_data();
		 $this->load->model('guardian_model', 'gm');
		 $data['data'] = $this->gm->get_guardian_id('guardian_info',$id);
		 $this->load->view('super_admin/edit_guardian', $data);

	 }

 //    public function update_imam() {
 //        $this->session_data();
 //        $this->load->model('add_imam_model', 'aim');
 //        $this->aim->update_imam();
 //        redirect("super_admin/imam_list");
 //    }


	 //Guardian List

	 //    Add Law/Regulations
	 public function add_law_regulation(){
		 $this->session_data();
		 $this->load->view('super_admin/add_law_regulation');
	 }

	 public function save_law_regulation() {
		 $this->session_data();
		 $this->load->model('add_law_regulation_model', 'alrm');
		 $this->alrm->create_law_regulation();
	 }

	 public function law_regulation_list() {

		 $this->session_data();
		 $this->load->model('add_law_regulation_model', 'alrm');
		 //  $this->alrm->get_law_regulation();
		 $this->load->view('super_admin/law_regulation_list');
	 }

	 public function edit_law_regulation($id) {
		 $this->session_data();
		 $this->load->model('add_law_regulation_model', 'alrm');
		 $data['data'] = $this->alrm->get_law_regulation_id('law_regulation',$id);
		 $this->load->view('super_admin/edit_law_regulation', $data);

	 }

	 //Objections Start
		 public function add_objection(){
			 $this->session_data();
			 $this->load->model('add_objection_model', 'aom');
			 $this->aom->create_objection();
			 $this->load->view('super_admin/add_objection');
		 }

	 public function objections_list() {
		 $this->session_data();
		 $this->load->model('add_objection_model', 'aom');
		  $this->aom->get_objection();
		 $this->load->view('super_admin/objections_list');
	 }

	 function objection_delete($objection_id) {
		 $this->session_data();
		 $objection_id = $this->uri->segment(3);
		 $this->db->where('obj_id', $objection_id);
		 $this->db->delete('objections');
		 redirect("super_admin/objections_list");
	 }

	 public function edit_objection($id) {
		 $this->session_data();
		 $this->load->model('add_objection_model', 'aom');
		 $data['data'] = $this->aom->get_objection_id('objections',$id);
		 $this->load->view('super_admin/edit_objection', $data);

	 }

	  public function update_objection() {
		  $this->session_data();
		  $this->load->model('add_objection_model', 'aom');
		  $this->aom->update_objection();
		  redirect("super_admin/objections_list");
	  }


    //Start Add Institute
    public function add_institute(){
        $this->session_data();
        $this->load->model('add_institute_model', 'aim');
        $this->aim->create_institute();
        $this->load->view('super_admin/add_institute');
    }


    public function institute_list() {
        $this->session_data();
        $this->load->model('add_institute_model', 'aim');
		$data['data'] = $this->aim->get_institute();
        $this->load->view('super_admin/institute_list',$data);
    }


	public function edit_institute() {
		$this->session_data();
		$this->load->model('add_institute_model', 'aim');
		$data['data'] = $this->aim->get_institute_row();
	// 	echo "<pre>";
	// 	print_r($data);
	//  echo "</pre>";
		$this->load->view('super_admin/edit_institute', $data);

}
   public function update_institute() {
       $this->session_data();
       $this->load->model('add_institute_model', 'aim');
       $this->aim->update_institute();
        redirect("super_admin/institute_list","refresh");
   }
	function institute_delete($inst_user_id) {
		$this->session_data();
		$inst_user_id = $this->uri->segment(3);
		$this->db->where('user_id', $inst_user_id);
		$this->db->delete('admin_user');
		$this->db->where('inst_user_id', $inst_user_id);
		$this->db->delete('institute');

		// $this->db->delete('admin_user');
		redirect("super_admin/institute_list");
	}
    //End Institute
    public function user_modification_list() {
        $this->session_data();
		$this->db->where('user_type!=', 'super_admin');
		$all_users = $this->db->get('admin_user');
		$data['data'] =  $all_users->result();
        $this->load->view('super_admin/user_modification_list',$data);
    }



    //User Modification
    public function edit_super_admin($id) {
        $this->session_data();
        $this->load->model('user_modification_model', 'umm');
        $data['data'] = $this->umm->get_user_modification_id('admin_user',$id);
        $this->load->view('super_admin/edit_user_super_admin',$data);
    }

    public function edit_user_modification($id) {
        $this->session_data();
        $this->load->model('user_modification_model', 'umm');
        $data['data'] = $this->umm->get_user_modification_id('admin_user',$id);
 		$this->load->view('super_admin/edit_user_modification', $data);

    }

    public function update_user_modification() {
        $this->session_data();
        $this->load->model('user_modification_model', 'umm');
        $this->umm->update_user_modification();
        redirect("super_admin/user_modification_list");
    }

    function user_modification_delete($user_mod_id) {
        $this->session_data();
        $news_id = $this->uri->segment(3);
        $this->db->where('u_id', $user_mod_id);
        $this->db->delete('admin_user');
        redirect("super_admin/user_modification_list");
    }

    public function add_user(){
        $this->session_data();
       //$this->load->model('user_modification_model', 'umm');
       //$this->umm->create_user();
        $this->load->view('super_admin/add_user', 'refresh');
    }
        public function save_user() {
        $this->session_data();
        $this->load->model('user_modification_model', 'umm');
        $this->umm->create_user();
        redirect("super_admin/user_modification_list");
    }


    //End User Modification

    //Start Slider
    public function add_slider() {
        $this->session_data();
        $this->load->library('session');
        $this->load->helper('url');
        $this->load->model('add_slider_model', 'asm');
        $this->asm->create_slider();
        $this->load->view('super_admin/add_slider');
    }

    public function slider_list() {
        $this->session_data();
        $this->load->model('add_slider_model', 'asm');
        $data['data'] = $this->asm->get_slider();
        $this->load->view('super_admin/slider_list', $data);
    }

//    public function slider_view() {
//        $this->session_data();
//        $this->load->model('add_slider_model', 'asm');
//        $data['data'] = $this->asm->get_slider();
//        $this->load->view('home/inc/header', $data);
//    }



    public function edit_slider($id) {
        $this->session_data();
        $this->load->model('add_slider_model', 'asm');
        $data['data'] = $this->asm->get_slider_id('slider',$id);
        $this->load->view('super_admin/edit_slider', $data);
    }

    public function update_slider() {
        $this->session_data();
        $this->load->model('add_slider_model', 'asm');
        $this->asm->update_slider();
        redirect("super_admin/slider_list");
    }

    function slider_delete($slider_id) {
        $this->session_data();
        $slider_id = $this->uri->segment(3);
        $this->db->where('slider_id', $slider_id);
        $this->db->delete('slider');
        redirect("super_admin/slider_list");
    }
    //End Slider

    function department(){
        $data['institute'] = $this->add_trainee_model->fetch_institute();
        $this->load->view('super_admin/trainee_list',$data);
    }

    //QR code Generate

    function generate_qrcode($data)
    {
        /* Load QR Code Library */
        $this->load->library('ciqrcode');

        /* Data */
        $hex_data   = bin2hex($data);
        $save_name  = $hex_data.'.png';

        /* QR Code File Directory Initialize */
        $dir = 'assets/media/qrcode/';
        if (!file_exists($dir)) {
            mkdir($dir, 0775, true);
        }

        /* QR Configuration  */
        $config['cacheable']    = true;
        $config['imagedir']     = $dir;
        $config['quality']      = true;
        $config['size']         = '1024';
        $config['black']        = array(255,255,255);
        $config['white']        = array(255,255,255);
        $this->ciqrcode->initialize($config);

        /* QR Data  */
        $params['data']     = $data;
        $params['level']    = 'L';
        $params['size']     = 10;
        $params['savename'] = FCPATH.$config['imagedir']. $save_name;

        $this->ciqrcode->generate($params);

        /* Return Data */
        $return = array(
            'trainee_qr_code' => $data,
            'certificate_status' => 'Complete',
            'trainee_qr_code_file'    => $dir. $save_name
        );
        return $return;
    }

    /*
    |-------------------------------------------------------------------
    | Add Data
    |-------------------------------------------------------------------
    |
    */
    function add_qr_data($trainee_id)
    {
        /* Generate QR Code */
        $this->load->model('qr_code_test_model', 'qctm');

        $data = $this->input->post('trainee_qr_code');
        $qr_name  = $this->generate_qrcode($data);

        $this->db->where('trainee_id', $trainee_id);
        $this->db->update('trainee', $qr_name);
        redirect('super_admin/certificate_generate');

    }

    public function certificate_generate(){

        $this->session_data();
        $this->db->where('trainee_status', 'Complete');
        $this->db->where('certificate_status', 'InProcess');
        $history = $this->db->get('trainee');
        $data['data'] =  $history->result();

        $this->db->where('trainee_status', 'Complete');
        $this->db->where('certificate_status', 'Complete');
        $completed = $this->db->get('trainee');
        $data['completed'] =  $completed->result();
        $this->load->view('super_admin/certificate_generate',$data);
    }


}




