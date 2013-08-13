<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

    }

    public function index($id = 0)
    {
        $this->load->model('m_blog');

        $posts = $this->m_blog->getItems(array(
            'order' => array('id'=>'desc')
        ), 'posts', true);

        $ps = array(
            '__PAGE' => 'blog',
            'posts' => $posts
        );
        $this->mysmarty->view('global/blog/posts/index.tpl', $ps);
    }

    public function archive($id = 0)
    {
        $this->load->model('m_blog');

        $posts = $this->m_blog->getItems(array(
            'order' => array('id'=>'desc')
        ), 'posts', true);

        $ps = array(
            '__PAGE' => 'blog',
            'posts' => $posts
        );
        $this->mysmarty->view('global/blog/posts/index.tpl', $ps);
    }

    public function tags($id = 0)
    {
        $this->load->model('m_blog');

        $posts = $this->m_blog->getItems(array(
            'order' => array('id'=>'desc')
        ), 'posts', true);

        $ps = array(
            '__PAGE' => 'blog',
            'posts' => $posts
        );
        $this->mysmarty->view('global/blog/posts/index.tpl', $ps);
    }

    public function post($id = 0)
    {
        $id = (int)$id;
        $this->load->model('m_blog');

        $post = $this->m_blog->getItem($id, 'posts', true);

        $ps = array(
            '__PAGE' => 'blog',
            'post' => $post
        );
        $this->mysmarty->view('global/blog/post/index.tpl', $ps);
    }

}