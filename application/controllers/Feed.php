<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Feed extends CI_Controller {

    public function __construct() {

        parent::__construct();

        $this->load->helper('xml');
        $this->load->helper('text');
        $this->load->model('blogs_model','blogs');
        $this->load->model('blogs_log','blogs_log');
    }
    
    public function index()
    {
        $data['feed_name'] = 'MyWebsite.com';
        $data['encoding'] = 'utf-8';
        $data['feed_url'] = 'http://127.0.0.1:8080/rsstutorial/feed';
        $data['page_description'] = 'Where my site is about comes here';
        $data['page_language'] = 'en-en';
        $data['creator_email'] = 'mail@me.com';
        $data['blogs'] = $this->blogs->getBlogs();

        // Getting the latest modified date from database and set it in the
        $time = $this->blogs_log->getLog();
        $latestModifiedDate = $time[0]['latest_modified_date'];
        $this->output->set_header('Last-Modified: '.$latestModifiedDate);
        if(isset($this->input->request_headers()['If-Modified-Since'])) {
            if($latestModifiedDate == $this->input->request_headers()['If-Modified-Since']) {
                http_response_code(304);
                $this->output->set_header('X-MODIFIED_SINCE: MATCH');
                die();
            }
        }
        
        http_response_code(200);
        $this->output->set_header('X-CONTENT-RETURN: YES');
        $this->output->set_header('Content-Type: text/xml'); //Tell the browser to parse it as RSS feed
        $this->load->view('rss', $data);
    }

    public function create() {

        $this->load->view('blogs/create');

        if($this->input->post('create')) {
            $data['title'] = $this->input->post('title');
            $data['blog_content'] = $this->input->post('blog_content');
            $response = $this->blogs->createBlogs($data);

            if($response == true) {
                $this->blogs_log->createDateLog();
                echo "Blog is created successfully.";
            }else{
                echo "Sorry, error is occurring.";
            }
        }
    }

    public function fetch() {

    }
}