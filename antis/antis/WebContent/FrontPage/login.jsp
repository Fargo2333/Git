<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>扶贫前端登陆</title>
<script type="text/javascript">
function login(){
	document.loginform.action="${pageContext.request.contextPath}/persons/frontlogin.action";
	document.loginform.submit();
}
function register(){
	document.loginform.action="${pageContext.request.contextPath}/persons/tzregister.action";
	document.loginform.submit();
}
</script>
<link href="${pageContext.request.contextPath}/FrontPage/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">精准扶贫系统用户登陆</h1>
			<form name="loginform" class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form"  method="post">				
		        <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
		            	<input type="text" name="username" class="form-control" id="username" placeholder="用户名">
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	<input type="password" class="form-control" id="password" name="userpassword" placeholder="密码">
		            </div>
		          </div>
		        </div>
		         <div class="col-md-6" style="margin-bottom:20px;">
			          	<label class="radio-inline">
		          			<input type="radio" name="userschedule" id="optionsRadios1" value="普通用户"> 普通用户
		          		</label>
		          		<label class="radio-inline">
		          			<input type="radio" name="userschedule" id="optionsRadios2" value="管理员"> 管理员
		          		</label>
		          		<p style="margin-top:10px;color: red">${sessionScope.faillogin }</p>
			          </div>    
		        <div class="form-group">
		          <div class="col-md-12">
	             	<div class="checkbox control-wrapper">
	                	<label>
	                  		<input type="checkbox">记住密码
                		</label>
	              	</div>
		          </div>
		        </div>
		        <div class="form-group">
		          
		          <div class="col-md-6">
		          	<div class="control-wrapper">
		          		<input type="button" value="登陆" class="btn btn-info" onclick="login()">
		          		<input type="button" value="注册" class="btn btn-info"  onclick="register()">
		          	</div>
		          </div>
		        </div>
		        <hr>
		       
		        </div>
		      </form>
		</div>
	</div>
</body>
</html>