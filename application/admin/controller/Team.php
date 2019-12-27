<?php/** * Created by PhpStorm. * User: Administrator * Date: 2019/7/24 * Time: 16:25 */namespace app\admin\controller;use app\admin\model\Team as TeamModel;use app\admin\model\ContactTool as ContactToolModel;use think\Request;use think\Db;class Team extends Base{    //列表页显示    public function index(Request $request)    {        if ($request->isAjax()) {            try {                $data=[];                if ($request->param('id')) {                    $data[] = ['id', '=', $request->param('id')];                }                if ($request->param('team_user_name')) {                    $team_user_name = $request->param('team_user_name');                    $data[] = ['team_user_name', 'like', "%$team_user_name%"];                }                if ($request->param('team_user_postion')) {                    $team_user_postion = $request->param('team_user_postion');                    $data[] = ['team_user_postion', 'like', "%$team_user_postion%"];                }                $model = new TeamModel();                $limit = $request->param('limit');                $info = $model->index($data,$limit);                $info = $info->toArray()['data'];                echo ajax($info, count($info), 'Success');            } catch (\Exception $exception) {                return $exception->getMessage();            }        }else{            return $this->fetch();        }    }    //添加轮播图片页面显示    public function add_img(Request $request)    {        if ($request->isPost()) {            //取所有值 先验证            $arr = json_decode($request->param('data'), true);            $arr['permissions'] = trim($arr['permissions'], ',');            //字段验证            if(empty($arr['team_user_name'])){                return 2; //姓名不能为空            }else if(empty($arr['team_user_postion'])){                return 3; //职位不能为空            }else if(empty($arr['team_user_des'])){                return 4; //简介不能为空            }else if(empty($arr['permissions'])){                return 5; //可联系方式不能为空            }else if(empty($arr['team_user_img'])){                return 6; //头像不能为空            }else{                $model = new TeamModel();                $info = $model->add_img($arr);                return $info;            }        }        $info = Db::table('kit_contact_tool')->select();        $this->assign('info',$info);        return $this->fetch();    }    //删除    public function img_del(Request $request)    {        if (!$request->param('id')) {            //参数不存在修改失败            return 2;        }else{            $model = new TeamModel();            $info = $model->img_del($request->param('id'));            return $info;        }    }    //修改    public function update_edit(Request $request)    {        if ($request->isAjax()) {            //取所有值 先验证            $arr = json_decode($request->param('data'), true);            $arr['permissions'] = trim($arr['permissions'], ',');            //字段验证            if(empty($arr['team_user_name'])){                return 2; //姓名不能为空            }else if(empty($arr['team_user_postion'])){                return 3; //职位不能为空            }else if(empty($arr['team_user_des'])){                return 4; //简介不能为空            }else if(empty($arr['permissions'])){                return 5; //可联系方式不能为空            }else{                $model = new TeamModel;                $info = $model->updateedit($arr);                return $info;            }        }else{            //取轮播图find一条在修改前显示的数据            $model = new TeamModel();            $tool  = new ContactToolModel();            $arr = $model->updateinfo($request->param('id'));            $tool = $tool->index();            $this->assign('tool', $tool);            $this->assign('arr', $arr);            return $this->fetch();        }    }}