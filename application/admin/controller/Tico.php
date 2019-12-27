<?php/** * Created by PhpStorm. * User: Administrator * Date: 2019/7/29 * Time: 14:15 */namespace app\admin\controller;use app\admin\model\Tico as TicoModel;use think\Request;class Tico extends Base{    //列表页显示    public function index(Request $request)    {        if ($request->isAjax()) {            try {                $model = new TicoModel();                $info = $model->index();                echo ajax($info, count($info), 'Success');            } catch (\Exception $exception) {                return $exception->getMessage();            }        }else{            return $this->fetch();        }    }    //添加    public function add_img(Request $request)    {        if ($request->isPost()) {            //取所有值 先验证            $arr = json_decode($request->param('data'), true);            //字段验证            if(empty($arr['introduction_title'])){                return 2; //标题不能为空            }else if(empty($arr['introduction_content'])){                return 3; //内容不能为空            }else if(empty($arr['introduction_img'])){                return 4; //头像不能为空            }else{                $model = new Tico();                $info = $model->add_img($arr);                return $info;            }        }        return $this->fetch();    }    //删除    public function img_del(Request $request)    {        if (!$request->param('id')) {            //参数不存在修改失败            return 2;        }else{            $model = new Tico();            $info = $model->img_del($request->param('id'));            return $info;        }    }    //修改    public function update_edit(Request $request)    {        if ($request->isAjax()) {            //取所有值 先验证            $arr = json_decode($request->param('data'), true);            //字段验证            if(empty($arr['tico_title'])){                return 2; //标题不能为空            }else if(empty($arr['tico_content'])){                return 3; //内容不能为空            }else{                $model = new TicoModel;                $info = $model->updateedit($arr);                return $info;            }        }else{            //取轮播图find一条在修改前显示的数据            $model = new TicoModel();            $arr = $model->updateinfo($request->param('id'));            $this->assign('arr', $arr);            return $this->fetch();        }    }}