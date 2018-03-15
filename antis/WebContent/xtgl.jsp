<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
#ataver {
	height: 60px;
	width: 60px;
	border-radius: 50px;
	padding: 5px;
}

.name {
	color: #ffffff;
}

.info {
	displayl: block;
	width: 300px;
	margin: 0 atuo;
	margin-left: 8px;
	margin-top: 40px;
}

.menu li a {
	color: #fff;
	margin-left: 5px;
}

#forminfo {
	margin-top: 20px;
}

.nav, .nav-pills li a {
	color: #fff;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>校园精准扶贫管理系统</title>
</head>
<body>
<form name="xtbfform" method="post">
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
		id="navnewclass">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a> <a
				class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				<a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
			
			<ul class="nav nav-pills"
				style="display: table; margin: 0 auto; margin-bottom: 10px;">
			<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li></c:if>
					<li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bftj.action">考核管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/mb/mbdy.action">信息管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"  class="active"><a href="${pageContext.request.contextPath}/persons/personlist.action">系统管理</a></li></c:if>		
					<li role="presentation"><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">进入前台</a></li>	
			</ul>

		</div>
	</div>
	</nav>
	<div class="col-xs-12 main" >
	<div class="row" style="margin-top:10px;">
		<div class="col-xs-3">
		<input type="button" value="添加用户" onclick="addperson()" id="xtbfbtnclass"/>
		<input type="button" value="数据备份" onclick="databackup()" id="xtbfbtnclass2"/>
		<input type="button" value="数据恢复" onclick="datarestore()" id="xtbfbtnclass3"/>
		<p style="color:red;">${sessionScope.xtgl}</p>
		</div>
	</div>			
		<div class="row" style="margin-top:4px;">
		<div class="xmright">
		 <div class="row">
			 <div class=" col-xs-12 ">
			 <div class="panel panel-default">
			  <div class="panel-heading">用户列表</div>
				<table class="table table-hover">
					<tr align="center" id="fptableheight">
						<td>用户名</td>
						<td>密码</td>
						<td>邮箱</td>
						<td>用户权限</td>
						<c:if test="${sessionScope.userschedule == '管理员'}"><td>操作</td></c:if>
					</tr>
					<c:forEach items="${PersonList}" var="person">
						<tr align="center" id="fptableheight">
							<td>${person.username}</td>
							<td>${person.userpassword}</td>
							<td>${person.email}</td>
							<td>${person.userschedule}</td>
							<c:if test="${sessionScope.userschedule == '管理员'}"><td><a href="${pageContext.request.contextPath}/persons/editperson.action?id=${person.userid}"><img src="${pageContext.request.contextPath}/images/edit.png" ></a>
							    <a onclick="deletebtn()" href="${pageContext.request.contextPath}/persons/deleteperson.action?id=${person.userid}"><img src="${pageContext.request.contextPath}/images/delete.png"></a></td></c:if>
						</tr>
					</c:forEach>
				</table>
						<center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/persons/personlist.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/persons/personlist.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/persons/personlist.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/persons/personlist.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/persons/personlist.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/persons/personlist.action?pageNow=${page.totalPageCount}">尾页</a>
	</center>
				</div>
				</div>
				</div>
		</div>
	</div>
	</div>
	</form>
</body>
<script type="text/javascript">
function deletebtn(){
	alert("删除成功！");
}
function addperson(){
	window.location.href="${pageContext.request.contextPath}/addperson.jsp";
}
function databackup(){
	document.xtbfform.action="${pageContext.request.contextPath}/persons/backup.action";
	document.xtbfform.submit();
}
function datarestore(){
	document.xtbfform.action="${pageContext.request.contextPath}/persons/restore.action";
	document.xtbfform.submit();
}
</script>
</html>