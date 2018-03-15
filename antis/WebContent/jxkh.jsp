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
			<li><a href="${pageContext.request.contextPath}/bftj/bftj.action" style="color:#fff"><span></span>帮扶统计</a></li>
			<li><a href="${pageContext.request.contextPath}/bftj/jxkh.action"><span></span>帮扶责任人绩效考核</a></li>
			</ul>
			
	
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" >			
		<div class="row">
			
				
			</ol>
		</div>
		<div class="col-md-12" id="echars_zhu3" style="margin-top:20px;width:100%;height: 340px;"></div>
		<div class="row">
		
		<div class="xmright">
		

        
         
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
							    <a href="${pageContext.request.contextPath}/bftj/jxkh2.action?id=${bftj.tid}">查看扶贫绩效</a>
							</td>
						</tr>
					</c:forEach>
				</table>
					<center>
	<font size="2">共 ${page.totalPageCount} 页</font>
	<font size="2">第 ${page.pageNow} 页</font>
	<a href="${pageContext.request.contextPath}/bftj/jxkh.action?pageNow=1">首页</a>
	<c:choose>
		<c:when test="${page.pageNow - 1 > 0}">
			<a href="${pageContext.request.contextPath}/bftj/jxkh.action?pageNow=${page.pageNow - 1}">上一页</a>
		</c:when>
		<c:when test="${page.pageNow - 1 <= 0}">
			<a href="${pageContext.request.contextPath}/bftj/jxkh.action?pageNow=1">上一页</a>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${page.pageNow + 1 < page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/jxkh.action?pageNow=${page.pageNow + 1}">下一页</a>
		</c:when>
		<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
			<a href="${pageContext.request.contextPath}/bftj/jxkh.action?pageNow=${page.totalPageCount}">下一页</a>
		</c:when>
	</c:choose>
	<a href="${pageContext.request.contextPath}/bftj/jxkh.action?pageNow=${page.totalPageCount}">尾页</a>
	</center>
	<br>
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
var echars_zhu3  = document.getElementById("echars_zhu3");
var zhu3 = echarts.init(echars_zhu3,'macarons');
    var zhu3_option = {
    	    title: {
    	        text: '帮扶前后年收入对比',
    	    
    	    },
    	    tooltip: {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['帮扶前年收入(万)','帮扶后年收入(万)']
    	    },
    	    toolbox: {
    	        show: true,
    	        feature: {
    	            dataZoom: {
    	                yAxisIndex: 'none'
    	            },
    	            dataView: {readOnly: false},
    	            magicType: {type: ['line', 'bar']},
    	            restore: {},
    	            saveAsImage: {}
    	        }
    	    },
    	    xAxis:  {
    	        type: 'category',
    	        boundaryGap: false,
    	        data: ['姓名1','周二','周三','周四','周五','周六','周日']
    	    },
    	    yAxis: {
    	        type: 'value',
    	     
    	    },
    	    series: [
    	        {
    	            name:'帮扶前年收入(万)',
    	            type:'line',
    	            
    	            data:[11, 11, 15, 13, 12, 13, 10],
    	           
    	            markLine: {
    	                data: [
    	                    {type: 'average', name: '平均值'}
    	                ]
    	            }
    	        },
    	        {
    	            name:'帮扶后年收入(万)',
    	            type:'line',
    	            data:[20, 22, 18, 22, 15, 18, 25],
    	            markPoint: {
    	                data: [
    	                    {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
    	                ]
    	            },
    	            markLine: {
    	                data: [
    	                    {type: 'average', name: '平均值'},
    	                    [{
    	                        symbol: 'none',
    	                        x: '90%',
    	                        yAxis: 'max'
    	                    }, {
    	                        symbol: 'circle',
    	                        label: {
    	                            normal: {
    	                                position: 'start',
    	                                formatter: '最大值'
    	                            }
    	                        },
    	                        type: 'max',
    	                        name: '最高点'
    	                    }]
    	                ]
    	            }
    	        }
    	    ]
    	};
        zhu3.setOption(zhu3_option);
  $.ajax({
      type: "POST",
      url: "${pageContext.request.contextPath}/getData_guanliTongji.action",
      success: function(data){
      	var guanliTongji_zhu3 = data.guanliTongji_zhu3;       	
      	var pxm_zhu3 = new Array();
      	var pgold_zhu3 = new Array();
      	var pngold_zhu3 = new Array();
      	for(var key in guanliTongji_zhu3){
      		pxm_zhu3.push(guanliTongji_zhu3[key].pxm)
      		pgold_zhu3.push(guanliTongji_zhu3[key].pgold)
      		pngold_zhu3.push(guanliTongji_zhu3[key].pngold)
      	}
      	
      	zhu3.setOption({
      		 title: {
     	        text: '帮扶前后年收入对比',
     	    
     	    },
     	    tooltip: {
     	        trigger: 'axis'
     	    },
     	    legend: {
     	        data:['帮扶前年收入(万)','帮扶后年收入(万)']
     	    },
     	    toolbox: {
     	        show: true,
     	        feature: {
     	            dataZoom: {
     	                yAxisIndex: 'none'
     	            },
     	            dataView: {readOnly: false},
     	            magicType: {type: ['line', 'bar']},
     	            restore: {},
     	            saveAsImage: {}
     	        }
     	    },
     	    xAxis:  {
     	        type: 'category',
     	        boundaryGap: false,
     	        data: pxm_zhu3,
     	    },
     	    yAxis: {
     	        type: 'value',
     	     
     	    },
     	    series: [
     	        {
     	            name:'帮扶前年收入(万)',
     	            type:'line',
     	            data:pgold_zhu3,
     	           
     	            markLine: {
     	                data: [
     	                    {type: 'average', name: '平均值'}
     	                ]
     	            }
     	        },
     	        {
     	            name:'帮扶后年收入(万)',
     	            type:'line',
     	            data:pngold_zhu3,
     	            markPoint: {
     	                data: [
     	                    {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
     	                ]
     	            },
     	            markLine: {
     	                data: [
     	                    {type: 'average', name: '平均值'},
     	                    [{
     	                        symbol: 'none',
     	                        x: '90%',
     	                        yAxis: 'max'
     	                    }, {
     	                        symbol: 'circle',
     	                        label: {
     	                            normal: {
     	                                position: 'start',
     	                                formatter: '最大值'
     	                            }
     	                        },
     	                        type: 'max',
     	                        name: '最高点'
     	                    }]
     	                ]
     	            }
     	        }
      	    ]
      	})       	
      },
      error:function(){
  	}
  }); 
  //窗口变化 重新绘制图形
	$(window).resize(function() {
		zhu2.resize();
		zhu3.resize();
	});
</script>
</html>