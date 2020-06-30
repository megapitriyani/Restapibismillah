<?php
defined('BASEPATH') or exit('No direct script access allowed');

class user extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('api_model');
        $this->load->library('form_validation');
    }
    public function index()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //echo 'Assalamualaikum!' . $data['user']['name'];
        $this->load->view('templates/header');
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer');
    }

    public function token()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $COBA['keys'] = $this->db->get_where('keys', ['key' =>  $this->session->USERDATA('key')])->row_array();

        //echo 'Assalamualaikum!' . $data['user']['name'];
        $this->load->view('templates/header');
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/token', $COBA);
        $this->load->view('templates/footer');
    }

    public function rest_client()
    {
        // $data = $this->api_model->fetch_all();
        // echo json_encode($data->result_array());

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->view('templates/header');
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/rest_client', $data);
        $this->load->view('templates/footer');
    }

    function insert()
    {
        $this->form_validation->set_rules('nama_negara', 'Nama Negara', 'required');
        if ($this->form_validation->run()) {
            $data = array(
                'nama_negara'   =>    $this->input->post('nama_negara'),
                'kode_negara'   =>    $this->input->post('kode_negara'),
                'ibu_kota'      =>    $this->input->post('ibu_kota'),
                'bahasa_resmi'  =>    $this->input->post('bahasa_resmi'),
                'latitude'      =>    $this->input->post('latitude'),
                'longitude'     =>    $this->input->post('longitude'),
                'bendera'       =>    $this->input->post('bendera')
            );

            $this->api_model->insert_api($data);

            $array = array(
                'success'     =>    true
            );
        } else {
            $array = array(
                'error'       =>    true
            );
            echo json_encode($array);
        }
    }

    function fetch_single()
    {
        if ($this->input->post('id')) {
            $data = $this->api_model->fetch_single_user($this->input->post('id'));

            foreach ($data as $row) {
                $output['nama_negara']  = $row['nama_negara'];
                $output['kode_negara']  = $row['kode_negara'];
                $output['ibu_kota']     = $row['ibu_kota'];
                $output['bahasa_resmi'] = $row['bahasa_resmi'];
                $output['latitude']     = $row['latitude'];
                $output['longitude']    = $row['longitude'];
            }
            echo json_encode($output);
        }
    }

    function update()
    {
        $this->form_validation->set_rules('nama_negara', 'Nama Negara', 'required');
        if ($this->form_validation->run()) {
            $data = array(
                'nama_negara'   =>    $this->input->post('nama_negara'),
                'kode_negara'   =>    $this->input->post('kode_negara'),
                'ibu_kota'      =>    $this->input->post('ibu_kota'),
                'bahasa_resmi'  =>    $this->input->post('bahasa_resmi'),
                'latitude'      =>    $this->input->post('latitude'),
                'longitude'     =>    $this->input->post('longitude'),
                'bendera'       =>    $this->input->post('bendera')

            );

            $this->api_model->update_api($this->input->post('id'), $data);

            $array = array(
                'success'     =>    true
            );
        } else {
            $array = array(
                'error'       =>    true
            );
        }
        echo json_encode($array);
    }

    function delete()
    {
        if ($this->input->post('id')) {
            if ($this->api_model->delete_single_user($this->input->post('id'))) {
                $array = array(

                    'success'    =>    true
                );
            } else {
                $array = array(
                    'error'        =>    true
                );
            }
            echo json_encode($array);
        }
    }
}
