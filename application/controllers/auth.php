<?php
defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;


class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function index()
    {
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('templates/auth_footer');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');


        $user = $this->db->get_where('user', ['email' => $email])->row_array();

        if (password_verify($password, $user['password'])) {
            $data = ['email' => $user['email']];
            $this->session->set_userdata($data);
            redirect('user');
        } else {
            $this->session->set_flashdata(
                'message',
                '<div class="alert alert-danger" role="alert"> Maaf, Password Anda Salah! </div>'
            );
            redirect('auth');
        }
    }


    public function registration()
    {
        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('email', 'Email', 'required|trim'); // |valid_email
        $this->form_validation->set_rules('name', 'Name', 'required|trim|min_length[3]');


        if ($this->form_validation->run() == false) {
            $data['title'] = 'User Registrasi';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/registration');
            $this->load->view('templates/auth_footer');
        } else {
            $data = [
                'name'      => htmlspecialchars($this->input->post('name', true)),
                'email'     => htmlspecialchars($this->input->post('email', true)), //security itu yg htmlspesialchars untuk mnghindari SSS 
                'password'  => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
            ];
            //INSERT KE DATABASE
            $this->db->insert('user', $data);
            $this->session->set_flashdata(
                'message',
                '<div class="alert alert-success" role="alert"> Selamat! Data telah diregistrasi </div>'
            );

            redirect('auth');
        }
    }

    public function logout()
    {

        $this->session->unset_userdata('email');
        $this->session->set_flashdata(
            'message',
            '<div class="alert alert-success" role="alert"> Kamu telah keluar. </div>'
        );

        redirect('auth');
    }
}
