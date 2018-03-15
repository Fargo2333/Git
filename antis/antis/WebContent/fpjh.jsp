<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript">
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>校园精准扶贫管理系统</title>

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
.searchc{
width:30%
}


</style>
</head>
<body>
<form name="mbForm" action="${pageContext.request.contextPath}/mb/querymb.action" method="post">
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
			    <a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a>
				 <a class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				 <a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
				  
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<li role="presentation"  class="active"><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li>
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
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" >			
		
		<div class="row">
		
		
		
		
        
        
        
         
			<td>
			
			 <div class="row">
			 
			 <div class="col-xs-12">
			 <div class="panel panel-default">
			  <div class="panel-heading"> 扶贫计划</div>
				<table class="table table-hover">
					<tr align="center" >
						<td style="width:25%">帮扶人序号</td>
						<td style="width:25%">姓名</td>
						<td style="width:25%">职位</td>
						<td style="width:25%">操作</td>
					</tr>
					<c:forEach items="${BftjList}" var="bftj">
						<tr align="center" >
							<td style="width:25%">${bftj.tid}</td>
							<td style="width:25%">${bftj.txm }</td>
							<td style="width:25%">${bftj.tzw }</td>
							<td style="width:25%">
							&nbsp;&nbsp;
							    <a href="${pageContext.request.contextPath}/bftj/zdfpjh.action?id=${bftj.tid}">设计扶贫计划</a>
							</td>
						</tr>
					</c:forEach>
				</table>
					<center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/bftj/fpjh.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/bftj/fpjh.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/bftj/fpjh.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/fpjh.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/fpjh.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/bftj/fpjh.action?pageNow=${page.totalPageCount}">尾页</a>
	</center>
				</div>
				</div>
			</td>
		</tr>	
        </div>
        </div>
		</form>
</body>
</html>