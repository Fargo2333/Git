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
<form name="bftjForm" method="post">
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
			    <a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a>
				<a class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				<a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
				  
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/jcxx/bfgl.action" >基础信息</a></li>
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
			 <div class="row">
			 
			 <div class="col-xs-12">
			 <div class="panel panel-default">
			  <div class="panel-heading">贫困户列表</div>

 <div class="col-xs-2"></div>
		<div class="col-xs-8" id="zpyynumberbing" style="width: 806px;margin-top:20px;height: 206px;"></div>
	<div class="col-xs-2"></div>
	<table class="table table-hover">
		<tr>
			<th>学生姓名 </th>
			<th>身份证号码</th>
			<th>学号</th>
			<th>专业</th>
			<th>班级</th>
			<th>性别</th>
			<th>年龄</th>
			<th>家庭年收入(万)</th>
			<th>名族</th>
			<th>联系电话</th>
			<th>贫困原因</th>
			<th>家庭人口</th>
			<th>贫困户属性</th>
			<th>状态</th>
			<c:if test="${sessionScope.userschedule == '管理员'}"><th>操作</th></c:if>
		</tr>
		<c:forEach items="${PkhList}" var="pkh">
		<tr>
			<td>${pkh.pxm}</td>
			<td>${pkh.psfz }</td>
			<td>${pkh.pxh}</td>
			<td>${pkh.pzy}</td>
			<td>${pkh.pbj}</td>
			<td>${pkh.pxb}</td>
			<td>${pkh.pnl}</td>
			<td>${pkh.pgold}</td>
			<td>${pkh.pmz }</td>
			<td>${pkh.plxdh }</td>
			<td>${pkh.pzyzpyy }</td>
			<td>${pkh.pjtrk }</td>
			<td>${pkh.ppkhsx }</td>
			<td>${pkh.pzt }</td>
			<c:if test="${sessionScope.userschedule == '管理员'}"><td><a href="${pageContext.request.contextPath}/jcxx/editpkh.action?id=${pkh.pid}"><img src="${pageContext.request.contextPath}/images/edit.png" ></a>
				<a href="${pageContext.request.contextPath}/jcxx/deletepkh.action?id=${pkh.pid}"><img src="${pageContext.request.contextPath}/images/delete.png"></a>
			</td></c:if>
		</tr>
		</c:forEach>
	</table>
					<center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/jcxx/pkhjcxx.action?pageNow=${page.totalPageCount}">尾页</a>
	</center>
				</div>
				</div>
				</div>
			</td>
		</tr>	
        </div>
        </div>
	</form>
</body>
<!-- Echart -->
<script type="text/javascript" src="<%=basePath%>js/echart/echarts.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/echart/chalk.js"></script>
<script type="text/javascript">
var zpyynumberbing=document.getElementById("zpyynumberbing");
var zpyynumber_bt = echarts.init(zpyynumberbing,'macarons');
var zpyynumber_bt_option = {
	    title : {
	        text: '贫困生致贫原因统计图',
	        subtext: '',
	        x:'center'
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'bottom',
	        data: ['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
	    },
	    series : [
	        {
	            name: '访问来源',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	            data:[
	                {value:335, name:'直接访问'},
	                {value:310, name:'邮件营销'},
	                {value:234, name:'联盟广告'},
	                {value:135, name:'视频广告'},
	                {value:1548, name:'搜索引擎'}
	            ],
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	};
zpyynumber_bt.setOption(zpyynumber_bt_option);
$.ajax({
    type: "POST",
    url: "${pageContext.request.contextPath}/getData_guanliTongji.action",
    success: function(data){
    	var pkhbing = data.pkhbing;       	
    	var pzyzpyy2 = new Array();
    	var data2 = new Array();
    	for(var key in pkhbing){
    		pzyzpyy2.push(pkhbing[key].pzyzpyy);
    		var items = {};
    		items.name=pkhbing[key].pzyzpyy;
    		items.value=pkhbing[key].zpyynumber;
    		data2.push(items)
    	}
    	zpyynumber_bt.setOption({
    		 legend: {
			        orient: 'vertical',
			        left: 'bottom',
			        data: pzyzpyy2
			    },
			    series : [
			        {
			        	name: '致贫原因',
			            type: 'pie',
			            radius : '55%',
			            center: ['50%', '60%'],
			            data:data2,
			            itemStyle: {
			                emphasis: {
			                    shadowBlur: 10,
			                    shadowOffsetX: 0,
			                    shadowColor: 'rgba(0, 0, 0, 0.5)'
			                }
			            }
			        }
			    ]
		});     	
    },
    error:function(){
	}
}); 
</script>
</html>