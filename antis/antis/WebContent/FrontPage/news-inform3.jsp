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
		<span>关怀空巢老人</span>
		<div>2017-6-29</div>
	</div>
</div>
		
<div class="solution-inform">
	<div class=" solution-inform-content-all">
		<div class="solution-inform-content">
		    <p class="inform-content-p">7月20日，银天使计划走进宁陕县筒车湾镇海棠园村，为当地空巢老人带来棉被、猪仔，总价值6万元。猪仔将寄养在村里养殖户老方的猪厂里，年底再帮老人们把猪卖出去。村里第一书记陈立诚说："老方召集贫困户一起养猪创业，能够真正达到先富带后富的效果，希望这批猪仔可以让贫困老人年底有一个好收入。"</p>
	      <div class="solution-inform-content-img">
	      	<img src="img/tu3"/>
	      	<div class="clear"></div>
	      </div>
	      <p class="solution-inform-content-words">7月18日，我会携手腾讯大秦网来到商州公安分局扶贫点青棉沟，为这里的180户贫困老人带来米、面、油等近4万元的生活基础物资。40名爱心警察及商洛爱心社区志愿者协会爱心社区志愿者参与发放与走访活动，居住较近的老人前往村委会领取物资。发放仪式结束后由民警及爱心志愿者将物资送往老人家中。
	</p>
	
	<p class="solution-inform-content-words">
66岁的王爷爷是村里五保户，无儿无女独自生活。冬天房子阴冷，老人围着床铺搭建了一个小窝棚，床铺上被褥虽然打满补丁却干净整洁。政府在镇上给老人安排了房，可老人舍不得离开，也不愿搬去敬老院。老人身体状况逐渐变差，只能种些蔬菜，加上政府给的补贴，也能维持生计，好在有老人的侄子一直照顾着。</br>
	</p>
	
	 <p class="solution-inform-content-words">我们近期采购了500套温暖包（一件羽绒服、一对护膝、一个护腰、两双棉袜），发往寒冷的陕西。这些温暖包汇聚了大家的爱心，让久居深山的贫困空巢老人在寒冬里感受到了一丝温暖。 82岁的廖奶奶眼睛看不见，我们把温暖包里的羊毛袜和护腰递给奶奶时，奶奶用粗糙的手摸着护腰和袜子说："这是好东西啊"。
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