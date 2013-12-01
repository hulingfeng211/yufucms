<?php
/*
* YUFUCMS安装文件
*/
error_reporting(0); //设置 PHP 的报错级别并返回当前级别。

session_start();
define('YUFUCMS_INSTALL', TRUE);
define('YUFUCMS_ROOT', str_replace('\\', '/', substr(dirname(__FILE__), 0, -7)));

$_LCVERSION = '企业网站系统2.0 正式版';

include 'inc/install.func.php';
include 'inc/install.lang.php';

$timestamp=time();
$ip=getip();
$database='inc/yufucms.sql';//数据库
$yufucms_config_file='config.ini.php';//全局配置文件

header('Content-Type: text/html; charset=utf-8');
if(file_exists(YUFUCMS_ROOT."/install/install.lock")){
	exit($lang['install_is_lock']);
}
if(!is_readable($database))
{
	exit($lang['install_db_error']);
}
$quit = false;
$msg = $alert = $link = $sql = $allownext = '';
$PHP_SELF = addslashes(htmlspecialchars($_SERVER['PHP_SELF'] ? $_SERVER['PHP_SELF'] : $_SERVER['SCRIPT_NAME']));
set_magic_quotes_runtime(0);
if (!get_magic_quotes_gpc())
{
    addS($_POST);
    addS($_GET);
}
@extract($_POST);
@extract($_GET);
print_r($_GET);

$step = $_GET['step'];
switch($step){
    
	case 2:
                if(isset($_POST['agree'])){
                    $agree = $_POST['agree'];
                }
                if(isset($_GET['agree'])){
                    $agree = $_GET['agree'];
                }
		if($agree == 1){
                    $dirarray = array (
                        'install/',
                        'Uploads/',
                        'Data/',
                    );
                    $writeable = array();
                    foreach($dirarray as $key => $dir){
                            if(writable($dir)){
                                    $writeable[$key] = $dir.result(1, 0);
                            }else{
                                    $writeable[$key] = $dir.result(0, 0);
                                    $quit = TRUE;
                            }
                    }

                    $PHP_GD  = '';
                    if(extension_loaded('gd')) {
                            if(function_exists('imagepng')) $PHP_GD .= 'png';
                            if(function_exists('imagejpeg')) $PHP_GD .= ' jpg';
                            if(function_exists('imagegif')) $PHP_GD .= ' gif';
                    }
                    $PHP_JSON = '0';
                    if(extension_loaded('json')) {
                            if(function_exists('json_decode') && function_exists('json_encode')) $PHP_JSON = '1';
                    }
                    //新加fsockopen 函数判断,此函数影响安装后会员注册及登录操作。
                    if(function_exists('fsockopen')) {
                            $PHP_FSOCKOPEN = '1';
                    }
                    
                    //是否满足yufucms安装需求
                    $is_right = (phpversion() >= '5.2.0' && extension_loaded('mysql') && $PHP_JSON && $PHP_GD && $PHP_FSOCKOPEN) ? 1 : 0;

                    include tpl("step3");
		}else{
                    exit($lang['install_disagree_license']);
		}
		break;
	case 3:
                
		include tpl("step4");
		break;
	
	case 4:

            $data = $_POST;
		if(empty($data['db_host']) || empty($data['db_username']) || empty($data['db_name']) || empty($data['db_prefix'])){
			$msg .= '<p>'.$lang['mysql_invalid_configure'].'<p>';
			$quit = TRUE; 
                        
		}elseif(!@mysql_connect($data['db_host'], $data['db_username'], $data['db_password'])){
			$msg .= '<p>数据库帐号或数据库密码错误</p>';
			$quit = TRUE;
                        
		}
                
		if(strstr($data['db_prefix'], '.')){
			$msg .= '<p>'.$lang['mysql_invalid_prefix'].'</p>';
			$quit = TRUE;
                        
		}
                
		if(strlen($data['password']) < 6){
			$msg .= '<p>'.$lang['founder_invalid_password'].'</p>';
			$quit = TRUE;
		}elseif($data['password'] != $data['rpassword']){
			$msg .= '<p>'.$lang['founder_invalid_rpassword'].'</p>';
			$quit = TRUE;
		
		}else{
			$forbiddencharacter = array ("\\","&"," ","'","\"","/","*",",","<",">","\r","\t","\n","#","$","(",")","%","@","+","?",";","^");
			foreach($forbiddencharacter as $value){
				if(strpos($data['founder_name'], $value) !== FALSE){
					$msg .= '<p>'.$lang['forbidden_character'].'</p>';
					$quit = TRUE;
					break;
				}
			}
		}
		if($quit){
			$allownext = 'disabled="disabled"';
                        exit($msg);
		}else{
			$config_file_content	=	array();
			$config_file_content['db_host']			 =	$data['db_host'];
			$config_file_content['db_name']			 =	$data['db_name'];
			$config_file_content['db_username']		 =	$data['db_username'];
			$config_file_content['db_password']		 =	$data['db_password'];
			$config_file_content['db_prefix']		 =	$data['db_prefix'];
			$config_file_content['db_pconnect']		 =	0;
			$config_file_content['db_charset']		 =	'utf8';
			$config_file_content['dbType']			 =	'MySQL';
			
			$default_manager_account	             =	array();
			$default_manager_account['founder_name'] =	$data['founder_name'];
			$default_manager_account['password']	 =	md5($data['password']);

			$_SESSION['config_file_content']	 =$config_file_content;
			$_SESSION['default_manager_account']	 =	$default_manager_account;
			
		}
		//写配置文件
		$fp = fopen(YUFUCMS_ROOT.$yufucms_config_file, 'wb');
		$configfilecontent = <<<EOT
<?php
if(!defined('THINK_PATH')) exit();
return \$array = array(
	'DB_TYPE'		=>	'mysql',// 数据库类型	
	'DB_HOST'		=>	'$data[db_host]',// 数据库服务器地址
	'DB_NAME'		=>	'$data[db_name]',// 数据库名称
	'DB_USER'		=>	'$data[db_username]',// 数据库用户名
	'DB_PWD'		=>	'$data[db_password]',// 数据库密码
	'DB_PORT'		=>	'3306',// 数据库端口
        'DB_PREFIX'		=>	'$data[db_prefix]',// 数据表前缀
        'DB_BACKUP'             =>'../Data/backup',
        'RBAC_ROLE_TABLE' =>'$data[db_prefix]role',
        'RBAC_USER_TABLE' =>'$data[db_prefix]user',
        'RBAC_ACCESS_TABLE' =>'$data[db_prefix]access',
        'RBAC_NODE_TABLE'   =>'$data[db_prefix]node',
        'URL_CASE_INSENSITIVE'=>true,
        'SITE_NAME' => '鱼福CMS企业网站系统',
        'SITE_TITLE' => '鱼福CMS企业网站系统',
        'SITE_KEYWORDS' => '鱼福网 鱼福CMS 企业网站建设 CMS系统',
        'SITE_DESCRIPTION' => '鱼福CMS企业网站系统，针对个人完全开源免费。',
        'URL_MODEL' => 0,
        'DEFAULT_THEME' => 'default',
        'WX_QRCODE' => '/2013/07/21/51eb610e47e59.jpg',
);
?>
EOT;
?>
<?php
            //改变文件权限
            chmod(YUFUCMS_ROOT.$yufucms_config_file, 0777);
            $result_1=fwrite($fp, trim($configfilecontent));
            @fclose($fp);
            
            $db_config=$_SESSION['config_file_content'];
            if(!$db_config['db_host'] && !$db_config['db_name']){
                    $msg .= '<p>'.$lang['configure_read_failed'].'</p>';
                    $quit = TRUE;
            }else{
                    mysql_connect($db_config['db_host'], $db_config['db_username'], $db_config['db_password']);
                    $sqlv = mysql_get_server_info();
                    if($sqlv < '4.1'){
                            $msg .= '<p>'.$lang['mysql_version_402'].'</p>';
                            $quit = TRUE;
                    }else{
                            //创建数据库
                            $db_charset=$db_config['db_charset'];
                            $db_charset = (strpos($db_charset, '-') === FALSE) ? $db_charset : str_replace('-', '', $db_charset);

                            mysql_query(" CREATE DATABASE IF NOT EXISTS `{$db_config['db_name']}` DEFAULT CHARACTER SET $db_charset ");
                            if(mysql_errno()){
                                    $errormsg = $lang['database_errno_'.mysql_errno()];
                                    $msg .= '<p>'.($errormsg ? $errormsg : $lang['database_errno']).'</p>';
                                    $quit = TRUE;
                            }else{
                                    mysql_select_db($db_config['db_name']);
                            }
                            //判断是否有用同样的数据库前缀安装过
                            $re	=	mysql_query("SELECT COUNT(1) FROM {$db_config['db_prefix']}system");
                            $link	=	@mysql_fetch_row($re);
                            if(intval($link[0]) > 0){
                                    $yufucms_rebuild=true;
                                    $msg .= $lang['yufucms_rebuild'];
                                    $alert = 'onclick="confirm(\''.$lang['yufucms_rebuild'].'\');window.location.href=\'index.php?step=6\'"';
                            }else{
                                    $alert = 'onclick="window.location.href=\'index.php?step=6\'"';
                            }
                    }
            }
            if($quit){
                    $allownext = 'disabled="disabled"';
                    exit($msg);
            }else{
                    if($yufucms_rebuild){}
            }

            $site_url  =   $_SESSION['site_url'];
            mysql_connect($db_config['db_host'], $db_config['db_username'], $db_config['db_password']);
            if(mysql_get_server_info() > '5.0'){
                mysql_query("SET sql_mode = ''");
            }
            $db_config['db_charset'] = (strpos($db_config['db_charset'], '-') === FALSE) ? $db_config['db_charset'] : str_replace('-', '',$db_config['db_charset']);
            mysql_query("SET character_set_connection={$db_config['db_charset']}, character_set_results={$db_config['db_charset']}, character_set_client=binary");
            mysql_select_db($db_config['db_name']);
            $tablenum = 0;
            $fp = fopen($database, 'rb');
            $sql = fread($fp, filesize($database));
            fclose($fp);
            $db_charset	=	$db_config['db_charset'];
            $db_prefix	=	$db_config['db_prefix'];
            $sql=preg_replace('/\/\*[\w\W]*?\*\//', '', $sql);
            $sql=preg_replace('/-- ----------------------------[\w\W]*?-- ----------------------------/', '', $sql);
            $sql = str_replace("\r", "\n", str_replace('`'.'yufu_', '`'.$db_prefix, str_replace('{siteurl}',$site_url,$sql)));
            $ret = array();
            $num = 0;
            //explode() 函数把字符串分割为数组。
            foreach(explode(";\n", trim($sql)) as $query){
                    $queries = explode("\n", trim($query));
                    $sq = "";
                    foreach($queries as $query){
                            $sq .= $query;
                    }
                    $ret[$num] = $sq;
                    $num ++;
            }
            //释放变量
            unset($sql);
            //清除缓存
            clear();
            include tpl("step5");
            break;
	default:
            include tpl("step2");
}

