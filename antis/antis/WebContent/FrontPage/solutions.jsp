<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>贫困户绿色通道</title>
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
      <li class="hw-menu-active"><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
            <li><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
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
			<i class="am-icon-lightbulb-o toppic-title-i"></i>
			<span class="toppic-title-span">贫困户绿色通道</span>
			
		</div>
		<div class="right toppic-progress">
			<span><a href="${pageContext.request.contextPath}/FrontPage/index.jsp" class="w-white">首页</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp" class="w-white">贫困户绿色通道</a></span>
		</div>
	</div>
</div>

		

  
   <div data-am-widget="tabs"class="am-tabs am-tabs-d2 ">

      <ul class="am-tabs-nav am-cf solutions-tabs-ul ">
         <li class="am-active solutions-tabs-ul-li1"><a href="${pageContext.request.contextPath}/FrontPage/[data-tab-panel-0]" ><i class=" am-icon-desktop"></i><span>贫困户申请与认定</span></a></li>
          <li class="solutions-tabs-ul-li2"><a href="${pageContext.request.contextPath}/FrontPage/[data-tab-panel-1]"><i class=" am-icon-mobile-phone mobile-phone"></i><span>贫困子女教育救助</span></a></li>
          <li class="solutions-tabs-ul-li3"><a href="${pageContext.request.contextPath}/FrontPage/[data-tab-panel-2]" ><i class=" am-icon-desktop"></i><span>贫困户紧急医疗救助</span></a></li>
          <li class="solutions-tabs-ul-li4"><a href="${pageContext.request.contextPath}/FrontPage/[data-tab-panel-3]"><i class=" am-icon-mobile-phone mobile-phone"></i><span>扶贫项目展示与申请</span></a></li>
          <li class="solutions-tabs-ul-li5"><a href="${pageContext.request.contextPath}/FrontPage/[data-tab-panel-4]" ><i class=" am-icon-desktop"></i><span>扶贫创业资金申请 </span></a></li>
          <li class="solutions-tabs-ul-li6"><a href="${pageContext.request.contextPath}/FrontPage/[data-tab-panel-5]"><i class=" am-icon-mobile-phone mobile-phone"></i><span>技能培训展示与申请</span></a></li>
      </ul>

      <div class="am-tabs-bd solutions-tabs-content ">
          <div data-tab-panel-0 class="am-tab-panel am-active">
          	 <ul class="am-container-1 solutions-content-ul">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform1-1.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk1-1.jpg"/>
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>江西袁州：以“扶贫行动日”为契机，持续推进就业扶贫 </h5>
            			<p>为贯彻落实《江西省人力资源和社会保障厅转发人力资源社会保障部办公厅关于开展“就业扶贫行动日”活动的通知》精神，江西省宜春市袁州区就业局积极营造人人关心扶贫、人人支持扶贫、人人参与扶贫的浓厚社会氛围，以“就业扶贫行动日”为契机，持续发力多措并举，进一步推进就业扶贫工作的大力开展。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform1-1.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform1-2.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk1-2.jpg"/>
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>教育部办公厅关于印发《职业教育东西协作行动计划滇西实施方案（2017-2020年）》通知</h5>
            			<p>教育部办公厅关于印发《职业教育东西协作行动计划滇西实施方案》，发挥职业教育在脱贫攻坚中的重要作用，完善滇西职业教育东西协作内容、模式和机制，加快落实滇西扶贫工作的总体目标，在教育部滇西扶贫总队前期调研、协商和论证的基础上，特制定本实施方案。（2017-2020年）》的通知</p>
                         <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform1-2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            
          </div>
          <div data-tab-panel-1 class="am-tab-panel ">
             <ul class="am-container-1 solutions-content-ul">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform2-1.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk2-1.jpg"/>
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>孩子才11岁却已经学会了坚强</h5>
            			<p>不到两岁便遭遇父亲去世、母亲失踪，11岁的哈尔滨少年张誉潇从小就肩负起照顾瘫痪奶奶和年迈爷爷的担子。因家庭困难，他靠捡瓶子换钱贴补家用，捡别人扔掉的旧书擦掉答案重新做。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform2-1.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform2-2.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk2-2.jpg"/>
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>带著母亲上大学</h5>
            			<p>赵金凤，来自河南省永城市条河乡鱼山村，今年22岁，就读于南昌理工学院。15岁时父亲因病去世，留下她和没有劳动能力的母亲。虽然一路波折不断，但在伯父及亲友的帮助下，完成高中学业，考入大学。</p>
                         <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform2-2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            	
            	
            </ul>
          </div>
          <div data-tab-panel-2 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform3-1.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk3-1.jpg"/>
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>紧急救助</h5>
            			<p>919大病救助工程运行半年以来，我们接到了1000余例大病患者的求助电话，有一天办公室突然到访一位年轻人，带着一沓病例，还没等坐稳，他就急迫的说救救我的妻子吧，他是一名普通的外卖小哥，每天窜梭于大街小巷，他和妻子新婚不久，妻子已经怀孕6个月。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform3-1.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform3-2.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk3-2.jpg"/>
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>以爱之名 重见光明</h5>
            			<p>"梦想还是要有的，万一哪天实现了呢"，这句曾经被大家用来调侃的一句话在张先生看来却无可厚非。7岁近视就高达1000度的张先生人生一大梦想就是能够不戴眼镜看清身边人。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform3-2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            </ul>
          </div>
          <div data-tab-panel-3 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform4-1.jsp">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk4-1.jpg" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>天行动派</h5>
            			<p>北京2017年9月15日电 /美通社/ -- 2017年乐天行动派年度公益盛典今天在北京大学百年纪念讲堂成功举行。来自联合国、商界、教育界、科技界、演艺界等众多公益先锋共聚一堂，探讨如何通过跨界合作共同推动公益事业的发展。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform4-1.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</li></a>
            	
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform4-2.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk4-2.jpg" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>未来工程师计划</h5>
            			<p>曲木伍且（化名），一个帅气却又腼腆的大男孩，今年18岁，在西昌市交通学校就读汽修专业。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform4-2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            </ul>
          </div>
          
          <div data-tab-panel-4 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform5-1.jsp">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk5-1.jpg" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>国务院办公厅关于支持贫困县开展统筹整合使用财政涉农资金试点的意见</h5>
            			<p>各省（区、市）在连片特困地区县和国家扶贫开发工作重点县范围内，优先选择领导班子强、工作基础好、脱贫攻坚任务重的贫困县开展试点，试点贫困县数量不少于贫困县总数的三分之一，具备条件的可扩大试点范围。2017年，推广到全部贫困县。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform5-1.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</li></a>
            	
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform5-2.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk5-2.jpg" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>打好脱贫攻坚战 从“要到钱”到“花好钱”</h5>
            			<p>今年4月，国务院办公厅印发了《关于支持贫困县开展统筹整合使用财政涉农资金试点的意见》，明确优化财政涉农资金供给机制，保障贫困县集中资源打赢脱贫攻坚战。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform5-2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            </ul>
          </div>
          
          <div data-tab-panel-5 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform6-1.jsp">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk6-1.jpeg" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>中华儿慈会基金捐赠贫困儿童200闲置玩具</h5>
            			<p>城里的孩子从小到大，总会有很多玩具。而在同一片蓝天下的贫困山区留守儿童，却很少能享受到这种快乐，对他们来说，拥有玩具是一个奢望。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform6-1.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</li></a>
            	
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="${pageContext.request.contextPath}/FrontPage/solutions-inform6-2.jsp">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="img/pk6-2.jpg" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>"长颈鹿行动"</h5>
            			<p>近年来，中国内地大城市的儿童青少年超重和肥胖的发生率呈快速上升趋势，而体质却呈下降趋势。根据世界肥胖联合会2016年的最新评估，如果缺少有效的政策干预，到2025年，全球5至17岁的青少年中将有2.68亿人体重超标。肥胖已经成为了一个全球性问题。读汽修专业。</p>
                        <a href="${pageContext.request.contextPath}/FrontPage/solutions-inform6-2.jsp"><span class="see-more2">查看更多<i class="am-icon-angle-double-right"></i></span></a>
            		</div>
            		</a>
            	</li>
            </ul>
          </div>
          
          
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