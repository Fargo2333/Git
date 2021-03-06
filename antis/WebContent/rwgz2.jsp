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
<title>制定扶贫计划</title>
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
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li></c:if>
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
			<li><a href="${pageContext.request.contextPath}/bftj/bfgl.action" style="color:#fff"><span></span> 结对管理</a></li>
			<li><a href="${pageContext.request.contextPath}/bftj/fpjh.action"><span></span> 扶贫计划</a></li>
			<li><a href="${pageContext.request.contextPath}/bftj/fpcs.action"><span></span> 扶贫措施</a></li>
			<li><a href="${pageContext.request.contextPath}/bftj/rwgz.action"><span></span> 任务跟踪</a></li>
		
			</ul>
			
	
	</div>
<form action="${pageContext.request.contextPath }/bftj/updaterwgz.action" method="post" >
<input type="hidden" name="id" value="${id}"/>
<br><br>
<table align="center"  class="zdtable">
<h3 align="center">扶贫人：${BftjList.txm}</h3><br>
<h2 align="center">现阶段完成目标确认</h2>
<tr>
	<td>计划帮扶户数</td>
	<td>${BftjList.tjhbfhs }</td>
	<td>实际帮扶户数</td>
	<td ><input type="text" name="tsjbfhs" value="${BftjList.tsjbfhs }"/></td>
<tr/>
<tr>
	<td>计划走访户数</td>
	<td >${BftjList.tjhzfhs }</td>
	<td>实际走访户数</td>
	<td><input type="text" name="tsjzfhs" value="${BftjList.tsjzfhs }"/></td>
</tr>
<tr>
	<td>计划开展培训次数</td>
	<td>${BftjList.tjhpxcs }</td>
	<td>实际开展培训次数</td>
	<td><input type="text" name="tsjpxcs" value="${BftjList.tsjpxcs }"/></td>
</tr>
<tr>
	<td>计划争取扶贫项目</td>
	<td>${BftjList.tjhfpxm }</td>
	<td>实际争取扶贫项目</td>
	<td><input type="text" name="tsjfpxm" value="${BftjList.tsjfpxm }"/></td>
</tr>
</table>
<br/>
<center><input type="submit" value="提交" id="xtbfbtnclass"/></center>
</form>
</body>
</html>