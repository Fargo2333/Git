<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/datepicker3.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/echart/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/echart/ningbo2.js"></script>
<!-- Echarts 主题下载 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/echart/macarons.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帮扶人申请</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/HENGWANG.png" href="${pageContext.request.contextPath}/FrontPage/img/HENGWANG.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/amazeui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/style.css"/>
  <link href="${pageContext.request.contextPath}/FrontPage/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/FrontPage/css/templatemo_style.css" rel="stylesheet" type="text/css"> 
	<script src="${pageContext.request.contextPath}/FrontPage/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/FrontPage/js/amazeui.min.js"></script>
</head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		 <img class=" logo" style="padding-bottom:60px;width:200px;height:130px;" src="${pageContext.request.contextPath}/FrontPage/img/logoko.png"></img>
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <%-- <li>你好！${sessionScope.userschedule },${sessionScope.username }</li> --%>
      <li ><a href="index.jsp">首页</a></li>
      <li ><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
	   <li><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li class="hw-menu-active"><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li><c:if test="${sessionScope.username != null}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;">${sessionScope.username }</div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/persons/user_cancellation2.action">退出</a></div></li></c:if><c:if test="${empty sessionScope.username}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/login.jsp">登陆</a></div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/register.jsp">注册</a></div></li>  </c:if></li>  
    <li><a style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;" href="${pageContext.request.contextPath}/zuozhan_map.jsp">进入后台</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="am-container-1">
	<div class="container" style="margin-top:10%">
		<div class="col-md-12">			
		    <div class="row">
				<div class="col-md-6" id="echars_tphs" style="height: 300px;margin-top:25px;"></div>
				<br>
				<div style="font-size:20px;font-family: 微软雅黑;color: #17bbff;"><center>2016年脱贫户数与未脱贫户数统计</center></div>
				<div class="col-md-6" id="echars_tpdb" style="height: 300px;"></div>
			</div>
			<div class="row">
			<div class="col-md-4" ></div><br>
			<div style="font-size:20px;font-family: 微软雅黑;color: #17bbff;"><center>各帮扶人绩效考核</center></div>
			<div class="col-md-4" id="echars_zhu2" style="margin-top:20px;width:100%;height: 340px;"></div>
			<div class="col-md-4" ></div>
			</div>
		</div>
	</div>
	</div>
</body>
<script type="text/javascript">
var echars_tphs  = document.getElementById("echars_tphs");
var tphs = echarts.init(echars_tphs,'macarons');
var echars_tpdb  = document.getElementById("echars_tpdb");
var tpdb = echarts.init(echars_tpdb,'macarons');
var echars_zhu2  = document.getElementById("echars_zhu2");
var zhu2 = echarts.init(echars_zhu2,'macarons');
var tphs_option = {
	    title: {
	        text: '今年村庄脱贫户数',
	        left: 'center'
	    },
tooltip: {
    trigger: 'item',
    formatter: "{a} <br/>{b}: {c} ({d}%)"
},
legend: {
    orient: 'vertical',
    x: 'left',
    data:['南村','北村','欣杨村','大荒村','水鹭村','大关村']
},

series: [
    {
        name:'脱贫户数',
        type:'pie',
        radius: ['50%', '70%'],
        avoidLabelOverlap: false,
        label: {
            normal: {
                show: false,
                position: 'center'
            },
            emphasis: {
                show: true,
                textStyle: {
                    fontSize: '30',
                    fontWeight: 'bold'
                }
            }
        },
        labelLine: {
            normal: {
                show: false
            }
        },
        data:[
            {value:20, name:'南村'},
            {value:15, name:'北村'},
            {value:30, name:'欣杨村'},
            {value:18, name:'大荒村'},
            {value:27, name:'水鹭村'},
            {value:20, name:'大关村'}
        ]
    }
]
};
var tpdb_option= {
	
	    tooltip : {
	        trigger: 'axis'
	    },
	    legend: {
	        data:['已脱贫户数','未脱贫户数']
	    },
	    toolbox: {
	        show : true,
	        feature : {
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
	            data:['南村','北村','欣杨村','大荒村','水鹭村','大关村']
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'已脱贫户数',
	            type:'bar',
	            data:[90, 85, 120, 117, 215,123],
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
	        {
	            name:'未脱贫户数',
	            type:'bar',
	            data:[80,52,120,220,182,159],
	            markPoint : {
	                data : [
	                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
	                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
	                ]
	            },
	            markLine : {
	                data : [
	                    {type : 'average', name : '平均值'}
	                ]
	            }
	        }
	    ]
	};
var zhu2_option = {
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    legend: {
	        data:['脱贫户数','培训次数','扶贫项目','走访户数','扶贫资金（万）']
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
	            data : ['王丽','小强','张三','大壮','小六','蒲松龄','小宋']
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'脱贫户数',
	            type:'bar',
	            stack: '1',
	            data:[320, 332, 301, 334, 390, 330, 320]
	        },
	        {
	            name:'培训次数',
	            type:'bar',
	            stack: '2',
	            data:[120, 132, 101, 134, 90, 230, 210]
	        },
	        {
	            name:'扶贫项目',
	            type:'bar',
	            stack: '3',
	            data:[220, 182, 191, 234, 290, 330, 310]
	        },
	        {
	            name:'走访户数',
	            type:'bar',
	            stack: '4',
	            data:[150, 232, 201, 154, 190, 330, 410]
	        },
	        {
	            name:'扶贫资金（万）',
	            type:'bar',
	            stack: '5',
	            data:[862, 1018, 964, 1026, 1679, 1600, 1570],
	            
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
        	var tsjtphs_zhu2 = new Array();
        	var tsjzfhs_zhu2 = new Array();
        	var tsjpxcs_zhu2 = new Array();
        	var tsjfpxm_zhu2 = new Array();
        	var tsjfpzj_zhu2 = new Array();
        	for(var key in guanliTongji_zhu2){
        		txm_zhu2.push(guanliTongji_zhu2[key].txm)
        		tsjtphs_zhu2.push(guanliTongji_zhu2[key].tsjtphs)
        		tsjzfhs_zhu2.push(guanliTongji_zhu2[key].tsjzfhs)
        		tsjpxcs_zhu2.push(guanliTongji_zhu2[key].tsjpxcs)
        		tsjfpxm_zhu2.push(guanliTongji_zhu2[key].tsjfpxm)
        		tsjfpzj_zhu2.push(guanliTongji_zhu2[key].tsjfpzj)
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
        		            name:'脱贫户数',
        		            type:'bar',
        		            stack: '1',
        		            data:tsjtphs_zhu2,
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
        		        {
        		            name:'扶贫资金（万）',
        		            type:'bar',
        		            stack: '5',
        		            data:tsjfpzj_zhu2,
        		            
        		        },
        	    ]
        	})       	
        },
        error:function(){
    	}
    }); 
tphs.setOption(tphs_option);
tpdb.setOption(tpdb_option);
//窗口变化 重新绘制图形
	$(window).resize(function() {
		tphs.resize();
		tpdb.resize();
		zhu2.resize();
	});
</script>
</html>