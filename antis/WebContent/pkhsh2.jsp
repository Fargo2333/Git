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
<script type="text/javascript">
</script>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>校园精准扶贫管理系统</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/jcxx/shtg.action" method="post">
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
			    <a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a>
				<a class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				 <a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	 
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation" ><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li></c:if></li>
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
	 <li><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" style="color:#fff"><span></span>帮扶人基础信息</a></li>
	   <li><a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action" style="color:#fff"><span></span>贫困户基础信息</a></li>
			<li><a href="${pageContext.request.contextPath}/addbftj.jsp" style="color:#fff"><span></span>帮扶负责人添加</a></li>
			<li><a href="${pageContext.request.contextPath}/addpkh.jsp"><span></span> 贫困户建档</a></li>
			<c:if test="${sessionScope.userschedule == '管理员'}">
			<li><a href="${pageContext.request.contextPath}/jcxx/bfwsh.action"><span></span> 帮扶人审核</a></li>
			<li><a href="${pageContext.request.contextPath}/jcxx/pkhwsh.action"><span></span> 贫困户审核</a></li>
			<li><a href="${pageContext.request.contextPath}/jcxx/pkhgj.action"><span></span> 贫困户跟进</a></li>
			</c:if>
			</ul>
			
	
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" >			
		<div class="row">
			
		</div>
		
		
						<!--<form id="forminfo">
		 <div class="form-group">
		    <label for="exampleInputName2">Name</label>
			  <div class="col-xs-2">
			   
			       <select id="content" class="form-control">
					<option value="Yahoo! U.S">甘溪镇</option>
					<option value="UK.">竹竿镇</option>
					<option value="FFF.">鲁利镇</option>
					<option value="EEE.">东溪镇</option>
					</select>
				</div>
				
				</div>
				<div class="col-xs-4">
					<input type="text" class="form-control" placeholder="联系电话">
				</div>
				</br></br>
						  <div class="col-xs-4">
				<input type="text" class="form-control" placeholder="姓名">
			</div>
			<div class="col-xs-4">
				<input type="text" class="form-control" placeholder="证件号">
			</div>
			 <button type="button" class="btn btn-default" style="margin-left:15px;">查询</button>
			 </form>-->
			
			
			
			</div>
		</div>
		<hr style="height:2px;border:none;border-top:2px dotted #185598;">
				 <div class="col-xs-6">
	
		
	</div>	

		
		<div class="xmright">
			  <div class="panel-heading">贫困户列表</div>

 
<table class="zdtable" align="center" border="1" cellpadding="5" style="font-size: 15px;">
<h3 align="center">贫困户审核</h3><br>
<input type="hidden" name="id" value="${id}"/>
<tr>
	<td>学生姓名</td>
	<td>${PkhList.pxm }</td>
	<td>身份证号码</td>
	<td>${PkhList.psfz }</td>
	<td>家庭住址</td>
	<td>${PkhList.pjtzz }</td>
</tr>
<tr>
	<td>年龄</td>
	<td>${PkhList.pnl }</td>
	<td>联系电话</td>
	<td>${PkhList.plxdh }</td>
	<td>家庭人口</td>
	<td>${PkhList.pjtrk }</td>
</tr>
<tr>
	<td>学号</td>
	<td>${PkhList.pxh }</td>
	<td>专业</td>
	<td>${PkhList.pzy }</td>
	<td>班级</td>
	<td>${PkhList.pbj }</td>

<tr>
	<td>贫困户属性</td>
	<td>${PkhList.ppkhsx }</td>
	<td>主要致贫原因</td>
	<td>${PkhList.pzyzpyy }</td>
	<td>主要致贫详细原因</td>
	<td>${PkhList.pzyzpxxyy }</td>
</tr>
<tr>
	<td>民族</td>
	<td>${PkhList.pmz }</td>
	<td colspan="2">申请时间</td>
	<td colspan="2">${PkhList.ptime }</td>
</tr>
</table>
<br>
<center>
	<input type="submit" value="审核通过" id="xtbfbtnclass">
	<a href="${pageContext.request.contextPath}/jcxx/shbtg.action?id=${id}">审核不通过</a>
</center>
</form>
</body>
</html>