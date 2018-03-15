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
<script type="text/javascript">
function querypkhlb(){
	document.bftjForm.action="${pageContext.request.contextPath}/bftj/querypkhlb.action";
	document.bftjForm.submit();
}
function jdgl(){
	var checkbox=document.getElementById("checkbox1");
		if(document.getElementById("select1").value !="--请选择帮扶人--" && checkbox.value !=null ){
	    alert("结对成功");
	    document.bftjForm.action="${pageContext.request.contextPath}/bftj/jdgl.action";
		document.bftjForm.submit();
		}
	else{
		alert("结对失败");
	}
}

function chk(obj)  {  
     var boxArray = document.getElementsByName('pkh_pid');  
     for(var i=0;i<=boxArray.length-1;i++){  
          if(boxArray[i]==obj && obj.checked){  
             boxArray[i].checked = true;  
          }else{  
             boxArray[i].checked = false;  
          }  
     }      
}   
function chk2(obj)  {  
    var boxArray = document.getElementsByName('bftj_tid');  
    for(var i=0;i<=boxArray.length-1;i++){  
         if(boxArray[i]==obj && obj.checked){  
            boxArray[i].checked = true;  
         }else{  
            boxArray[i].checked = false;  
         }  
    }      
}  
</script>
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

.row {
	margin-top: 10px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>校园精准扶贫管理系统</title>
</head>
<body>
	<form name="bftjForm" method="post">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
			id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a> <a
					class="navbar-brand glyphicon glyphicon-off pull-right"
					href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
					<a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
				
				<ul class="nav nav-pills"
					style="display: table; margin: 0 auto; margin-bottom: 10px;">
					<li role="presentation"><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a
						href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action">基础信息</a></li>
					<li role="presentation" class="active"><a
						href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a
						href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li></c:if>
					<li role="presentation"><a
						href="${pageContext.request.contextPath}/bftj/bftj.action">考核管理</a></li>
					<li role="presentation"><a
						href="${pageContext.request.contextPath}/mb/mbdy.action">信息管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/persons/personlist.action">系统管理</a></li></c:if>	
					<li role="presentation"><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">进入前台</a></li>

				</ul>





			</div>
		</div>
		</nav>

		<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar"
			style="background:url(${pageContext.request.contextPath}/images/fpbg.jpg) no-repeat;">
			<div class="info">
				<img id="ataver"
					src="${pageContext.request.contextPath}/images/admin.jpg">
				<span class="name">${sessionScope.username }</span>

			</div>

			<ul class="nav menu" style="margin-top: 50px;">
				<li><a
					href="${pageContext.request.contextPath}/bftj/bfgl.action"
					style="color: #fff"><span></span> 结对管理</a></li>
				<li><a
					href="${pageContext.request.contextPath}/bftj/fpjh.action"><span></span>
						扶贫计划</a></li>
				<li><a
					href="${pageContext.request.contextPath}/bftj/fpcs.action"><span></span>
						扶贫措施</a></li>
				<li><a href="${pageContext.request.contextPath}/bftj/rwgz.action"><span></span> 任务跟踪</a></li>
				
			</ul>

		</div>
		<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
			<div class="row">
				
					
					
				</ol>
			</div>

			<div class="row">
				<div class="col-xs-12" style="padding-left: 60px;">
					<!--<div class="col-xs-2" style="margin-left:80px; border-left:3px solid red; height:100px; margin-top:11px; background:#"></div>-->
					<div class="form-inline pull-left">
						<input type="text" class="form-control" name="pxm" placeholder="姓名">
						<input type="text" class="form-control" name="pxh" placeholder="学号">  
						<input type="text" class="form-control" name="pzy" placeholder="专业"> 
						<input type="text" class="form-control" name="pbj" placeholder="班级"> 
						<input type="text" class="form-control" name="psfz" placeholder="身份证号码">
						<button type="button" class="btn btn-default" onclick="querypkhlb()">查询</button>
					</div>
				</div>
			</div>
			<hr
				style="height: 2px; border: none; border-top: 2px dotted #185598;">
			<div class="row">
				<div class="col-xs-12">
					<div class="panel panel-default">

						<div class="panel-heading">贫困户列表</div>


						<table class="table table-hover">
							<tr>
							    <th>选择</th>
								<th>学生名称</th>
								<th>身份证号码</th>
								<th>学号</th>
								<th>专业</th>
								<th>班级</th>
								<th>联系电话</th>
								<th>贫困原因</th>
							</tr>
								<c:forEach items="${PkhList}" var="pkh">
								<tr>
								<td><input id="checkbox1" style="margin-left: 15px;" name="pkh_pid"
										value="${pkh.pid}" onclick="return chk(this)"
										type="checkbox" /></td>
									<td>${pkh.pxm}</td>
									<td>${pkh.psfz }</td>
									<td>${pkh.pxh }</td>
									<td>${pkh.pzy }</td>
									<td>${pkh.pbj }</td>
									<td>${pkh.plxdh }</td>
									<td>${pkh.pzyzpyy }</td>
									<td>
									</tr>
								</c:forEach>
						</table>
						<div class="row">
						<div class="col-xs-2">
						<select id="select1" name="bftj_txm" class="form-control" style="width:160px;">
							        <option>--请选择帮扶人--</option>
								<c:forEach items="${BftjList}" var="bftj">
									<option>${bftj.txm }</option>
								</c:forEach>
							</select>
							</div>
							<div class="col-xs-2">
						<input type="button" onclick="jdgl()" value="结对" style="font-size: 18px;background-color: #97FFFF;margin-left:-30px;">
						</div>
				</div>
		<%-- <center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/bftj/bfgl.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/bftj/bfgl.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/bftj/bfgl.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/bfgl.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/bfgl.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/bftj/bfgl.action?pageNow=${page.totalPageCount}">尾页</a>
	</center> --%>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>