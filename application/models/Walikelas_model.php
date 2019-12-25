<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Walikelas_model extends CI_Model
{
    public function getAllWalikelas()
    {
        return $this->db->get('walikelas')->result_array();
    }

    public function hapusWalikelas($email, $user, $result)
    {
        $this->db->set($email);
        $this->db->where($result);
        $this->db->delete('walikelas');

        $this->db->where($user);
        $this->db->delete('user');
    }

    public function tambahWalikelas()
    {
        $name = $this->input->post('name', true);
        $email = $this->input->post('email', true);

        $data1 = [
            'name' => $name,
            'email' => $email,
            'kelas_binaan' => $this->input->post('kelas_binaan'),
            'role_id' => 3,
            'is_active' => 1,
            'image' => 'default.jpg',
            'date_created' => time()
        ];

        $data2 = [
            'name' => $name,
            'email' => $email,
            'image' => 'default.jpg',
            'password' => $email,
            'role_id' => 3,
            'is_active' => 1,
            'date_created' => time()
        ];

        $this->db->insert('walikelas', $data1);
        $this->db->insert('user', $data2);
    }
}
