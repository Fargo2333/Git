<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

</head>
<body>
<form name="fpxmForm" method="post">
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header" >
			    <a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a>
				 <a class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				 <a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	 
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation" ><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li></c:if></li>
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
		
		
		
		<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" >	
		<div class="right-bottom">
		
				
				
			</ol>
		<div class="form-inline pull-left">
		
		
			
            <br>
            <div class="panel panel-default" style="margin-top:30px;">
	<table class="table table-hover" style="width:1176px;">
		<tr>
			<th>选择</th>
			<th>项目名称</th>
			<th>类别</th>
			<th>建设内容及规模</th>
			<th>责任单位</th>
			<th>投资总额</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${FpxmList}" var="fpxm">
		<tr>
			<td><input style="margin-left:15px;" type="checkbox" name="fpxm_xid" value="${fpxm.xid}"/></td>
			<td>${fpxm.xxmmc}</td>
			<td>${fpxm.xlb }</td>
			<td>${fpxm.xjsnrjgm }</td>
			<td>${fpxm.xzrdw  }</td>
			<td>${fpxm.xtzze }</td>
			<td><a href="${pageContext.request.contextPath}/fpxm/xmtg.action?id=${fpxm.xid}">通过</a>
							    <a href="${pageContext.request.contextPath}/fpxm/xmbtg.action?id=${fpxm.xid}">不通过</a>
							</td>
		</tr>
		</c:forEach>
	</table>
	<center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/fpxm/xmgj.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/fpxm/xmgj.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/fpxm/xmgj.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/fpxm/xmgj.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/fpxm/xmgj.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/fpxm/xmgj.action?pageNow=${page.totalPageCount}">尾页</a>
	</center>
<!-- 	<nav aria-label="...">
  <ul class="pagination" style="display: table; margin:0 auto; padding-bottom:25px; margin-top:25px;">
    <li><a href="#" >&laquo;</a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">1 <span class="sr-only">(current)</span></a></li>
	 <li ><a href="#">2 <span class="sr-only">(current)</span></a></li>
	  <li ><a href="#">3 <span class="sr-only">(current)</span></a></li> 
   <li><a href="#" >&raquo;</a></li>
  </ul>
</nav> -->
		</div>
		</div>
		  </div>
		 </div>	

		</form>
</body>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- jquery 数据校验 -->
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
</html>