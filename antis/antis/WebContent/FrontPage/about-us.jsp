<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>关于我们</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/hengwang-1.png" href="${pageContext.request.contextPath}/FrontPage/img/hengwang-1.png">
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
      <li><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>
      <li class="hw-menu-active"><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li>
      <c:if test="${sessionScope.username != null}">
						<li><div
								style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;">${sessionScope.username }</div></li>
						<li><div
								style="margin-left: 2px; color: red; font-family: 微软雅黑; font-size: 14px;">
								<a
									href="${pageContext.request.contextPath}/persons/user_cancellation2.action">退出</a>
							</div></li>
					</c:if>
					<c:if test="${empty sessionScope.username}">
						<li><div
								style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;">
								<a href="${pageContext.request.contextPath}/FrontPage/login.jsp">登陆</a>
							</div></li>
						<li><div
								style="margin-left: 2px; color: red; font-family: 微软雅黑; font-size: 14px;">
								<a
									href="${pageContext.request.contextPath}/FrontPage/register.jsp">注册</a>
							</div></li>
					</c:if>
      <li><a style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;" href="${pageContext.request.contextPath}/zuozhan_map.jsp">进入后台</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="toppic">
	 <div class="am-container-1">
	 <div class="toppic-title left">
			<i class="am-icon-paper-plane toppic-title-i"></i>
			<span class="toppic-title-span">关于我们</span>
			
		</div>
		<div class="right toppic-progress">
			<span><a href="${pageContext.request.contextPath}/FrontPage/index.jsp" class="w-white">首页</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp" class="w-white">关于我们</a></span>
		</div>
	</div>
</div>

<div class=" am-container-1">
	<div class="part-title part-title-mar">
			<a href="#">
			<i class=" am-icon-paper-plane part-title-i"></i>
			<span class="part-title-span">关于点对点</span>
			
			</a>
		</div>
	<div class="company-intro">
	
  <p>&nbsp;&nbsp;中国过去几十年的发展速度惊人，改革
开放让一部分人先富裕了起来，于此同时在一些资源匮乏、交通不便的山区还是
存在非常多贫困人员。目前围绕扶贫工作的研究主要集中在扶贫的方式方法上，
分析扶贫工作的难点，以及精准扶贫的方式与方法，并根据自身的实践同时有些研究考虑使用信息技术，利用大数据来为为扶贫工作进行指导。助力精准扶贫，打造美丽乡村，让扶贫更精准、高效。</p>
  
	</div>
</div>
<div class="gray-li company-thought-all" >
	<div class=" am-container-1">
			<ul class="company-thought">
				<li >
				  <div class="thought-all">
				  	<i class="am-icon-circle-o-notch"></i>
				  	<span>扶贫理念</span>
				  	<div class="thought-all-none">
				  	    <h5>精准 高效</h5>
				    </div>
				  </div>
				  
				</li>
				<li >
				  <div class="thought-all">
				  	<i class="am-icon-hand-o-right"></i>
				  	<span>服务理念</span>
				  	<div class="thought-all-none">
				  	    <h5>实务 用心</h5>
				    </div>
				  </div>	
				</li>
				<li >
				  <div class="thought-all">
				  	<i class="am-icon-bar-chart"></i>
				  	<span>发展方向</span>
				  	<div class="thought-all-none">
				  	    <h5>精益求精</h5>
				    </div>
				  </div>	
				</li>
				<div class="clear"></div>
			</ul>
		</div>
</div>

	

<div class=" am-container-1">
	
	
</div>
<div class=" am-container-1">
	<div class="part-title part-title-mar">
			<a href="#">
			<i class=" am-icon-comments-o part-title-i"></i>
			<span class="part-title-span"></span>
			<p>Contact Us</p>
			</a>
		</div>
</div>
<div class="gray-li">
<div class=" am-container-1">
	<div class="contact-us">
		 <div class="am-u-lg-6 am-u-md-6 am-u-sm-12">
		 
		 </div>
		 <div class="am-u-lg-6 am-u-md-6 am-u-sm-12">
		 	 <ul class="contact-add">
		 	 	
		 	 </ul>	 	
		 </div>
		 <div class="clear"></div>
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
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<!--[if (gte IE 9)|!(IE)]><!-->

</html>