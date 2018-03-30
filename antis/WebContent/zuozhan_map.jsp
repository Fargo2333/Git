<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%session.setAttribute("xtgl","");%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="/antis/css/bootstrap.min.css" rel="stylesheet">
<link href="/antis/css/datepicker3.css" rel="stylesheet">
<link href="/antis/css/styles.css" rel="stylesheet">
<script src="/antis/js/jquery-1.11.1.min.js"></script>
<script src="/antis/js/bootstrap.min.js"></script>
<script src="/antis/js/bootstrap-datepicker.js"></script>
<%-- <link href="<%=basePath%>css/indexbootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=basePath%>css/indexstyle.css" rel="stylesheet" type="text/css" media="all" /> --%>
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
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>校园精准扶贫管理系统</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
		id="navnewclass">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><span>点对点—校园精准扶贫平台</span></a> <a
				class="navbar-brand glyphicon glyphicon-off pull-right" href="${pageContext.request.contextPath}/persons/user_cancellation.action"><span></span></a>
				<a class="navbar-brand glyphicon pull-right"><span style="font-size:10px;line-height:17px;color:#F0F8FF;">当前在线人数：${sessionScope.zaixianrenshu}</span></a>	
			<ul class="nav nav-pills"
				style="display: table; margin: 0 auto; margin-bottom: 10px;">
				<li role="presentation" class="active"><a href="${pageContext.request.contextPath}/zuozhan_map.jsp">校园扶贫</a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath}/jcxx/bftjjcxx.action" >基础信息</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bfgl.action">帮扶管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/fpxm/xmsq.action">扶贫项目管理</a></li></c:if>
					<li role="presentation"><a href="${pageContext.request.contextPath}/bftj/bftj.action">考核管理</a></li>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/mb/mbdy.action">信息管理</a></li></c:if>
					<c:if test="${sessionScope.userschedule == '管理员'}"><li role="presentation"><a href="${pageContext.request.contextPath}/persons/personlist.action">系统管理</a></li></c:if>	<li role="presentation"><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">进入前台</a></li>
			</ul>

		</div>
	</div>
	</nav>	
	
		<!-- content -->
		
		 
			<div class="col-md-12" style="padding: 0px;padding-top:20px;">
			<div class="col-md-1"></div>
				  <div class="col-md-5">
					<img src="<%=basePath%>images/myschoolbg.jpg" style="margin-top:25px;height:381px;width:580px;" class="img-responsive"
						alt="Cinque Terre" width="610" height="236">
					<div id="pkszb" style="margin-left:10px;margin-top:60px;height: 506px;"></div>

				</div>
			 <div class="col-md-5">	
			 		<h2>高校精准扶贫工作的必要性</h2>
					<div style="width:600px;font-family: 微软雅黑;font-size:17px;">
						高等院校历来是先进思想文化的高地。思想不牢，地动山摇。"治贫先治愚"的特性决定了思想文化在精准扶贫工作中的先导性功
						能。"扶贫先扶志"，不论造成贫困有何种直接原因，精神贫困始终是主观上的首要根源。扶贫工作贵在扶真贫、真扶贫。因此
						精准扶贫首先要精准“识”贫，解决"认识"上的问题。这正为高校先进思想文化提供了用武之地。具体来讲，一是要通过翔实的
						调查研究、扎实细致的工作、严格的工作程序掌握贫困地区、贫困户实情，确定真正的"困难户"，找准帮扶对象，这是坚持
						公平正义，赢得群众认可，推动工作以点带面的思想基础。二是要发挥高校思想智库优势，综合运用数据分析、信息技术、实地查
						看、环境评测等多种手段，帮助困难地区和困难群众准确诊断"病情"，找出致贫原因，建立个性化动态管理档案，这是评价精准扶
						贫质量、建立长效工作机制的思想根基。三是要发挥高校思想文化优势，宣讲帮扶政策、传播先进文化、营造积极氛围，教育引导
						困难群众正确认识贫困、正确对待贫困、正确摆脱贫困，解放思想，拓展思路，树立信心和决心，这是帮助困难群众放下心理包袱
						，勇敢迈出脱贫致富第一步的思想根基。
					</div>
					<div id="pkszzqs" style="margin-top:60px;height: 486px;"></div>
				</div>
				<div class="col-md-1"></div>	
			</div>
		
		<!-- content -->
	
</body>
<!-- Echart -->
<script type="text/javascript" src="/antis/js/echart/echarts.min.js"></script>
<script type="text/javascript" src="/antis/js/echart/chalk.js"></script>
<script type="text/javascript">
var pkszb=document.getElementById("pkszb");
var pkszb_bt = echarts.init(pkszb,'macarons');
var pkszb_bt_option = {
	    title : {
	        text: '2017年全国高校贫困学生占比',
	        x:'center'
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'left',
	        data: ['贫困学生','非贫困学生']
	    },
	    series : [
	        {
	            name: '2017年全国高校贫困学生占比',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	            data:[
	                {value:202541, name:'贫困学生'},
	                {value:821015, name:'非贫困学生'},
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
	pkszb_bt.setOption(pkszb_bt_option);
	var pkszzqs=document.getElementById("pkszzqs");
	var pkszzqs_zx = echarts.init(pkszzqs,'macarons');
	var pkszzqs_zx_option = {
		    title : {
		        text: '近七年全国受扶贫家庭统计折线图',
		        subtext: '纯属虚构'
		    },
		    tooltip : {
		        trigger: 'axis'
		    },
		  
		    toolbox: {
		        show : true,
		        feature : {
		            mark : {show: true},
		            dataView : {show: true, readOnly: false},
		            magicType : {show: true, type: ['line', 'bar']},
		            restore : {show: true},
		            saveAsImage : {show: true}
		        }
		    },
		    calculable : true,
		    xAxis : [
		        {
		            type : 'category',
		            boundaryGap : false,
		            data : ['2010年','2011年','2012年','2013年','2014年','2015年','2016年']
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value',
		            axisLabel : {
		                formatter: '{value} 万'
		            }
		        }
		    ],
		    series : [
		        {
		            name:'受扶贫家庭',
		            type:'line',
		            data:[7, 10, 13, 18, 22, 23, 26],
		            markPoint : {
		                data : [
		                    {type : 'max', name: '最大值'},
		                    {type : 'min', name: '最小值'}
		                ]
		            },
		            markLine : {
		                data : [
		                    {type : 'average', name: '平均值'}
		                ]
		            }
		        },
		        
		    ]
		};
	pkszzqs_zx.setOption(pkszzqs_zx_option);
</script>
</html>