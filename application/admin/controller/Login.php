<?php/** * Created by PhpStorm. * User: Administrator * Date: 2019/7/17 * Time: 17:39 */namespace app\admin\controller;use app\admin\model\User as UserModel;use think\facade\Session;class Login extends Base{    //登录页面显示    public function index()    {        if ($this->request->isAjax()){            $model = new UserModel();            $info = $model->login($this->postData('login'));            return $info;        }        return $this->fetch('Login/index');    }    /**     * 退出     */    public function loginout()    {        Session::delete('userinfo');        $this->redirect('Login/index');    }}