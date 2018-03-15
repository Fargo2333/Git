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
function querybftj(){
	document.bftjForm.action="${pageContext.request.contextPath}/bftj/querybftj.action";
	document.bftjForm.submit();
}
function exportbftj(){
	document.bftjForm.action="${pageContext.request.contextPath}/bftj/exportbftj.action";
	document.bftjForm.submit();
}
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
<form name="bftjForm" method="post">
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navnewclass">
		<div class="container-fluid">
			<div class="navbar-header">
			    <a class="navbar-brand" href="${pageContext.request.contextPath}/zuozhan_map.jsp"><span>点对点—校园精准扶贫平台</span></a>
				 <a class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				  <a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
			   <ul class="nav nav-pills" style="display:table; margin:0 auto;margin-bottom:10px;"> 
					<li role="presentation" ><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation" ><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li></c:if></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li></c:if>
					<li role="presentation" class="active" ><a href="${pageContext.request.contextPath}/bftj/bftj.action">考核管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/mb/mbdy.action">信息管理</a></li></c:if></c:if>
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
			<li><a href="${pageContext.request.contextPath}/bftj/bftj.action" style="color:#fff"><span></span>帮扶统计</a></li>
			<li><a href="${pageContext.request.contextPath}/bftj/jxkh.action"><span></span>帮扶责任人绩效考核</a></li>
			</ul>
			
	
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" >			
		<div class="row">
			
				
				
			</ol>
		</div>
		<div class="row">
		
		<div class="xmright">
		
		<div class="col-xs-2">
        <input type="text" class="form-control" name="txm" placeholder="姓名" />
        </div>
        <input type="button" class="btn btn-default" id="fpbtn1" value="查询" onclick="querybftj()"/>
      
        <div class="col-md-12" id="echars_zhu2" style="margin-top:20px;width:100%;height: 340px;"></div>
        
         
			<td>
			
			 <div class="row">
			 
			 <div class="col-xs-12">
			 <div class="panel panel-default">
			  <div class="panel-heading">帮扶统计</div>
				<table class="table table-hover">
					<tr align="center" id="fptableheight">
						<td>姓名</td>
						<td>职位</td>
						<td>联系电话</td>
						<td>帮扶户数</td>
						<td>走访户数</td>
						<td>培训次数</td>
						<td>争取扶贫项目</td>
					</tr>
					<c:forEach items="${BftjList}" var="bftj">
						<tr align="center" id="fptableheight">
							<td>${bftj.txm}</td>
							<td>${bftj.tzw}</td>
							<td>${bftj.tlxdh}</td>
							<td>${bftj.tsjbfhs}</td>
							<td>${bftj.tsjzfhs}</td>
							<td>${bftj.tsjpxcs}</td>
							<td>${bftj.tsjfpxm}</td>
						</tr>
					</c:forEach>
				</table>
				<center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/bftj/bftj.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/bftj/bftj.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/bftj/bftj.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/bftj.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/bftj.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/bftj/bftj.action?pageNow=${page.totalPageCount}">尾页</a>
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
<script type="text/javascript" src="<%=basePath%>js/echart/ningbo2.js"></script>
<!-- Echarts 主题下载 -->
<script type="text/javascript" src="<%=basePath%>js/echart/macarons.js"></script>
<script type="text/javascript">
var echars_zhu2  = document.getElementById("echars_zhu2");
var zhu2 = echarts.init(echars_zhu2,'macarons');
var zhu2_option = {
		
		title: {
 	        text: '各帮扶人本年度绩效考核',
 	    
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
    zhu2.setOption(zhu2_option);
    $.ajax({
        type: "POST",
        url: "${pageContext.request.contextPath}/getData_guanliTongji.action",
        success: function(data){
        	var guanliTongji_zhu2 = data.guanliTongji_zhu2;       	
        	var txm_zhu2 = new Array();
        	var tsjbfhs_zhu2 = new Array();
        	var tsjzfhs_zhu2 = new Array();
        	var tsjpxcs_zhu2 = new Array();
        	var tsjfpxm_zhu2 = new Array();
        	for(var key in guanliTongji_zhu2){
        		txm_zhu2.push(guanliTongji_zhu2[key].txm)
        		tsjbfhs_zhu2.push(guanliTongji_zhu2[key].tsjbfhs)
        		tsjzfhs_zhu2.push(guanliTongji_zhu2[key].tsjzfhs)
        		tsjpxcs_zhu2.push(guanliTongji_zhu2[key].tsjpxcs)
        		tsjfpxm_zhu2.push(guanliTongji_zhu2[key].tsjfpxm)
        	}
        	
        	zhu2.setOption({
        	    xAxis : [
        	        {
        	            type : 'category',
        	            data : txm_zhu2,
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
        		            data:tsjbfhs_zhu2,
        		        },
        		        {
        		            name:'培训次数',
        		            type:'bar',
        		            stack: '2',
        		            data:tsjpxcs_zhu2,
        		        },
        		        {
        		            name:'扶贫项目',
        		            type:'bar',
        		            stack: '3',
        		            data:tsjfpxm_zhu2,
        		        },
        		        {
        		            name:'走访户数',
        		            type:'bar',
        		            stack: '4',
        		            data:tsjzfhs_zhu2,
        		        }, 
        	    ]
        	})       	
        },
        error:function(){
    	}
    }); 

</script>
</html>