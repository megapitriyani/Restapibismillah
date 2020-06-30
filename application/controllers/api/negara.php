<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
require APPPATH . '/libraries/Format.php';

class negara extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('negara_model');

        // #atur penggunaan limit dari KEY
        $this->methods['index_get']['limit']    = 30;
        $this->methods['index_delete']['limit'] = 30;
        $this->methods['index_post']['limit']   = 30;
        $this->methods['index_put']['limit']    = 30;
    }


    #METHODE GET DATA
    public function index_get()
    {
        $id     = $this->get('id');
        if ($id === null) {
            $negara = $this->negara_model->getnegara();
        } else {
            $negara = $this->negara_model->getnegara($id);
        }
        if ($negara) {
            $this->response([
                'status' => TRUE,
                'data' =>  $negara
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => false,
                'Message' =>  'Ops! Sorry, ID not Found!'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    #METHOD DELETE DATA
    public function index_delete()
    {
        $response = $this->negara_model->delete_negara(
            $this->delete('id')
        );
        $this->response($response);
    }

    #METHOD POST DATA
    public function index_post()
    {
        $data = [
            'nama_negara'  => $this->post('nama_negara'),
            'kode_negara'  => $this->post('kode_negara'),
            'ibu_kota'     => $this->post('ibu_kota'),
            'bahasa_resmi' => $this->post('bahasa_resmi'),
            'latitude'     => $this->post('latitude'),
            'longitude'    => $this->post('longitude'),
            'bendera'      => $this->post('bendera')
        ];
        if (isset($_POST['nama_negara'])) {
            // // tangkap  gambar
            // $foto_tmp = $_FILES['foto']['tmp_name'];
            // $foto_nama = $_FILES['foto']['name'];
            // //simpan gambar di server
            // move_uploaded_file($foto_tmp, 'images/' . $foto_nama); //MAIN POINT
            $this->negara_model->createnegara($data) > 0;

            $this->response([
                'status'  => true,
                'message' => 'Data berhasil ditambahkan!'
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->response([
                'status'  => false,
                'Message' =>  'Gagal menambahkan data baru!'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function index_put()
    {
        $id = $this->put('id');
        $data = [
            'nama_negara'  => $this->put('nama_negara'),
            'kode_negara'  => $this->put('kode_negara'),
            'ibu_kota'     => $this->put('ibu_kota'),
            'bahasa_resmi' => $this->put('bahasa_resmi'),
            'latitude'     => $this->put('latitude'),
            'longitude'    => $this->put('longitude'),
            'bendera'      => $this->put('bendera')
        ];
        if (
            $this->negara_model->updateNegara($data, $id) > 0
        ) {
            $this->response([
                'status'  => true,
                'message' => 'Data berhasil diperbarui!'
            ], REST_Controller::HTTP_UPGRADE_REQUIRED);
        } else {
            $this->response([
                'status'  => false,
                'Message' =>  'Gagal memperbarui data!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
