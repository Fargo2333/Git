<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title>帮扶效果展示</title>
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
    
    <link rel="stylesheet" href="css/amazeui.flat.min.css" />
    <link rel="stylesheet" href="css/Unit_show.css">
    <link rel="stylesheet" href="css/Unit_pub.css">
    <link rel="stylesheet" href="css/page_style.css">
      <script type="text/javascript">
  
	 var myName="<%=session.getAttribute("username")%>"; 
  </script>
</head>
<body>
<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default tabs_top">
        <h2 class="am-titlebar-title ">
            帮扶效果展示
        </h2>
    </div>
    
    <div class="am-container-1">
	<div class="container" >
				
		    <div class="row">
				<div class="col-md-6" id="echars_tphs" style="height: 300px;margin-top:25px;"></div>
				<br>
				<div style="font-size:20px;font-family: 微软雅黑;color: #17bbff;"><center>2016年脱贫户数与未脱贫户数统计</center></div>
				<div class="col-md-6" id="echars_tpdb" style="height: 300px;"></div>
			</div>
			<div class="row">
			<div class="col-md-4" ></div><br>
			<div style="font-size:20px;font-family: 微软雅黑;color: #17bbff;"><center>各帮扶人年度绩效考核</center></div>
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
	       /*  {
	            name:'扶贫资金（万）',
	            type:'bar',
	            stack: '5',
	            data:[862, 1018, 964, 1026, 1679, 1600, 1570],
	            
	        }, */
	        
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
        		        /* {
        		            name:'扶贫资金（万）',
        		            type:'bar',
        		            stack: '5',
        		            data:tsjfpzj_zhu2,
        		            
        		        }, */
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
    
    <!-- 分页 -->
    
    <!--[if lt IE 9]>
  <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
  <script src="js/amazeui.ie8polyfill.min.js"></script>
  <![endif]-->

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="js/paging.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/Unit_pub.js"></script>
    <script src="js/Unit_show.js"></script>
</body>
</html>