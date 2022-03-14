<?php

 class Blogs_model extends CI_MODEL {

    public function getBlogs($limit = NULL) {

        return $this->db->get('blog',$limit);
    }

    public function createBlogs($data) {

        $this->db->insert('blog',$data);

        return true;
    }
 }

?>