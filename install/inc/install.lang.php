<?php
if(!defined('YUFUCMS_INSTALL')) exit('Access Denied');
$lang = array(
	'install_is_lock' => '你的网站已经安装过YUFUCMS，需重新安装请手动删除网站目录下install/install.lock文件', 
	'install_db_error' => '数据库文件无法读取，请检查install/inc/yufucms_v3_utf8.sql是否存在。',
	'install_title' => 'YUFUCMS 1.0 正式版 安装向导',
	'welcome_to_install' => '欢迎安装',
	'install_wizard' => '安装向导',
	'install_error' => '安装出错',
	'install_tips' => '注意事项',
	'install_tips_content' => '这个安装程序仅仅用在你首次安装YUFUCMS。如果你已经在使用 YUFUCMS 或者要更新到一个新版本，请不要运行这个安装程序。',
	'install_notes' => '安装须知',
	'install_notes_content' => '<p>一、运行环境需求：PHP(5.2.0+)+MYSQL(4.1+)</p><p>二、安装步骤：<br />1、使用ftp工具以二进制模式，将该软件包里的 YUFUCMS 目录下的文件上传到您的空间，假设上传后目录网站根目录。<br />2、如果您使用的是Linux 或 Freebsd 服务器，先确认以下目录或文件属性为 (777) 可写模式。<br />目录: install<br />文件: config.php<br />3、运行 http://www.yufu5.com/install/index.php 安装程序，填入安装相关信息与资料，完成安装！<br />4、运行 http://www.yufu5.com/index.php 开始体验YUFUCMS2.0Beta版！<br />5、如安装完成后访问异常，请手动删除admin/Runtime和Apps/Runtime目录下所有文件。</p>',
	'install_license' => '安装许可协议',
	'install_license_content' =>'
            YUFUCMS(鱼福CMS)是由 鱼福网 独立开发的CMS程序，基于PHP脚本和MySQL数据库，采用ThinkPHP框架。本程序源码开放的，任何人都可以从互联网上免费下载，并可以在不违反本协议规定的前提下进行使用而无需缴纳程序使用费。

        官方网址： www.yufu5.com www.yufu5.net

        为了使你正确并合法的使用本软件，请你在使用前务必阅读清楚下面的协议条款：

        一、本授权协议适用且仅适用于YUFUCMS(鱼福CMS)任何版本，YUFUCMS(鱼福CMS)官方拥有对本授权协议的最终解释权和修改权。

        二、协议许可的权利和限制
        1、您可以在完全遵守本最终用户授权协议的基础上，将本软件应用于非商业用途，而不必支付软件版权授权费用，但我们也不承诺对个人用户提供任何形式的技术支持。
        2、您可以在协议规定的约束和限制范围内修改YUFUCMS(鱼福CMS)源代码或界面风格以适应您的网站要求，但不可以公开对外发布或者销售。
        3、您拥有使用本软件构建的网站全部内容所有权，并独立承担与这些内容的相关法律义务。
        4、未经商业授权，不得将本软件用于商业用途(企业网站或以盈利为目的经营性网站)，否则我们将保留追究的权力。

        三、免责声明
        1、本软件及所附带的文件是作为不提供任何明确的或隐含的赔偿或担保的形式提供的。
        2、用户出于自愿而使用本软件，您必须了解使用本软件的风险，任何情况下，程序的质量风险和性能风险完全由您承担。有可能证实该程序存在漏洞，您需要估算与承担所有必需服务，恢复，修正，甚至崩溃所产生的代价！在尚未购买产品技术服务之前，我们不承诺对免费用户提供任何形式的技术支持、使用担保，也不承担任何因使用本软件而产生问题的相关责任。
        3、请务必仔细阅读本授权协议，在您同意授权协议的全部条件后，即可继续YUFUCMS(鱼福CMS)的安装。即：您一旦开始安装YUFUCMS(鱼福CMS)，即被视为完全同意本授权协议的全部内容，如果出现纠纷，我们将根据相关法律和协议条款追究责任,同时鱼福CMS官方保留以上条款的最终解释权！
        
        版权所有 (C) 2012，YUFUCMS 保留所有权利。',
	'install_agree' => '我已看过并同意安装许可协议',
	'install_disagree_license' => '您必须在同意授权协议的全部条件后，方可继续YUFUCMS的安装',
	'install_env' => '运行环境检测',
	'php_os' => '操作系统',
	'php_version' => 'PHP版本',
	'file_upload' => '附件上传',
	'php_extention' => 'PHP扩展',
	'php_extention_unload_gd' => '您的服务器没有安装这个PHP扩展：gd',
	'php_extention_unload_mbstring' => '您的服务器没有安装这个PHP扩展：mbstring',
	'php_extention_unload_mysql' => '您的服务器没有安装这个PHP扩展：mysql',
	'php_extention_unload_curl' => '您的服务器没有安装这个PHP扩展：curl',
	'mysql' => 'MySQL数据库',
	'mysql_unsupport' => '您的服务器不支持MYSQL数据库，无法安装YUFUCMS。',
	'dirmod' => '目录和文件属性',
	'install_setting' => '数据库设置',
	'install_mysql_host' => '数据库服务器',
	'install_mysql_host_intro' => '数据库服务器地址，一般为 localhost，或为IP地址',
	'install_mysql_username' => '数据库帐号',
	'install_mysql_password' => '数据库密码',
	'install_mysql_name' => '数据库名称',
        'install_mysql_name_intro' => '同名数据库将被覆盖，请做好备份',
	'install_mysql_prefix' => '数据表前缀',
	'install_mysql_prefix_intro' => '同一数据库安装多YUFUCMS程序时可改变默认值',
	'founder' => '管理员帐号设置',
	'install_founder_name' => '超级管理员帐号',
	'install_founder_password' => '管理员密码',
	'install_founder_rpassword' => '确认密码',
	
	'install_mysql_host_empty' => '数据库服务器不能为空',
	'install_mysql_username_empty' => '数据库帐号不能为空',
	'install_mysql_name_empty' => '数据库名称不能为空',
	'install_founder_name_empty' => '创建管理员帐号不能为空',
	'install_founder_password_length' => '管理员密码必须大于6位',
	'install_founder_rpassword_error' => '两次输入管理员密码不同',
	
	'mysql_invalid_configure' => '数据库配置信息不完整',
	'mysql_invalid_prefix' => '您指定的数据表前缀包含点字符(".")，请返回修改。',
	'forbidden_character' => '用户名包含非法字符',
	'founder_invalid_email' => '电子邮件格式不正确',
	'founder_invalid_configure' => '创建者信息不完整',
	'founder_invalid_password' => '密码长度必须大于6位',
	'founder_invalid_rpassword' => '两次输入的密码不一致',
	'config_log_success' => '数据库配置信息写入完成',
	'config_read_failed' => '数据库配置文件写入错误，请检查config.ini.php文件是否存在或属性是否为777',
	'yufucms_rebuild' => '数据库中已经安装过 YUFUCMS，继续安装会清空原有数据！',
	'mysql_import_data' => '点击下一步开始导入数据',
	'import_processing' => '导入数据库',
	'import_processing_error' => '导入数据库失败',
	'create_table' => '创建表',
	'create_founder' => '创建超级管理员帐号',
	'create_founder_success' => '超级管理员帐号创建成功',
	'create_founder_error' => '超级管理员帐号创建失败',
	'install_success' => '安装成功',
	'install_failure' => '安装失败',
	'reinstall' => '<a href="index.php">请点击这里重新安装</a>',
	'install_success_intro' => '安装程序执行完毕，请尽快删除整个 install 目录，以免被他人恶意利用。如安装成功后访问异常，请手动删除Admin/Runtime和Apps/Runtime目录下所有文件。如要重新安装，请删除install目录中的 install.lock 文件！',
	'install_dbFile_error' => '数据库文件无法读取，请检查install/inc/yufucms.sql是否存在。',
	
	'install_step_license' => '1.许可协议',
	'install_step_os' => '2.环境检测',
	'install_step_option' => '3.安装配置',
	'install_step_finish' => '4.安装完成',
	
	'install_btn_start' => '开始安装',
	'install_btn_prev' => '上一步',
	'install_btn_next' => '下一步',
	'go_home' => '前往前台',
	'go_admin' => '前往后台',
	'support' => '支持',
	'unsupport' => '不支持',
        'mustopen' => '必须开启',
	'suggestopen' => '建议开启',
);
?>