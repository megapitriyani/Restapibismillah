<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Test_api extends CI_Controller
{

	function index()
	{
		$this->load->view('api_view');
	}

	function action()
	{
		if ($this->input->post('data_action')) {
			$data_action = $this->input->post('data_action');

			if ($data_action == "Delete") {
				$api_url = "http://localhost/bismillah/user/rest_client/delete";

				$form_data = array(
					'id'		=>	$this->input->post('id')
				);

				$client = curl_init($api_url);

				curl_setopt($client, CURLOPT_POST, true);

				curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);

				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

				$response = curl_exec($client);

				curl_close($client);

				echo $response;
			}

			if ($data_action == "Edit") {
				$api_url = "http://localhost/bismillah/user/rest_client/update";

				$form_data = array(
					'nama_negara'		=>	$this->input->post('nama_negara'),
					'kode_negara'		=>	$this->input->post('kode_negara'),
					'ibu_kota'			=>	$this->input->post('ibu_kota'),
					'bahasa_resmi'		=>	$this->input->post('bahasa_resmi'),
					'latitude'			=>	$this->input->post('latitude'),
					'longitude'			=>	$this->input->post('longitude'),
					'bendera'			=>	$this->input->post('bendera'),
					'id'				=>	$this->input->post('id')

				);

				$client = curl_init($api_url);

				curl_setopt($client, CURLOPT_POST, true);

				curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);

				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

				$response = curl_exec($client);

				curl_close($client);

				echo $response;
			}

			if ($data_action == "fetch_single") {
				$api_url = "http://localhost/bismillah/user/rest_client/fetch_single";

				$form_data = array(
					'id'		=>	$this->input->post('user_id')
				);

				$client = curl_init($api_url);

				curl_setopt($client, CURLOPT_POST, true);

				curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);

				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

				$response = curl_exec($client);

				curl_close($client);

				echo $response;
			}

			if ($data_action == "Insert") {
				$api_url = "http://localhost/bismillah/user/rest_client/insert";


				$form_data = array(
					'nama_negara'		=>	$this->input->post('nama_negara'),
					'kode_negara'		=>	$this->input->post('kode_negara'),
					'ibu_kota'			=>	$this->input->post('ibu_kota'),
					'bahasa_resmi'		=>	$this->input->post('bahasa_resmi'),
					'latitude'			=>	$this->input->post('latitude'),
					'longitude'			=>	$this->input->post('longitude'),
					'bendera'			=>	$this->input->post('bendera'),
					'id'				=>	$this->input->post('id')
				);

				$client = curl_init($api_url);

				curl_setopt($client, CURLOPT_POST, true);

				curl_setopt($client, CURLOPT_POSTFIELDS, $form_data);

				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

				$response = curl_exec($client);

				curl_close($client);

				echo $response;
			}





			if ($data_action == "fetch_all") {
				$api_url = "http://localhost/bismillah/user/rest_client/api";

				$client = curl_init($api_url);

				curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

				$response = curl_exec($client);

				curl_close($client);

				$result = json_decode($response);

				$output = '';

				if (count($result) > 0) {
					foreach ($result as $row) {
						$output .= '
						<tr>
							<td>' . $row->nama_negara . '</td>
							<td>' . $row->kode_negara . '</td>
							<td>' . $row->ibu_kota . '</td>
							<td>' . $row->bahasa_resmi . '</td>
							<td>' . $row->latitude . '</td>
							<td>' . $row->longitude . '</td>
							<td>' . $row->bendera . '</td>
							<td><button type="button" name="edit" class="btn btn-warning btn-xs edit" id="' . $row->id . '">Edit</button></td>
							<td><button type="button" name="delete" class="btn btn-danger btn-xs delete" id="' . $row->id . '">Delete</button></td>
						</tr>

						';
					}
				} else {
					$output .= '
					<tr>
						<td colspan="4" align="center">No Data Found</td>
					</tr>
					';
				}

				echo $output;
			}
		}
	}
}
