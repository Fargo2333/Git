<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帮扶人申请</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/HENGWANG.png" href="${pageContext.request.contextPath}/FrontPage/img/HENGWANG.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/amazeui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/style.css"/>
  <link href="${pageContext.request.contextPath}/FrontPage/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/templatemo_style.css" rel="stylesheet" type="text/css">
  
</head>
<script type="text/javascript">
function bfsq(){
	alert("申请成功！");
	document.bfsqform.action="${pageContext.request.contextPath}/bftj/frontinsertbfzrr.action";
	document.bfsqform.submit();
}
</script>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/FrontPage/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/FrontPage/js/amazeui.min.js"></script>
<body class="templatemo-bg-image-2">
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  <img class=" logo" style="padding-bottom:60px;width:200px;height:130px;" src="${pageContext.request.contextPath}/FrontPage/img/logoko.png"></img>
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <%-- <li>你好！${sessionScope.userschedule },${sessionScope.username }</li> --%>
      <li class="hw-menu-active"><a href="index.jsp">首页</a></li>
      <li ><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
	   <li><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li><c:if test="${sessionScope.username != null}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;">${sessionScope.username }</div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/persons/user_cancellation2.action">退出</a></div></li></c:if><c:if test="${empty sessionScope.username}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/login.jsp">登陆</a></div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/register.jsp">注册</a></div></li>  </c:if></li>  
     <li><a style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;" href="${pageContext.request.contextPath}/zuozhan_map.jsp">进入后台</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="am-container-1">
	<div class="container" style="margin-top:10%">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-contact-form-1" role="form" name="bfsqform" method="post">
				<div class="form-group">
					<div class="col-md-12">
						<h1 class="margin-bottom-15">帮扶责任人申请</h1>
						<br>
					</div>
				</div>				
		        <div class="form-group">
		          <div class="col-md-12">		          	
		            <label for="name" class="control-label">姓名</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-user"></i>
		            	<input type="text" class="form-control" id="name" name="txm">
		            </div>		            		            		            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="email" class="control-label">单位</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-envelope-o"></i>
		            	<input type="text" class="form-control" id="email" name="tdw">
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="website" class="control-label">职位</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-globe"></i>
		            	<input type="text" class="form-control" id="website" name="tzw">
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="subject" class="control-label">联系电话</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-info-circle"></i>
		            	<input type="text" class="form-control" id="subject" name="tlxdh">
		            </div>
		          </div>
		        </div>	
		        
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="subject" class="control-label">年经济收入(万)</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-info-circle"></i>
		            	<input type="text" class="form-control" id="subject" name="tgold">
		            </div>
		          </div>
		        </div>		 
		        	 
		        <div class="form-group">
		          <div class="col-md-12">
		            <input type="button" value="申请" style="width:30%;" class="btn btn-success pull-right" onclick="bfsq()">
		          </div>
		        </div>		    	
		      </form>		      
		</div>
	</div>
	</div>
</body>
</html>