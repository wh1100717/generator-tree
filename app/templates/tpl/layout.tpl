{% block css %}
<link href="http://g.tbcdn.cn/forest/grass/0.2.6/css/grass.css" rel="stylesheet">
<link href="http://g.tbcdn.cn/forest/grass/0.2.6/css/ae-theme.css" rel="stylesheet">
<link href="/css/<%= appname %>.css" rel="stylesheet">
{% endblock %}

{% block js %}
<script src="http://g.tbcdn.cn/forest/grass/0.2.6/js/grass.min.js"></script>
<script src="/js/seed.js"></script>
{% endblock %}

{% block header %}
<div class="common-header">
    <div class="container">
        <div class="row">
            <a href="/index.htm" class="pull-left common-logo-dos">Getter</a>
            <div class="pull-right common-logo-help">
                <a href="/help.htm" class="common-logo-help-flag">
                    <i class="fa fa-question-circle"></i>帮助
                </a>
            </div>
        </div>
    </div>
</div>
{% endblock %}

{% block sidebar %}
<div class="common-sidebar">
    <ul class="main-menus">
        <li>
            <img class="img-circle img-responsive" src="http://masterdata.alibaba-inc.com/api/photo/downPersonal.do?workNo=78833">
            卜一
        </li>
        <li id="sidebar-task">
            <h1><i class="fa fa-tasks"></i></h1>
            爬虫任务
            <ul class="sub-menus">
                <li><a href="/task.html">任务列表</a></li>
                <li><a href="/task.html?create_task=true">新建任务</a></li>
            </ul>
        </li>
        <li id="sidebar-map">
            <h1><i class="fa fa-sitemap"></i></h1>
            站内外映射
            <ul class="sub-menus">
                <li><a href="/catemap.html">类目映射</a></li>
                <li><a href="/brandmap.html">品牌映射</a></li>
            </ul>
        </li>
        <li id="sidebar-monitor">
            <h1><a href="/monitor.html"><i class="fa fa-binoculars"></i></a></h1>
            爬取监控
        </li>
        <li>
            <a href="https://login.alibaba-inc.com/ssoLogout.htm?BACK_URL=http://dos.alibaba-inc.com"><h1><i class="fa fa-power-off"></i></h1>退出登录</a>
        </li>
    </ul>
</div>
{% endblock %}

{% block content %}
{% endblock %}
