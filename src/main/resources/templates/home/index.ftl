

<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>我的主页 - Mtons</title>
    <meta name="keywords" content="mtons,mtons,博客,社区,摄影,旅游,艺术,娱乐"/>
    <meta name="description" content="Mtons, 轻松分享你的兴趣. 便捷的文字、图片发布,扁平化的响应式设计,美观、大气,是您记录生活的最佳选择"/>
    <meta property="mtons:mblog" content="2.2.1">

    <script src="/assets/vendors/pace/pace.min.js"></script>
    <link href="/assets/vendors/pace/themes/pace-theme-minimal.css" rel="stylesheet" />

    <link rel='stylesheet' media='all' href='/assets/vendors/font-awesome/css/font-awesome.min.css'/>
    <link rel="stylesheet" media='all' href="/assets/vendors/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" media='all' href="/assets/vendors/animate/animate.min.css">
    <link rel='stylesheet' media='all' href='/assets/css/style.css'/>
    <link rel='stylesheet' media='all' href='/assets/css/layout.css'/>
    <link rel='stylesheet' media='all' href='/assets/css/plugins.css'/>
    <link rel='stylesheet' media='all' href='/assets/css/addons.css'/>

    <link rel='stylesheet' media='all' href="/assets/vendors/baguette/baguetteBox.min.css"/>

    <script type="text/javascript" src="/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="/assets/js/utils.js"></script>

    <script type="text/javascript" src="/assets/vendors/layer/layer.js"></script>

    <script type="text/javascript" src="/assets/js/sea.js"></script>
    <script type="text/javascript" src="/assets/js/sea.config.js"></script>

    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" href="http://mtons.com/dist/images/logo.png"/>
    <link rel="shortcut icon" href="http://mtons.com/dist/images/logo.png"/>

    <script type="text/javascript">
        var _base_path = '$!{base}';

        window.app = {
            base: '',
            LOGIN_TOKEN: '$!{profile.id}'
        };

        window.UEDITOR_HOME_URL = '/assets/vendors/ueditor/';
    </script>
</head>
<body>

<!-- Login dialog BEGIN -->
<div id="loginalert" style="display: none; top: 0px;" class="fade in">
    <div class="pd20 loginpd">
        <h3><i class="closealert fr" data-dismiss="modal" aria-label="Close"></i><div class="clear"></div></h3>
        <div class="loginwrap">
            <div class="loginh">
                <div class="fl">会员登录</div>
                <div class="fr">还没有账号<a id="sigup_now" href="/reg">立即注册</a></div>
            </div>
            <h3><span class="login_warning" id="login_warning" style="display: none;">用户名或密码错误</span><div class="clear"></div></h3>
            <form action="" method="post" id="login_form">
                <div class="logininput">
                    <input type="text" id="alt_un" name="username" class="loginusername" value="" placeholder="用户名">
                    <input type="password" id="alt_pw" name="password" class="loginuserpasswordp" placeholder="密码">
                </div>
                <div class="loginbtn">
                    <div class="loginsubmit fl"><input type="button" value="登录" id="alt_login" class="btn"></div>
                    <!--
                    <div class="fr" style="margin:26px 0 0 0;"><a href="##">忘记密码?</a></div>
                    -->
                    <div class="clear"></div>
                </div>
            </form>
        </div>
    </div>
    <div class="thirdlogin">
        <div class="pd50">
            <h4>用第三方帐号直接登录</h4>
            <ul>
                <li id="sinal"><a href="/oauth/callback/call_weibo">微博帐号注册</a></li>
                <li id="qql" style="margin-right: 0px;"><a href="/oauth/callback/call_qq">QQ帐号注册</a></li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- Login dialog END -->

<!-- Header BEGIN -->
<#include "inc/header.ftl">
<!--.site-main -->
<div class="wrap" id="wrap">
    <div class="container">
        <div class="row">
            <div class="main clearfix">
                <!-- left -->
                <div class="col-xs-12 col-md-3 side-left">

                    <ul class="list-group about-user">
                        <li class="list-group-item user-card" >
                            <div class="ava">
                                <a href="/ta/1">
                                    <img class="img-circle" src="/assets/images/ava/default.png"/>
                                </a>
                            </div>
                            <div class="user-info">
                                <div class="nk mb10">小豆丁</div>
                                <div class="mb6">
                                    <a class="btn btn-success btn-xs" href="/account/profile"><i class="fa fa-pencil"></i> 修改账户</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <nav class="navbar navbar-default shadow-box">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#home-navbar" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <span class="navbar-brand">导航</span>
                            </div>
                        </div>
                        <div id="home-navbar" class="collapse navbar-collapse">
                            <ul class="list-group user-nav first">
                                <li class="list-group-item">
                                    <a href="/home/index.html"><i class="fa fa-feed"></i> 动态</a>
                                </li>
                                <li class="list-group-item">
                                    <a href="/home/posts.html"><i class="fa fa-file-text-o"></i> 我的文章</a>
                                </li>
                                <li class="list-group-item">
                                    <a href="/home/comments.html"><i class="fa fa-comment-o"></i> 我的评论</a>
                                </li>
                            </ul>

                            <ul class="list-group user-nav">
                                <li class="list-group-item">
                                    <a href="/home/favors.html"><i class="fa fa-heart-o"></i> 我的喜欢</a>
                                </li>
                                <li class="list-group-item">
                                    <a href="/home/follows.html"><i class="fa fa-eye"></i> 我的关注</a>
                                </li>
                                <li class="list-group-item">
                                    <a href="/home/fans.html"><i class="fa fa-users"></i> 我的粉丝</a>
                                </li>
                            </ul>

                            <ul class="list-group user-nav">
                                <li class="list-group-item">
                                    <a href="/home/notifies">
                                        <i class="fa fa-bell-o"></i> 通知 <span class="label label-danger">0</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>

                <div class="col-xs-12 col-md-9 side-right">

                    <div class="shadow-box">
                        <div class="filter">
                            <ul class="">
                                <li><a class="active" href="$base/home">动态</a></li>
                            </ul>
                        </div>
                        <!-- tab panes -->
                        <div class="stream-list p-stream">

                            <div class="stream-item">
                                <i class="fa fa-info-circle fa-lg"></i> 没有动态,赶紧去关注几个屌丝吧!
                            </div>
                        </div>
                    </div>
                    <div class="text-center clr">

                        <ul class="pagination">

                            <li class="active"><a href="javascript:void(0);"><span>1</span></a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="footer-nav">
        <div class="container">
            <ul class="about-ul list-inline clearfix">
                <li><a href="/about">关于我们</a></li>
                <li><a href="/joinus">联系我们</a></li>
                <li><a href="/faqs">常见问题</a></li>
                <li>
                    <script>
                        var _hmt = _hmt || [];
                        (function() {
                            var hm = document.createElement("script");
                            hm.src = "//hm.baidu.com/hm.js?a029e6c6dddf427f4cbfb2b00d7d5311";
                            var s = document.getElementsByTagName("script")[0];
                            s.parentNode.insertBefore(hm, s);
                        })();
                    </script>
                </li>
            </ul>
        </div>
    </div>
    <div class="container mode-link">
        <h3 class="t-h3">友情链接</h3>
        <ul class="list-inline">
            <li><a href="http://www.mtons.com" target="_blank" title="Mtons社区">Mtons社区</a></li>
        </ul>
    </div>
    <div class="container copy-right">
		<span> <a
                    href="http://www.miitbeian.gov.cn/" target="_blank"></a>
		</span>
        <span class="pull-right">Powered By <a href="http://mtons.com/?copyright" target="_blank">Mtons</a></span>
    </div>

</footer>

<a href="#" class="site-scroll-top"></a>

<script type="text/javascript">
    seajs.use('main', function (main) {
        main.init();
    });
</script></body>
</html>
