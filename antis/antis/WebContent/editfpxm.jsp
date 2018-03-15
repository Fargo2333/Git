<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/datepicker3.css" rel="stylesheet">
<link href="<%=basePath%>css/styles.css" rel="stylesheet">
<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/bootstrap-datepicker.js"></script>
<%-- <link href="<%=basePath%>css/indexbootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=basePath%>css/indexstyle.css" rel="stylesheet" type="text/css" media="all" /> --%>
<style>
#ataver{

 height:60px;
 width:60px;
 border-radius:50px;
 padding:5px;
 
}
.name{
 color:#ffffff;
}
.info{

 displayl:block;
 width:300px;
 margin:0 atuo;
 margin-left:8px;
 margin-top:40px;
}
.menu li a{
color:#fff;
margin-left:5px;
}
#forminfo{
 margin-top:20px;
}
.nav, .nav-pills li a{

color:#fff;
}

.row{
margin-top:10px;}


</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园精准扶贫管理系统</title>

<style type="text/css">
.error {
	color: red
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改扶贫项目</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
			    <a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a>
				 <a class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				 <a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
				  
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bftj.action">考核管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/mb/mbdy.action">信息管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/persons/personlist.action">系统管理</a></li></c:if>	<li role="presentation"><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">进入前台</a></li>			
				</ul>
			</div>
		</div>
	</nav>
	<div id="sidebar-collapse" class="col-sm-2 col-lg-2 sidebar" style="background:url(${pageContext.request.contextPath}/images/fpbg.jpg) no-repeat;">
	    <div class="info">
	   <img id="ataver" src="${pageContext.request.contextPath}/images/admin.jpg">
	   <span class="name">${sessionScope.username }</span>	  
	     </div>
	   <ul class="nav menu" style="margin-top:50px;">
			<li><a href="${pageContext.request.contextPath}/fpxm/xmsq.action" style="color:#fff"><span></span>项目申请</a></li>
			<li><a href="${pageContext.request.contextPath}/fpxm/xmgj.action"><span></span> 项目跟进</a></li>
			<li><a href="${pageContext.request.contextPath}/fpxm/xmwc.action"><span></span> 项目完成</a></li>
			</ul>
	</div>
<form action="${pageContext.request.contextPath }/fpxm/updatefpxm.action" method="post" >
<input type="hidden" name="id" value="${id}"/>
<br><br>
<table align="center"  class="zdtable" >
<h1 align="center" id="btys2">修改扶贫项目</h1><br>
<tr>
	<td>项目名称</td>
	<td><input type="text" name="xxmmc" value="${FpxmList.xxmmc }"/></td>
</tr>
<tr>
	<td>类别</td>
	<td><input type="text" name="xlb" value="${FpxmList.xlb }"/></td>
</tr>
<tr>
	<td>建设内容及规模</td>
	<td><input type="text" name="xjsnrjgm" value="${FpxmList.xjsnrjgm }"/></td>
</tr>
<tr>
	<td>责任单位</td>
	<td><input type="text" name="xzrdw" value="${FpxmList.xzrdw }"/></td>
</tr>
<tr>
	<td>投资总额（万）</td>
	<td><input type="text" name="xtzze" value="${FpxmList.xtzze }"/></td>
</tr>
<tr>
	<td>状态</td>
	<td><select name="xzt" class="form-control">
					<option>待审批</option>
					<option>进行中</option>
					<option>已完成</option>
					</select></td>
</tr>
</table>
<br>
<center><input type="submit" value="提交" style="width:250px;" id="xtbfbtnclass"/></center>
</form>
</body>
</html>