<?php
class negara_model extends CI_Model
{
    // response jika field ada yang kosong
    public function empty_response()
    {
        $response['status'] = 502;
        $response['error'] = true;
        $response['message'] = 'Field tidak boleh kosong';
        return $response;
    }
    public function getnegara($id = null)
    {
        #minta data berdasarkan ID

        if ($id === null) {
            return $this->db->get('negara')->result_array();
        } else {
            return $this->db->get_where('negara', ['id' => $id])->result_array();
        }
    }

    // hapus data person
    public function delete_negara($id)
    {
        if ($id == '') {
            return $this->empty_response();
        } else {
            $where = array(
                "id" => $id
            );
            $this->db->where($where);
            $delete = $this->db->delete("negara");
            if ($delete) {
                $response['status'] = 200;
                $response['error'] = false;
                $response['message'] = 'Data Negara dihapus.';
                return $response;
            } else {
                $response['status'] = 502;
                $response['error'] = true;
                $response['message'] = 'Data negara gagal dihapus.';
                return $response;
            }
        }
    }
    public function createnegara($data)
    {
        $this->db->insert('negara', $data);
        return $this->db->affected_rows();
    }

    public function updateNegara($data, $id)
    {
        $this->db->update('negara', $data, ['id' =>  $id]);
        return $this->db->affected_rows();
    }
}
