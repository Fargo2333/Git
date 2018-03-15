 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>首页</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="${pageContext.request.contextPath}/FrontPage/img/hengwang-1.png" href="${pageContext.request.contextPath}/FrontPage/img/hengwang-1.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/amazeui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/FrontPage/css/style.css"/>
  <script src="${pageContext.request.contextPath}/FrontPage/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/FrontPage/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/FrontPage/js/scroll.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  <img class=" logo" style="width:200px;height:80px;" src="${pageContext.request.contextPath}/FrontPage/img/logoko.png"></img>
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <%-- <li>你好！${sessionScope.userschedule },${sessionScope.username }</li> --%>
      <li class="hw-menu-active"><a href="index.jsp">首页</a></li>
      <li ><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
	   <li><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li>
					<c:if test="${sessionScope.username != null}">
						<li><div
								style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;">${sessionScope.username }</div></li>
						<li><div
								style="margin-left: 2px; color: red; font-family: 微软雅黑; font-size: 14px;">
								<a
									href="${pageContext.request.contextPath}/persons/user_cancellation2.action">退出</a>
							</div></li>
					</c:if>
					<c:if test="${empty sessionScope.username}">
						<li><div
								style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;">
								<a href="${pageContext.request.contextPath}/FrontPage/login.jsp">登陆</a>
							</div></li>
						<li><div
								style="margin-left: 2px; color: red; font-family: 微软雅黑; font-size: 14px;">
								<a
									href="${pageContext.request.contextPath}/FrontPage/register.jsp">注册</a>
							</div></li>
					</c:if>
	   <li><a style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;" href="${pageContext.request.contextPath}/zuozhan_map.jsp">进入后台</a></li>
				</ul>
    </div>

  </div>
  </div>
</header>
<div class="rollpic">
	 <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{}' >
	  <ul class="am-slides">
	      <li><img src="${pageContext.request.contextPath}/FrontPage/img/1.jpg"/></li>
	      <li><img src="${pageContext.request.contextPath}/FrontPage/img/2.jpg"  /></l>  	
	      <li><img src="${pageContext.request.contextPath}/FrontPage/img/4.jpg"/></li>
	  </ul>
    </div>
</div>
<div class="am-container-1">
	<div class="solutions part-all">
		<div class="part-title">
			<a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">
			<i class="am-icon-lightbulb-o part-title-i"></i>
			<span class="part-title-span">贫困户绿色通道</span>
			
			</a>
		</div>
		<ul class="am-g part-content solutions-content">
		  <li class="am-u-sm-6 am-u-md-3 am-u-lg-3">
		  	<i class="am-icon-safari solution-circle"></i>
		  	<span class="solutions-title">扶贫技术申请与认定 </span>
		  	<a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp"><p class="solutions-way"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></p></a>
		  </li>
		  <li class="am-u-sm-6 am-u-md-3 am-u-lg-3">
		  	<i class="am-icon-magic solution-circle"></i>
		  	<span class="solutions-title">贫困子女教育救助</span>
		  	<a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp"><p class="solutions-way"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></p></a>
		  </li>
		  <li class="am-u-sm-6 am-u-md-3 am-u-lg-3">
		  	<i class="am-icon-phone solution-circle"></i>
		  	<span class="solutions-title">贫困户紧急医疗救助</span>
		  	<a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp"><p class="solutions-way"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></p></a>
		  </li>
		  <li class="am-u-sm-6 am-u-md-3 am-u-lg-3">
		  	<i class="am-icon-hacker-news solution-circle"></i>
		  	<span class="solutions-title">扶贫项目（就业）展示与申请</span>
		  	<a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp"><p class="solutions-way"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></p></a>
		  </li>
		  
		</ul>
		
	</div>
	</div>
    
    
    <div class=" news-all">
	<div class="am-container-1">
<div class="news part-all">
		<div class="part-title">
			<a >
			<i class="am-icon-newspaper-o part-title-i"></i>
			<span class="part-title-span">贫困申请与帮扶</span>
			
			</a>
		</div>
		<div class="news-content ">
				<ul class="news-content-ul">
					<li class="am-u-sm-12 am-u-md-6 am-u-lg-6">
						<a href="${pageContext.request.contextPath}/FrontPage/index-pkhsq.jsp">
						    <div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
						    	<div class="news-img">
						    	<img src="${pageContext.request.contextPath}/FrontPage/img/bf.gif" height="200"></img>
						    	</div>
						    </div>
						    <div  class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
										<span class="news-right-title">贫困申请</span>
										
										<p class="news-right-words">贫困并不能成为我们的绊脚石，心中有梦想就要一如既往，不能遇到困难说放就放，千锤百炼才能磨炼出好钢，饱经风霜才能更强。</p><br/>
										<a href="${pageContext.request.contextPath}/FrontPage/index-pkhsq.jsp"><span class="see-more2">我要申请<i class="am-icon-angle-double-right"></i></span></a>
								 </div>	
						<div class="clear"></div>
						</a>
					</li>
					<li class="am-u-sm-12 am-u-md-6 am-u-lg-6">
						<a  href="${pageContext.request.contextPath}/FrontPage/index-bfsq.jsp">
						    <div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
						    	<div class="news-img">
						    	<img src="${pageContext.request.contextPath}/FrontPage/img/bf2.jpg" height="200"></img>
						    	</div>
						    </div>
						    <div  class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
										<span class="news-right-title">贫困救助</span>
										
										<p class="news-right-words">人们常说，点滴爱心可以汇成江河，用爱心引发爱心、用爱心传递爱心，点燃我们的生活激情，点燃我们对生活的热爱，只要人人献出一点爱，这个世界会变成美好的人间。</p><br/>
										<a href="${pageContext.request.contextPath}/FrontPage/index-bfsq.jsp"><span class="see-more2">我要帮扶<i class="am-icon-angle-double-right"></i></span></a>
								 </div>	
						<div class="clear"></div>
						</a>
					</li>		
					<div class="clear"></div>
				</ul>
			<div class="clear"></div>
		</div>
	</div>
</div>
</div>
    
	<div class="gray-li">
	<div class="customer-case part-all ">
		<div class="part-title">
			<a>
			<i class=" am-icon-briefcase part-title-i"></i>
			<span class="part-title-span">扶贫项目</span>
		
			</a>
		</div>
	
	
		 <ul data-am-widget="gallery" class=" am-avg-sm-1
  am-avg-md-4 am-avg-lg-4 am-gallery-bordered customer-case-content" >
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu1"  />
                
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">壹基金净水计划</h3>
              <p>2015-06-11</p>
              <a  href="${pageContext.request.contextPath}/FrontPage/news-inform.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu2"  />              
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">关怀深山独居老人</h3>
              <p>2015-06-11</p>
              <a href="${pageContext.request.contextPath}/FrontPage/news-inform2.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu3" />             
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">关怀空巢老人</h3>
              <p>2015-06-11</p>
              <a href="${pageContext.request.contextPath}/FrontPage/news-inform3.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu4" />             
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">寻光明之爱</h3>
              <p>2015-06-11</p>
              <a href="${pageContext.request.contextPath}/FrontPage/news-inform4.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu5" />              
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">心脏检查</h3>
              <p>2015-06-11</p>
              <a href="${pageContext.request.contextPath}/FrontPage/news-inform5.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu6"  />                
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">渐冻人</h3>
              <p>2015-06-11</p>
              <a href="${pageContext.request.contextPath}/FrontPage/news-inform6.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu7"  />                
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">爱心包裹</h3>
              <p>2015-06-11</p>
              <a href="${pageContext.request.contextPath}/FrontPage/news-inform7.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      <li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
        <div class="am-gallery-item case-img1">
            <a href="#" >
              <img src="${pageContext.request.contextPath}/FrontPage/img/tu8"  />               
            </a>
        </div>
        <div class="case-li-mengban">
        	<div class=" case-word">
              <h3 class="am-gallery-title">紧急救助</h3>
              <p>2015-06-11</p>
              <a href="${pageContext.request.contextPath}/FrontPage/news-inform8.jsp"><span><i class="am-icon-eye"></i>查看更多</span></a>
           </div>
        </div>
      </li>
      
  </ul>
		<div class="lan-bott">
			<div class="left"><span>全方位解决方案,为您轻松解决不同问题</span>
				
			</div>
			<div class="right">
				<a href="${pageContext.request.contextPath}/FrontPage/news.jsp">
					<span class="see-more">查看更多<i class="am-icon-angle-double-right"></i></span>
				</a>
			</div>
			<div class="clear"></div>
		</div>
		<div class="part-title">
		    	
		</div>
		</div>
</div>	
		
		
<div class=" news-all">
	<div class="am-container-1">
<div class="news part-all">
		<div class="part-title">
			<a >
			<i class="am-icon-newspaper-o part-title-i"></i>
			<span class="part-title-span">新闻动态</span>
			
			</a>
		</div>
		<div class="news-content ">
				<ul class="news-content-ul">
					<li class="am-u-sm-12 am-u-md-6 am-u-lg-6">
						<a href="${pageContext.request.contextPath}/FrontPage/index-inform.jsp">
						    <div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
						    	<div class="news-img">
						    	<img src="${pageContext.request.contextPath}/FrontPage/img/bs1" height="200"></img>
						    	</div>
						    </div>
						    <div  class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
										<span class="news-right-title">芭莎慈善夜</span>
										<p class="news-right-time">2015-06-11</p>
										<p class="news-right-words">BAZAAR明星慈善夜，创办于2003年非典时期，由于歌手那英的建议，第一笔筹得的善款有168000元。其后发展成为与网络之...</p>
										<a href="${pageContext.request.contextPath}/FrontPage/index-inform.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
								 </div>	
						<div class="clear"></div>
						</a>
					</li>
					<li class="am-u-sm-12 am-u-md-6 am-u-lg-6">
						<a  href="${pageContext.request.contextPath}/FrontPage/index-inform2.jsp">
						    <div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
						    	<div class="news-img">
						    	<img src="${pageContext.request.contextPath}/FrontPage/img/yi1" height="200"></img>
						    	</div>
						    </div>
						    <div  class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
										<span class="news-right-title">壹基金</span>
										<p class="news-right-time">2015-06-11</p>
										<p class="news-right-words">壹基金是由李连杰于2007年发起成立的公益组织，是国内第一家民间公募基金会。壹基金以"尽我所能，人人公益"为愿景，致力于搭建专业透明的壹基金公益平台，专注于灾害救助...</p>
										<a href="${pageContext.request.contextPath}/FrontPage/index-inform2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
								 </div>	
						<div class="clear"></div>
						</a>
					</li>		
					<div class="clear"></div>
				</ul>
			<div class="clear"></div>
		</div>
	</div>
</div>
</div>
<!--<div class="three-reason">
			<div class="part-title three-reason-title">
			<span class="part-title-span w-white">选择恒望的三大理由</span>
			<p class="w-white">Why Choose Hengwang</p>
			
		</div>
			<ul class="am-g part-content three-reason-content">
			  <li class="am-u-sm-4 am-u-md-4 am-u-lg-4">
			  	<div class="three-reason-img1 "></div>
			  	<p class="reason-title w-white">规模优势<br/>Scale advantage</p>
			  </li>
			  <li class="am-u-sm-4 am-u-md-4 am-u-lg-4">
			  	<div class="three-reason-img2 "></div>
			  	<p class="reason-title w-white ">领先技术<br/>Leading technology</p>
			  </li>
			  <li class="am-u-sm-4 am-u-md-4 am-u-lg-4">
			  	<div class="three-reason-img3 "></div>
			  	<p class="reason-title w-white">整合能力<br/>Integration capability</p>
			  </li>
		</ul>
		</div>-->
<div class="part-all gray-li">
<div class="customer  am-container-1">
		
		
		
		<!--<ul class="customer-content">
			<li class="am-u-sm-6 am-u-md-4 am-u-lg-2"><div><img src="img/ptn4.png"/></div></li>
			<li class="am-u-sm-6 am-u-md-4 am-u-lg-2"><div><img src="img/ptn5.png"/></div></li>
			<li class="am-u-sm-6 am-u-md-4 am-u-lg-2"><div><img src="img/ptn6.png"/></div></li>
			<li class="am-u-sm-6 am-u-md-4 am-u-lg-2"><div><img src="img/ptn7.png"/></div></li>
			<li class="am-u-sm-6 am-u-md-4 am-u-lg-2"><div><img src="img/ptn8.png"/></div></li>
			<li class="am-u-sm-6 am-u-md-4 am-u-lg-2"><div><img src="img/ptn4.png"/></div></li>
			<div class="clear"></div>
		</ul>-->
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

</html>