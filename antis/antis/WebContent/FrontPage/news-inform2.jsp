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
			<span><a href="${pageContext.request.contextPath}/FrontPage/news.jsp" class="w-white">扶贫动态</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/FrontPage/news-inform.jsp" class="w-white">扶贫详情</a></span>
		</div>
	</div>
</div>

<div class="am-container-1 margin-t30">
	<div class="words-title ">
		<span>关怀深山独居老人</span>
		<div>2017-6-29</div>
	</div>
</div>
		
<div class="solution-inform">
	<div class=" solution-inform-content-all">
		<div class="solution-inform-content">
		    <p class="inform-content-p">随着老龄化的快速发展和农村剩余劳动力的转移，农村留守老人问题凸显。经济的不均衡发展，造成越来越多的年轻人背井离乡，大部分乡村只留下老人和孩子，有的打工者带走了孩子，却只能将老人留下。也有老人，一生未能成家或子女早逝，只能独居。他们居住在深山之中，因年迈多病无法去集市购买米盐，有的甚至死亡多日才被人发现。
你是否知道，在中国的深山里，还有这样一群人：。</p>
	      <div class="solution-inform-content-img">
	      	<img src="img/tu2"/>
	      	<div class="clear"></div>
	      </div>
	      <p class="solution-inform-content-words">71岁的李银狗是一位孤寡老人，家里没有电，过着日出而作日落而息的生活，一盏小小的煤油灯陪他度过了无数个漫漫长夜。"我这里在民国的时候就没电，已经习惯了。"老人说。
	</p>
	
	<p class="solution-inform-content-words">
74岁的贺养信每顿要吃三大碗面条，他说，只有吃饱了，才能活着。贺养信唯一的经济来源是扎扫帚卖钱，他要爬到海拔2000多米陡峭的秦岭山腰割箭竹，再背着重达百斤的箭竹步行回家，往返20多公里。这些扫帚卖给城里的环卫工人，每把18元。
三年前，贺养信的儿媳因为家里太穷离家出走，儿子因此精神失常而失踪。</br>
	</p>
	
	 <p class="solution-inform-content-words">83岁的焦昌培老人和45岁的儿子相依为命，儿子患病，没有成家。儿子每天在火塘边搭块木板就是床了，老人睡在一间狭小的土坯房里，墙上挂满蛇皮袋，需要猫着腰进出，加上长期弯腰务农，老人的背已经再也直不起来。父子俩从来没有看过电视，因为他的家至今没有通电。
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