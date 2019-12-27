<?php/** * Created by PhpStorm. * User: Administrator * Date: 2019/7/22 * Time: 14:07 */namespace app\index\controller;use think\Controller;use think\Db;class Index extends Controller{    public function index()    {        //introduction 模块        $tico = Db::table('kit_tico')->select();        $ticos =[];        foreach($tico as $k=>$v){            if($v['tico_modular'] == 'About'){                $ticos['About'] = $tico[$k];            }            if($v['tico_modular'] == 'Testimonials'){                $ticos['Testimonials'] = $tico[$k];            }            if($v['tico_modular'] == 'Features'){                $ticos['Features'] = $tico[$k];            }            if($v['tico_modular'] == 'Team'){                $ticos['Team'] = $tico[$k];            }            if($v['tico_modular'] == 'Pricing'){                $ticos['Pricing'] = $tico[$k];            }            if($v['tico_modular'] == 'ContentUs'){                $ticos['ContentUs'] = $tico[$k];            }        }        //introduction 模块        $introduction = Db::table('kit_introduction')->select();        //about 模块        $about = Db::table('kit_about')->where('about_views','1')->select();        //Testimonials模块        $testimonials = Db::table('kit_testimonials')->select();        foreach($testimonials as $k=>$V){            if(ceil($k%2) == 1){                $testimonials[$k]['existence'] = 'item-reversed';            }else{                $testimonials[$k]['existence'] = '';            }        }        //features 模块数据        $features = Db::table('kit_features')            ->alias('a')            ->join('kit_lcon b','a.features_lcon_id = b.id')            ->select();        //team模块        $team = Db::table('kit_team')->select();        foreach($team as $k=>$v){            $whereteam['contact_tool_name'] = explode(',',$v['team_user_contact_tool']);            $contacttool = Db::table('kit_contact_tool')->where($whereteam)->field('contact_tool_name,contact_tool_value')->select();            $team[$k]['contacttool'] = $contacttool;        }        //Pricing 模块        $pricing = Db::table('kit_pricing')->select();        foreach($pricing as $k=>$v){            if($v['pricing_single_Installation'] == 1){                $pricing[$k]['pricing_single_Installation'] = 'fa-check';            }else{                $pricing[$k]['pricing_single_Installation'] = 'fa-times';            }            if($v['pricing_multiple_installations'] == 1){                $pricing[$k]['pricing_multiple_installations'] = 'fa-check';            }else{                $pricing[$k]['pricing_multiple_installations'] = 'fa-times';            }            if($v['pricing_link'] == 1){                $pricing[$k]['pricing_link'] = 'fa-check';            }else{                $pricing[$k]['pricing_link'] = 'fa-times';            }        }        $tikeco = Db::table('kit_tikeco')->find();        //加载数据        $this->assign('ticos',$ticos);        $this->assign('introduction',$introduction);        $this->assign('about',$about);        $this->assign('testimonials',$testimonials);        $this->assign('features',$features);        $this->assign('team',$team);        $this->assign('pricing',$pricing);        $this->assign('tikeco',$tikeco);        return $this->fetch('index/index');    }}