<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>扶贫动态</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/hengwang-1.png" href="${pageContext.request.contextPath}/FrontPage/img/hengwang-1.png">
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
			<span class="toppic-title-span">扶贫动态</span>
			
		</div>
		<div class="right toppic-progress">
			<span><a href="${pageContext.request.contextPath}/FrontPage/index.jsp" class="w-white">首页</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/FrontPage/news.jsp" class="w-white">扶贫动态</a></span>
		</div>
	</div>
</div>


	
<div class="am-container-1 news-content-all">
<div class="left am-u-sm-12 am-u-md-8 am-u-lg-9 ">
	  <ul class="news-ul">
	  	<li class="am-u-sm-12 am-u-md-6 am-u-lg-4 ">
	  		<a href="${pageContext.request.contextPath}/FrontPage/news-inform.jsp">
	  		<div class="news-ul-liall">
	  		  	<img class="news-ul-liimg" src="img/tu1"/>		  	  		  	 
	  		  <div class="inform-list">
		  		  	<div class="inform-list-date"><i class="am-icon-arrow-circle-right"></i>2015-6-11</div>
		  		  	<div class="inform-list-label"><i class="am-icon-arrow-circle-right"></i>壹基金净水计划</div>
		  		  	<div class="inform-list-numb"><i class="am-icon-arrow-circle-right"></i>点击次数：273</div>
	  		  </div>		  
	  		  <span>壹基金净水计划</span>
	  		  <p>2017年7月，月内共发货净水设备35台，向四川石渠县发货水杯1881个。至7月31日，首批13个省15个县的资料，均通过了项目组审核，全部开始或完成了水质初检。有7县已完成水质初检，并签署了执行协议。</p>
	  	    <span class="see-more3">查看更多<i class="am-icon-angle-double-right"></i></span>
	  	  </div>
	  	  </a>
	  	</li>
	  	<li class="am-u-sm-12 am-u-md-6 am-u-lg-4 ">
	  		<a href="${pageContext.request.contextPath}/FrontPage/news-inform2.jsp">
	  		<div class="news-ul-liall">
	  		  	<img class="news-ul-liimg" src="img/tu2"/>		  	  		  	 
	  		  <div class="inform-list">
		  		  	<div class="inform-list-date"><i class="am-icon-arrow-circle-right"></i>2015-6-11</div>
		  		  	<div class="inform-list-label"><i class="am-icon-arrow-circle-right"></i>关怀深山独居老人</div>
		  		  	<div class="inform-list-numb"><i class="am-icon-arrow-circle-right"></i>点击次数：273</div>
	  		  </div>		  
	  		  <span>关怀深山独居老人</span>
	  		  <p>山里老人理发困难，我们为村里的陪伴人员配置了服务工具包，利用空闲时间帮老人补衣服、理发、剪指甲，做一些力所能及的实在事，让他们感受到"身边有人"的温暖和踏实。村里的孩子、路人都开始感受到公益的快乐和温暖。</p>
	  	    <span class="see-more3">查看更多<i class="am-icon-angle-double-right"></i></span>
	  	  </div> 
	  	  </a>
	  	</li>
	  	<li class="am-u-sm-12 am-u-md-6 am-u-lg-4 ">
	  		<a href="${pageContext.request.contextPath}/FrontPage/news-inform3.jsp">
	  		<div class="news-ul-liall">
	  		  	<img class="news-ul-liimg" src="img/tu3"/>		  	  		  	 
	  		  <div class="inform-list">
		  		  	<div class="inform-list-date"><i class="am-icon-arrow-circle-right"></i>2015-6-11</div>
		  		  	<div class="inform-list-label"><i class="am-icon-arrow-circle-right"></i>关怀空巢老人</div>
		  		  	<div class="inform-list-numb"><i class="am-icon-arrow-circle-right"></i>点击次数：273</div>
	  		  </div>		  
	  		  <span>关怀空巢老人</span>
	  		  <p>"空巢老人"，一个不起眼的群体，但或许其中就有你我最亲近的人。病痛的折磨只是他们生活里的插曲，无人问津的寂寞和"被遗弃"的孤独感才是最大的伤害。爱，不等人。</p>
	  	    <a href="${pageContext.request.contextPath}/FrontPage/news-inform3.jsp"><span class="see-more3">查看更多<i class="am-icon-angle-double-right"></i></span></a>
	  	  </div>  
	  	  </a>
	  	</li>
	  	<li class="am-u-sm-12 am-u-md-6 am-u-lg-4 ">
	  		<a href="${pageContext.request.contextPath}/FrontPage/news-inform4.jsp">
	  		<div class="news-ul-liall">
	  		  	<img class="news-ul-liimg" src="img/tu4"/>		  	  		  	 
	  		  <div class="inform-list">
		  		  	<div class="inform-list-date"><i class="am-icon-arrow-circle-right"></i>2015-6-11</div>
		  		  	<div class="inform-list-label"><i class="am-icon-arrow-circle-right"></i>寻光明之爱</div>
		  		  	<div class="inform-list-numb"><i class="am-icon-arrow-circle-right"></i>点击次数：273</div>
	  		  </div>		  
	  		  <span>寻光明之爱</span>
	  		  <p>在中国，有1200万这样的孩子，其中有400多万弱视儿童生活在偏远农村，弱视导致孩子们的生活质量急速下降，甚至失去光明！</p>
	  	    <a href="${pageContext.request.contextPath}/FrontPage/news-inform4.jsp"><span class="see-more3">查看更多<i class="am-icon-angle-double-right"></i></span></a>
	  	  </div> 
	  	  </a>
	  	</li>
	  	<li class="am-u-sm-12 am-u-md-6 am-u-lg-4 ">
	  		<a href="${pageContext.request.contextPath}/FrontPage/news-inform5.jsp">
	  		<div class="news-ul-liall">
	  		  	<img class="news-ul-liimg" src="img/tu5"/>		  	  		  	 
	  		  <div class="inform-list">
		  		  	<div class="inform-list-date"><i class="am-icon-arrow-circle-right"></i>2015-6-11</div>
		  		  	<div class="inform-list-label"><i class="am-icon-arrow-circle-right"></i>心脏检查</div>
		  		  	<div class="inform-list-numb"><i class="am-icon-arrow-circle-right"></i>点击次数：273</div>
	  		  </div>		  
	  		  <span>心脏检查</span>
	  		  <p>先天性心脏病是一种严重影响儿童生长发育并威胁儿童生命健康的疾病，通过彩虹桥九年的先心病救助数据显示，大部分患儿所在地区不具备心脏检查的医疗条件，也未有过系统的儿童先心病筛查活动，加之地域环境恶劣，交通不便，家庭经</p>
	  	   <a href="${pageContext.request.contextPath}/FrontPage/news-inform5.jsp"> <span class="see-more3">查看更多<i class="am-icon-angle-double-right"></i></span></a>
	  	  </div> 
	  	  </a>
	  	</li>
	  	<li class="am-u-sm-12 am-u-md-6 am-u-lg-4 ">
	  		<a href="${pageContext.request.contextPath}/FrontPage/news-inform6.jsp">
	  		<div class="news-ul-liall">
	  		  	<img class="news-ul-liimg" src="img/tu6"/>		  	  		  	 
	  		  <div class="inform-list">
		  		  	<div class="inform-list-date"><i class="am-icon-arrow-circle-right"></i>2015-6-11</div>
		  		  	<div class="inform-list-label"><i class="am-icon-arrow-circle-right"></i>渐冻人</div>
		  		  	<div class="inform-list-numb"><i class="am-icon-arrow-circle-right"></i>点击次数：273</div>
	  		  </div>		  
	  		  <span>渐冻人</span>
	  		  <p>"梦想还是要有的，万一哪天实现了呢"，这句曾经被大家用来调侃的一句话在张先生看来却无可厚非。7岁近视就高达1000度的张先生人生一大梦想就是能够不戴眼镜看清身边人。过了好比"盲人"的日子三十几年，如今在视光眼科医院他终于实现了自己的梦想，清清楚楚的看到了亲人的笑脸。</p>
	  	    <a href="${pageContext.request.contextPath}/FrontPage/news-inform6.jsp"><span class="see-more3">查看更多<i class="am-icon-angle-double-right"></i></span></a>
	  	  </div>
	  	 </a>
	  	</li>
	  	<div class="clear"></div>
		</ul>
		<ul class="am-pagination ">
	  	 <li ><a href="${pageContext.request.contextPath}/FrontPage/#">&laquo;</a></li>
				  <li><a href="${pageContext.request.contextPath}/FrontPage/#">上一页</a></li> 
				  <li><a class="current-page">1</a></li>
                   <li><a href="${pageContext.request.contextPath}/FrontPage/news2.jsp">2</a></li>
				  <li><a href="${pageContext.request.contextPath}/FrontPage/news2.jsp">下一页</a></li>
				   <li ><a href="${pageContext.request.contextPath}/FrontPage/news2.jsp">&raquo;</a></li>
				</ul>	  
</div>	  

<div class="left am-u-sm-12 am-u-md-4 am-u-lg-3">
	
	<section data-am-widget="accordion" class="am-accordion am-accordion-gapped" data-am-accordion='{  }'>
		<div class="hot-title"><i class="am-icon-thumbs-o-up"></i>热门新闻 / Hot 	News</div>
      <dl class="am-accordion-item am-active">
        <dt class="am-accordion-title">
          芭莎慈善夜
        </dt>
        <dd class="am-accordion-bd am-collapse am-in">
          <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
          <div class="am-accordion-content">
            BAZAAR明星慈善夜，创办于2003年非典时期，由于歌手那英的建议，第一笔筹得的善款有168000元。其后发展成为一个固定的慈善项目。
          </div>
        </dd>
      </dl>
      <dl class="am-accordion-item">
        <dt class="am-accordion-title">
          壹基金
        </dt>
        <dd class="am-accordion-bd am-collapse ">
          <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
          <div class="am-accordion-content">
            壹基金是由李连杰于2007年发起成立的公益组织，是国内第一家民间公募基金会。壹基金以"尽我所能，人人公益"为愿景，致力于搭建专业透明的壹基金公益平台，专注于灾害救助、儿童关怀、公益人才培养三大公益领域。
          </div>
        </dd>
      </dl>
      <dl class="am-accordion-item">
        <dt class="am-accordion-title">
          韩红爱心慈善基金会
        </dt>
        <dd class="am-accordion-bd am-collapse ">
          <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
          <div class="am-accordion-content">
             韩红爱心慈善基金会是由著名歌手韩红发起，北京市民政府为业务主管单位的公益慈善组织。
          </div>
        </dd>
      </dl>
       <dl class="am-accordion-item">
        <dt class="am-accordion-title">
          百人援助公益
        </dt>
        <dd class="am-accordion-bd am-collapse ">
          <!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
          <div class="am-accordion-content">
            华佑集团主办了百人援助公益计划，希望能通过此次援助，帮助那些走入误区的青少年、学生，家庭贫困的毒品依赖者。
          </div>
        </dd>
      </dl>
      
  </section>
	
</div>

<div class="clear"></div>
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