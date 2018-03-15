<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>贫困户建表</title>

<style type="text/css">
.error {
	color: red
}
</style>

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
	<br/>
	<center>
	<h1 id="btys">贫困户建表</h1>
	<br/>
	<form action="${pageContext.request.contextPath}/jcxx/insertpkh.action" method="post" >
		 <table class="zdtable">
			<tr>
				<td>学生姓名</td>
				<td>	<input type="text" name="pxm" /></td>
				<td>学号</td>
				<td>	<input type="text" name="pxh" /></td>
				<td>专业</td>
				<td>	<input type="text" name="pzy" /></td>
			</tr>
			<tr>
				<td>班级</td>
				<td>	<input type="text" name="pbj" /></td>
				<td>性别</td>
				<td>	<input type="radio" name="pxb" value="男"><span>男</span>
				<input type="radio" name="pxb" value="女"><span>女</span></td>
				<td>年龄</td>
				<td>	<input type="text" name="pnl" /></td>
			</tr>
			<tr>
				<td>家庭住址</td>
				<td>	<input type="text" name="pjtzz" /></td>
				<td>身份证号码</td>
				<td>	<input type="text" name="psfz" /></td>
				<td>联系电话</td>
				<td>	<input type="text" name="plxdh" /></td>
			</tr>
			<tr>
				<td>家庭人口</td>
				<td>	<input type="text" name="pjtrk" /></td>
				<td>民族</td>
				<td>	<input type="text" name="pmz" /></td>
				<td>家庭年收入（万）</td>
				<td>	<input type="text" name="pgold" /></td>
			</tr>
			<tr>
				<td>主要致贫原因</td>
				<td colspan="2"><select name="pzyzpyy" class="form-control">
					<option>等、靠、要、怨等思想贫困户</option>
					<option>因老</option>
					<option>因残</option>
					<option>因病</option>
					<option>因灾</option>
					<option>缺技术</option>
					<option>缺资金</option>
					<option>缺信息</option>
					<option>其他</option>
					</select></td>
				<td>贫困户属性</td>
				<td colspan="2"><select name="ppkhsx" class="form-control">
					<option>一般贫困户</option>
					<option>扶贫低保户</option>
					<option>纯低保户</option>
					<option>五保户</option>
					</select></td>
			</tr>
			<tr>
				<td>主要致贫详细原因</td>
				<td colspan="5"><textarea rows="4" cols="50" name="pzyzpxxyy" class="form-control"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="确认添加" id="xtbfbtnclass"> <input type="reset"
			value="重置" id="xtbfbtnclass2">
		</form>
	</center>
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