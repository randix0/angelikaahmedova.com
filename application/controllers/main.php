<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

    public function __construct()
    {
        parent::__construct();

        $TEST_MODE = $this->config->item('TEST_MODE');

        if (!$TEST_MODE && (!$this->user->logged() || $this->user->access_level < 50 || $this->user->is_deleted)) {
            redirect('/pages/login/');
        }

    }

	public function index($order_by = '')
	{
        //$this->load->model('m_ideas');
        $instagram_url = 'https://api.instagram.com/v1/users/191389854/media/recent?access_token=487886679.5b9e1e6.7a9786b26b9042baa2f5b728981ab4aa';
        $instagram_json = @file_get_contents($instagram_url);
        $instagram = array();
        if ($instagram_json)
            $instagram = json_decode($instagram_json, true);

        $ps = array(
            '__PAGE' => 'main',
            'instagram' => $instagram
        );
        $this->mysmarty->view('global/main/index.tpl', $ps);
	}

    public function html()
    {
        $ps = array();
        $this->mysmarty->view('global/html/index.tpl', $ps, false);
    }


    public function fake()
    {
        $this->load->helper('url');
        $user = array(
            'user_id' => '1',
            'login' => '',
            'password' => '',
            'email' => 'i@randix.info',
            'first_name' => 'Yuriy',
            'last_name' => 'Denishchenko',
            'url_friendly_name' => 'randix0',
            'timezone' => '2',
            'gender' => '2',
            'access_level' => '100',
            'auto_login_key' => '',
            'facebook_id' => '100000667500718',
        );

        $this->session->set_userdata($user);

        echo '<a href="/">main</a>';
    }


    public function exchange()
    {
        if (!$this->settings->exchange) {
            $exchange_url = 'https://privat24.privatbank.ua/p24/accountorder?oper=prp&PUREXML&apicour&country=ua';
            $exchange_raw = @file_get_contents($exchange_url);
            if (!$exchange_raw) return die('file_get_contents error');
            if (!function_exists('simplexml_load_string')) return die('simplexml_load_string doesn`t exists');

            $exchange = simplexml_load_string($exchange_raw);

            $x = array();
            foreach($exchange as $e)
            {
                $ccy = (string)$e['ccy'];
                $buy = ((int)$e['buy']/(10000*(int)$e['unit']));
                $x[$ccy] = $buy; //($e['buy']/(10000*$e['unit']));
            }
            $this->settings->set(array('exchange'=>$x['USD']));
        }

        echo $this->settings->exchange;
    }
}

/* End of file main.php */
/* Location: ./application/controllers/main.php */