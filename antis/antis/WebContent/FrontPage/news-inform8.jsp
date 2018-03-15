<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>扶贫详情</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/HENGWANG.png" href="${pageContext.request.contextPath}/FrontPage/img/HENGWANG.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/amazeui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/style.css"/>
</head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  <img class=" logo" style="width:200px;height:80px;" src="img/logoko.png"></img>
		   
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li><li><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">首页</a></li>
     <li><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
      <li class="hw-menu-active"><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li><c:if test="${sessionScope.username != null}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;">${sessionScope.username }</div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/persons/user_cancellation2.action">退出</a></div></li></c:if><c:if test="${empty sessionScope.username}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/login.jsp">登陆</a></div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/register.jsp">注册</a></div></li>  </c:if></li>
     <li><a style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;" href="${pageContext.request.contextPath}/zuozhan_map.jsp">进入后台</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="toppic">
	 <div class="am-container-1">
	 <div class="toppic-title left">
			<i class="am-icon-newspaper-o toppic-title-i"></i>
			<span class="toppic-title-span">扶贫详情</span>
			
		</div>
		<div class="right toppic-progress">
			<span><a href="${pageContext.request.contextPath}/FrontPage/news2.jsp" class="w-white">扶贫动态</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/FrontPage/news-inform.jsp" class="w-white">扶贫详情</a></span>
		</div>
	</div>
</div>

<div class="am-container-1 margin-t30">
	<div class="words-title ">
		<span>紧急救助</span>
		<div>2017-6-29</div>
	</div>
</div>
		
<div class="solution-inform">
	<div class=" solution-inform-content-all">
		<div class="solution-inform-content">
		    <p class="inform-content-p">培国，42岁，山东省巨野县人，病情确诊为非霍奇金淋巴瘤。目前在中国人民解放军第一总医院进行治疗，919大病救助工程于2017年8月31日拨付20000元至医院账户，用于他后期的治疗</p>
	      <div class="solution-inform-content-img">
	      	<img src="img/tu8"/>
	      	<div class="clear"></div>
	      </div>
	      <p class="solution-inform-content-words">919大病救助工程运行半年以来，我们接到了1000余例大病患者的求助电话，有一天办公室突然到访一位年轻人，带着一沓病例，还没等坐稳，他就急迫的说救救我的妻子吧，他是一名普通的外卖小哥，每天窜梭于大街小巷，他和妻子新婚不久，妻子已经怀孕6个月，就在他们沉浸在自己马上就要做父母了的喜悦中，不幸的消息给了他们全家沉痛的打击，急性白血病的字样赫然出现在眼前，全家人都不敢相信，如果不治疗可能就只有一个月的时间，如果治疗就必须将胎儿引产，开始做化疗及骨髓移植，六七十万的医药费对于他们来说就是天文数字，年轻的妻子不想拖累家人一度想要放弃治疗，家人下定决心就是砸铁卖锅也要治好她的病，妻子还没来得及看到自己的孩子就匆匆别过，加上病魔的折磨，她每天以泪洗面，一头美丽的秀发也大把大把的掉光了。
	</p>
	
	<p class="solution-inform-content-words">
当我们不愿意做饭、不愿意吃食堂或外面刮风下雨而叫外卖时，是外卖小哥风雨无阻的将热乎的饭菜送到我们面前，而眼前的这位外卖小哥手里拿着的却是病例，对你说的不是你的外卖到了，而是救救我的妻子吧！</br>
	</p>
	
	 <p class="solution-inform-content-words">全国肿瘤登记中心发布2015年年报，年报显示目前我国每年新发癌症病例约为312万例，平均每天确诊8550人，每分钟就有6人被诊断为癌症，平均10秒钟就有一人确诊。每年因癌症死亡病例达270万例。
	</p>
	
	<p class="solution-inform-content-words">
从国务院扶贫办建档立卡情况看，因病致贫是最主要的致贫原因，涉及的贫困人口比重最高。2015年底，全国建档立卡贫困户中，因病致贫的占到44.1%，患大病重病的240万人，患长期慢性病的960万人。
这两组数据的确应了民间流传已久的顺口溜"小病拖，大病挨，重病才往医院抬"，"救护车一响，一头猪白养"，"辛辛苦苦几十年，一夜回到解放前"。
3岁男童患白血病，父亲甘当人肉沙包筹款；母亲双肾坏死，16岁女孩弃学走上割肾救母之路；10岁男孩身患重病无钱医治，家人街边摆摊求助……这样的新闻频频见诸报端，刺痛了人们的心。</br>
	</p>
	 
  
  
		</div>
	</div>
</div>
  
   
		


<footer class="footer ">
	
<ul>
        
        <li class="am-u-lg-4 am-u-md-4 am-u-sm-12 part-5-li2">
            <div class="part-5-title"></div>
            <div class="part-5-words2">
               
                
                
                
                
            </div>
        </li>
        <li class="am-u-lg-4 am-u-md-4 am-u-sm-12 ">
            <div class="part-5-title">相关链接</div>
            <div class="part-5-words2">
                <ul class="part-5-words2-ul">
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态</a></li>
                    
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园</a></li>
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
        </li>
        <div class="clear"></div>
    </ul>
   
</footer>


</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->
<script src="js/amazeui.min.js"></script>

</html>