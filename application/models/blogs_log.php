<?php

 class Blogs_log extends CI_MODEL {

    public function getLog() {

        $query = $this->db->query('select * from blog_log order by id desc limit 1');
        return $query->result_array();
    }

    public function createDateLog() {

        date_default_timezone_set('Asia/Yangon');
        $data = ['latest_modified_date' => date('Y/m/d H:i:s', time())];

        $this->db->insert('blog_log',$data);
    }
 }

?>