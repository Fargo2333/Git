<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>扶贫详情</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/HENGWANG.png" href="${pageContext.request.contextPath}/FrontPage/img/HENGWANG.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/amazeui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/style.css"/>
</head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  <img class=" logo" style="width:200px;height:80px;" src="img/logoko.png"></img>
		   
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li><li><a href="${pageContext.request.contextPath}/FrontPage/index.jsp">首页</a></li>
     <li><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
      <li class="hw-menu-active"><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li><c:if test="${sessionScope.username != null}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;">${sessionScope.username }</div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/persons/user_cancellation2.action">退出</a></div></li></c:if><c:if test="${empty sessionScope.username}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/login.jsp">登陆</a></div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/register.jsp">注册</a></div></li>  </c:if></li>
     <li><a style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;" href="${pageContext.request.contextPath}/zuozhan_map.jsp">进入后台</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="toppic">
	 <div class="am-container-1">
	 <div class="toppic-title left">
			<i class="am-icon-newspaper-o toppic-title-i"></i>
			<span class="toppic-title-span">扶贫详情</span>
			
		</div>
		<div class="right toppic-progress">
			<span><a href="${pageContext.request.contextPath}/FrontPage/news.jsp" class="w-white">扶贫动态</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/FrontPage/news-inform.jsp" class="w-white">扶贫详情</a></span>
		</div>
	</div>
</div>

<div class="am-container-1 margin-t30">
	<div class="words-title ">
		<span>渐冻人</span>
		<div>2017-6-29</div>
	</div>
</div>
		
<div class="solution-inform">
	<div class=" solution-inform-content-all">
		<div class="solution-inform-content">
		    <p class="inform-content-p"> 渐冻人症"是一组运动神经元疾病的俗称。疾病持续发展，最终等待他们的是肌肉萎缩、关节肢体变形，压疮，肺部感染、呼吸衰竭。他们清楚的认识自己的情况，只能眼看着自己逐渐的死亡。近4年来，在陕西省渐冻人关爱互助协会登记的患者已经超过300例。对于渐冻人没有好的办法治疗，且医疗、营养费用高昂，所以渐冻人患者一旦确认，医院会建议患者回家休养。患者回家后缺乏专业的医疗指导，最终眼看着自己生命力量一点点消失，却无能为力。</p>
	      <div class="solution-inform-content-img">
	      	<img src="img/tu6"/>
	      	<div class="clear"></div>
	      </div>
	      <p class="solution-inform-content-words">渐冻人的身体虽然逐渐冰封，但他们怀着积极的心态去面对多舛的命运。家境一贫如洗的汉中市南郑县汉山镇北大街老王目前翻身困难，夜间休息很差，说话费力，进食少。忍受双腿剧痛，每天仍坚持乐观的坚持锻炼，因为她有一个温暖的家庭，她说："我爱我的丈夫和女儿，我不想增加他们的负担"，顾全大局的她，心系温暖的家……。渐冻人老王说："我们需要的不是怜悯，而是社会的理解和关怀。"
	</p>
	
	<p class="solution-inform-content-words">2017年6月6日陕西省渐冻人关爱互助协会听说老王的情况需要医疗辅具帮扶，协会派医疗、康复专家及护理等志愿者立即前往汉中市中心医院神经科，在医院静脉应用依达拉奉今天刚满14天，准备出院，秘书长在病房详细了解了患者的病情变化，对患者的当前治疗进行了科学的指导和建议，解答了患者用药的疑惑。西安中医脑病医院康复专家任晓惠现场就患者出院回家后的科学康复进行了演示及指导，志愿者西安中医脑病医院医院脑病4科一病区护师张会会就患者的家庭起居饮食进行了指导。协会根据患者病情发展需要结合申请，为患者捐赠了脉搏血氧饱和度检测仪，营养粉纽健整全6袋，捐赠了气垫床，护师张会会为患者现场进行气垫床使用及注意事项的指导和交待。协会常务理事、省五四青年奖获得者、西安中医脑病医院副院长卓坤利为患者进行了心理辅导，鼓励患者坚持抗冻的信心。老李、爱人老王及其子女对协会的不远千里送来的温暖深表感谢！ </br>
	</p>
	
	
	
	 
  
  
		</div>
	</div>
</div>
  
   
		


<footer class="footer ">
	
<ul>
        
        <li class="am-u-lg-4 am-u-md-4 am-u-sm-12 part-5-li2">
            <div class="part-5-title"></div>
            <div class="part-5-words2">
               
                
                
                
                
            </div>
        </li>
        <li class="am-u-lg-4 am-u-md-4 am-u-sm-12 ">
            <div class="part-5-title">相关链接</div>
            <div class="part-5-words2">
                <ul class="part-5-words2-ul">
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态</a></li>
                    
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园</a></li>
                    <li class="am-u-lg-6 am-u-md-6 am-u-sm-6"><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
        </li>
        <div class="clear"></div>
    </ul>
   
</footer>


</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->
<script src="js/amazeui.min.js"></script>

</html>