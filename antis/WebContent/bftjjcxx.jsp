<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
<%session.setAttribute("xtgl","");%>
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
			 <div class="row">
			 
			 <div class="col-xs-12">
			 <div class="panel panel-default">
			  <div class="panel-heading">帮扶人列表</div>
			  <div class="col-xs-1"></div>
		      <div class="col-md-10" id="echars_zhu4" style="margin-top:20px;width:100%;height: 340px;"></div>
	          <div class="col-xs-1"></div>
				<table class="table table-hover">
					<tr align="center" id="fptableheight">
						<td>姓名</td>
						<td>职务</td>
						<td>联系电话</td>
						<c:if test="${sessionScope.userschedule == '管理员'}"><td>操作</td></c:if>
					</tr>
					<c:forEach items="${BftjList}" var="bftj">
						<tr align="center" id="fptableheight">
							<td>${bftj.txm}</td>
							<td>${bftj.tzw}</td>
							<td>${bftj.tlxdh}</td>
							<c:if test="${sessionScope.userschedule == '管理员'}"><td><a href="${pageContext.request.contextPath}/jcxx/editbftj.action?id=${bftj.tid}"><img src="${pageContext.request.contextPath}/images/edit.png" ></a>
							    <a href="${pageContext.request.contextPath}/jcxx/deletebftj.action?id=${bftj.tid}"><img src="${pageContext.request.contextPath}/images/delete.png"></a></td></c:if>
						</tr>
					</c:forEach>
				</table>
						<center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action?pageNow=${page.totalPageCount}">尾页</a>
	</center>
				</div>
				</div>
				</div>
			</td>
		</tr>	
        </div>
        </div>
        <div class="row">
		
				</div>
				</div>

	</form>
</body>
<!-- Echart -->
<script type="text/javascript" src="<%=basePath%>js/echart/echarts.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/echart/ningbo2.js"></script>
<!-- Echarts 主题下载 -->
<script type="text/javascript" src="<%=basePath%>js/echart/macarons.js"></script>
<script type="text/javascript">
var echars_zhu4  = document.getElementById("echars_zhu4");
var zhu4 = echarts.init(echars_zhu4,'macarons');
var zhu4_option = {
		
		title: {
 	        text: '各帮扶人年度计划',    
 	    },
 	    
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    legend: {
	        data:['帮扶户数','培训次数','扶贫项目','走访户数']
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    xAxis : [
	        {
	            type : 'category',
	            data : ['王丽','小强','张三','大壮']
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'帮扶户数',
	            type:'bar',
	            stack: '1',
	            data:[320, 332, 301, 334]
	        },
	        {
	            name:'培训次数',
	            type:'bar',
	            stack: '2',
	            data:[120, 132, 101, 134]
	        },
	        {
	            name:'扶贫项目',
	            type:'bar',
	            stack: '3',
	            data:[220, 182, 191, 234]
	        },
	        {
	            name:'走访户数',
	            type:'bar',
	            stack: '4',
	            data:[150, 232, 201, 154]
	        },
	        
	    ]
	};
    zhu4.setOption(zhu4_option);
    $.ajax({
        type: "POST",
        url: "${pageContext.request.contextPath}/getData_guanliTongji.action",
        success: function(data){
        	var guanliTongji_zhu4 = data.guanliTongji_zhu4;       	
        	var txm_zhu4 = new Array();
        	var tjhbfhs_zhu4 = new Array();
        	var tjhzfhs_zhu4 = new Array();
        	var tjhpxcs_zhu4 = new Array();
        	var tjhfpxm_zhu4 = new Array();
        	for(var key in guanliTongji_zhu4){
        		txm_zhu4.push(guanliTongji_zhu4[key].txm)
        		tjhbfhs_zhu4.push(guanliTongji_zhu4[key].tjhbfhs)
        		tjhzfhs_zhu4.push(guanliTongji_zhu4[key].tjhzfhs)
        		tjhpxcs_zhu4.push(guanliTongji_zhu4[key].tjhpxcs)
        		tjhfpxm_zhu4.push(guanliTongji_zhu4[key].tjhfpxm)
        	}
        	
        	zhu4.setOption({
        	    xAxis : [
        	        {
        	            type : 'category',
        	            data : txm_zhu4,
        	            axisTick: {
        	                alignWithLabel: true
        	            }
        	        }
        	    ],
        	    series : [
        	    	 {
        		            name:'帮扶户数',
        		            type:'bar',
        		            stack: '1',
        		            data:tjhbfhs_zhu4,
        		        },
        		        {
        		            name:'培训次数',
        		            type:'bar',
        		            stack: '2',
        		            data:tjhpxcs_zhu4,
        		        },
        		        {
        		            name:'扶贫项目',
        		            type:'bar',
        		            stack: '3',
        		            data:tjhfpxm_zhu4,
        		        },
        		        {
        		            name:'走访户数',
        		            type:'bar',
        		            stack: '4',
        		            data:tjhzfhs_zhu4,
        		        }, 
        	    ]
        	})       	
        },
        error:function(){
    	}
    }); 

</script>
</html>