<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>校园精准扶贫管理系统</title>
</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
			    <a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a>
				 <a class="navbar-brand glyphicon glyphicon-off pull-right" href="#"><span></span></a>
				 <a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
				  
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="#">作战地图</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bfgl.action" >基础信息</a></li>
					<li role="presentation" class="active"><a href="#">帮扶管理</a></li>
					<li role="presentation"><a href="#">扶贫项目管理</a></li>
					<li role="presentation"><a href="#">考核管理</a></li>
					<li role="presentation"><a href="#">信息管理</a></li>
					<li role="presentation"><a href="#">统计管理</a></li>
				
				</ul>
		        
			   
				
				
				
			</div>
		</div>
	</nav>
	
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar" style="background:#686c6e">
	    <div class="info">
	   <img id="ataver" src="img/admin.jpg">
	   <span class="name">杨先生</span>
	  
	     </div>
	
	   <ul class="nav menu" style="margin-top:50px;">
			<li><a href="#" style="color:#fff"><span></span> 结对管理</a></li>
			<li><a href="#"><span></span> 扶贫计划</a></li>
			<li><a href="#"><span></span> 扶贫措施</a></li>
			<li><a href="#"><span></span> 清单派发</a></li>
			<li><a href="#"><span></span> 任务跟踪</a></li>
			<li><a href="#"><span></span> 工作日志</a></li>
			</ul>
			
	
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			
				
				
			</ol>
		</div>
		
		<div class="row">
			 <div class="col-xs-4" style="padding-left:60px;">
			 <form id="forminfo">
			  <div class="col-xs-4">
			<input type="text" class="form-control" placeholder="姓名">
					</div>
				<div class="col-xs-4">
					<input type="text" class="form-control" placeholder="联系电话">
				</div>
				</br></br>
						  <div class="col-xs-4">
				<input type="text" class="form-control" placeholder="扶帮责任人单位名称">
			</div>
			 <button type="button" class="btn btn-default" style="margin-left:15px;">查询</button>
			 </form>
			 </div>
			  
			<div class="col-xs-8" style="padding-right:110px;">
			<!--<div class="col-xs-2" style="margin-left:80px; border-left:3px solid red; height:100px; margin-top:11px; background:#"></div>-->
			<form id="forminfo" class="form-inline pull-right"> 
			<div class="form-group">
				<label for="exampleInputName2">所在镇：</label>
			 <select id="content" class="form-control">
					<option value="Yahoo! U.S">甘溪镇</option>
					<option value="UK.">竹竿镇</option>
					<option value="FFF.">鲁利镇</option>
					<option value="EEE.">东溪镇</option>
					</select>
			</div>
		<div class="form-group">
				<label for="exampleInputName2" style="margin-left:15px;">所在村：</label>
			 <select id="content" class="form-control">
					<option value="Yahoo! U.S">甘溪镇</option>
					<option value="UK.">竹竿镇</option>
					<option value="FFF.">鲁利镇</option>
					<option value="EEE.">东溪镇</option>
					</select>
			</div>
			<div class="form-group">
				<label for="exampleInputName2" style="margin-left:15px;">所在组：</label>
			 <select id="content" class="form-control">
					<option value="Yahoo! U.S">甘溪镇</option>
					<option value="UK.">竹竿镇</option>
					<option value="FFF.">鲁利镇</option>
					<option value="EEE.">东溪镇</option>
					</select>
			</div>
			<br/><br/>
			  <input type="text" class="form-control"  placeholder="姓名"> 
			  <input type="text" class="form-control"  placeholder="证件号">
			<button type="submit" class="btn btn-default">查询</button>
					</form>
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
		<hr/ style="height:2px;border:none;border-top:2px dotted #185598;">
        <div class="row">
		
       
		 <div class="col-xs-6">
		 
		     <div class="panel panel-default">
  
  <div class="panel-heading">帮扶责任人</div>

 
	<table class="table table-hover">
		<tr>
			<th>选择</th>
			<th>姓名</th>
			<th>单位名称</th>
			<th>单位隶属关系</th>
		</tr>
		<tr>
			<td><input style="margin-left:15px;" type="checkbox"/></td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
		</tr>
		<tr>
			<td><input style="margin-left:15px;" type="checkbox"/></td>
			<td>row 2, cell 2</td>
			<td>row 2, cell 2</td>
			<td>row 1, cell 2</td>
		</tr>
		
	</table>
	<nav aria-label="...">
  <ul class="pagination" style="display: table; margin:0 auto; padding-bottom:25px; margin-top:25px;">
    <li><a href="#" >&laquo;</a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">1 <span class="sr-only">(current)</span></a></li>
	 <li ><a href="#">2 <span class="sr-only">(current)</span></a></li>
	  <li ><a href="#">3 <span class="sr-only">(current)</span></a></li> 
   <li><a href="#" >&raquo;</a></li>
  </ul>
</nav>
		</div>
		 
		 </div>
		
				 <div class="col-xs-6">
	<div class="panel panel-default">
  
  <div class="panel-heading">贫困户列表</div>

 
	<table class="table table-hover">
		<tr>
			<th>选择</th>
			<th>户主名称</th>
			<th>证件号码</th>
			<th>证件类型</th>
			<th>名族</th>
			<th>联系电话</th>
			<th>贫困原因</th>
		</tr>
		<tr>
			<td><input style="margin-left:15px;" type="checkbox"/></td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
		</tr>
		<tr>
			<td><input style="margin-left:15px;" type="checkbox"/></td>
			<td>row 2, cell 2</td>
			<td>row 2, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
			<td>row 1, cell 2</td>
		</tr>
		
	</table>
	<nav aria-label="...">
  <ul class="pagination" style="display: table; margin:0 auto; padding-bottom:25px; margin-top:25px;">
    <li><a href="#" >&laquo;</a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">1 <span class="sr-only">(current)</span></a></li>
	 <li ><a href="#">2 <span class="sr-only">(current)</span></a></li>
	  <li ><a href="#">3 <span class="sr-only">(current)</span></a></li> 
   <li><a href="#" >&raquo;</a></li>
  </ul>
</nav>
		</div>
		</div>
	
		
	</div>	
	</div>
</body>
</html>