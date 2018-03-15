<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>爱心扶贫乐园</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/hengwang-1.png" href="${pageContext.request.contextPath}/FrontPage/img/hengwang-1.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/amazeui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/style.css"/>
  <script src="${pageContext.request.contextPath}/FrontPage/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/FrontPage/js/amazeui.min.js"></script>
  </head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		 <img class=" logo" style="width:200px;height:80px;" src="${pageContext.request.contextPath}/FrontPage/img/logoko.png"></img>
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li><a href="index.jsp">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li class="hw-menu-active"><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>    
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
			<i class="am-icon-hand-paper-o toppic-title-i"></i>
			<span class="toppic-title-span">爱心扶贫乐园</span>
			
		</div>
		<div class="right toppic-progress">
			<span><a href="${pageContext.request.contextPath}/FrontPage/index.jsp" class="w-white">首页</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp" class="w-white">爱心扶贫乐园</a></span>
		</div>
	</div>
</div>

<!--
<div data-am-widget="tabs"class="am-tabs am-tabs-d2 ">

      <ul class="am-tabs-nav am-cf solutions-tabs-ul ">
         <li class="am-active solutions-tabs-ul-li7"><a href="[data-tab-panel-0]" ><i class=" am-icon-desktop"></i><span>扶贫成果展示</span></a></li>
          <li class="solutions-tabs-ul-li8"><a href="[data-tab-panel-1]"><i class=" am-icon-mobile-phone mobile-phone"></i><span>扶贫助学，结对助学</span></a></li>
          <li class="solutions-tabs-ul-li9"><a href="[data-tab-panel-2]" ><i class=" am-icon-desktop"></i><span>扶贫行动（活动）</span></a></li>
          
      </ul>
      
      <div class="am-tabs-bd solutions-tabs-content ">
          <div data-tab-panel-0 class="am-tab-panel am-active">
          	<ul class=" solutions-content-ul">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="solutions-inform.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/app1.png" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>优悦解决方案</h5>
            			<p>华天公路货运管理系统是华天软件为物流货运企业全力打造的一套物流网络信息化的实在营运解决方案，通过６年的不断积累，汲取数十家物流企业的实战经验，以客户为中心，以业务为纽带，为车辆调度，仓库管理，装车发货，分拣中心，卸货提货，运单跟踪，</p>
            		</div>
            		</a>
            	</li>
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="#">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/app2.png" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>优悦解决方案</h5>
            			<p>华天公路货运管理系统是华天软件为物流货运企业全力打造的一套物流网络信息化的实在营运解决方案，通过６年的不断积累，汲取数十家物流企业的实战经验，以客户为中心，以业务为纽带，为车辆调度，仓库管理，装车发货，分拣中心，卸货提货，运单跟踪，</p>
            		</div>
            		</a>
            	</li>
            	<div class="clear"></div>
            </ul>
      
      
      </div>
      </div>
</div>
-->


<div class=" am-container-1">
	<div class="service-center">
	    <ul class="service-ul">
	    	<li class="am-u-lg-12 am-u-md-12 am-u-sm-12">
	    		<div class="am-u-lg-8 am-u-md-8 am-u-sm-12 service-content">
	    			<h4 class="w-blue">扶贫成果展示</h4>
	    			<p>结对帮扶真情在，爱心助学暖人心。开展扶贫帮困爱心助学系列活动，为需要帮助的困难学生家庭送去温暖，而我们的爱心之路也不会因为活动的结束而终止，我们将会进一步深入困难学生的家庭生活，用我们的爱心给予他们前行的力量！</p>
                    <a href="${pageContext.request.contextPath}/FrontPage/fpcgzs.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
	    		</div>
	    		<div class="am-u-lg-4 am-u-md-4 am-u-sm-12 service-img">
	    		   <img src="${pageContext.request.contextPath}/FrontPage/img/android.png" />	
	    		</div>
	    	</li>
	    	<li class="am-u-lg-12 am-u-md-12 am-u-sm-12">
	    		<div class="am-u-lg-8 am-u-md-8 am-u-sm-12 service-content">
	    			<h4 class="w-blue">扶贫助学，结对助学</h4>
	    			<p>结对帮扶真情在，爱心助学暖人心。开展扶贫帮困爱心助学系列活动，为需要帮助的困难学生家庭送去温暖，而我们的爱心之路也不会因为活动的结束而终止，我们将会进一步深入困难学生的家庭生活，用我们的爱心给予他们前行的力量！</p>
                    <a href="service-center-inform2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
	    		</div>
	    		<div class="am-u-lg-4 am-u-md-4 am-u-sm-12 service-img">
	    		   <img src="${pageContext.request.contextPath}/FrontPage/img/pk2-1.jpg" />	
	    		</div>
	    	</li>
	    	<li class="am-u-lg-12 am-u-md-12 am-u-sm-12">
	    		<div class="am-u-lg-8 am-u-md-8 am-u-sm-12 service-content">
	    			<h4 class="w-blue">扶贫行动（活动）</h4>
	    			<p>生命不息，奋斗不止!只要相信，只要坚持，只要你真的是用生命在热爱，那一定是天赋使命使然，那就是一个人该坚持和努力的东西，无论梦想是什么，无论路有多曲折多遥远，只要是灵魂深处的热爱，就会一直坚持到走上属于自己的舞台!</p>
                    <a href="${pageContext.request.contextPath}/FrontPage/service-center-inform3.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
	    		</div>
	    		<div class="am-u-lg-4 am-u-md-4 am-u-sm-12 service-img">
	    		   <img src="${pageContext.request.contextPath}/FrontPage/img/ax.png" />
	    		</div>
	    	</li>
	    	
	    	
	    	
	    </ul>
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
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="solutions.jsp">贫困户绿色通道</a></li>
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="news.jsp">扶贫动态</a></li>
                    
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="service-center.jsp">爱心扶贫乐园</a></li>
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="about-us.jsp">关于我们</a></li> 
                    <div class="clear"></div>
                </ul>
            </div>
        </li>
        <div class="clear"></div>
    </ul>
   
</footer>


</body>
</html>