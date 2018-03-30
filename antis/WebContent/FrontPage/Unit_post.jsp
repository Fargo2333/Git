<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="renderer" content="webkit">
<title>困难学生绿色通道</title>
<link rel="stylesheet" href="/antis/FrontPage/css/amazeui.flat.min.css" />
<link rel="stylesheet" href="/antis/FrontPage/css/Unit_post.css">
<link rel="stylesheet" href="/antis/FrontPage/css/Unit_pub.css">
<link rel="stylesheet" href="/antis/FrontPage/css/page_style.css">
<script type="text/javascript">
  
	 var myName="<%=session.getAttribute("username")%>
	";
	var timestamp = new Date().getTime() + "";
	var t1 = timestamp.substr(0, 1);
	var t2 = timestamp.substr(-1);
	var result = parseInt(t1) + parseInt(t2);
	var html = t2 + "+" + t1 + "=?";

	function getname() {
		var html = $(".note-editable").html();
		$("#mnr").val(html);
		var c = $("#codes").val();
		if (c == result)
			$("#forms").submit();
		else {
			alert("验证码错误");
		}

	}
	var name = "${name}"
</script>
</head>
<body>
	<div class="am-container" style="margin-top: 80px">
		<ol class="am-breadcrumb">
			<li><a href="#">困难学生绿色通道</a></li>
			<li><a id="breadcrumb_title" href="#"></a></li>
		</ol>
		<form action="/antis/mb/addmbfont.action" method="post" id="forms">
			<div class="am-input-group am-input-group-primary"
				style="margin-bottom: 5px">
				<span class="am-input-group-label"> <i
					class="am-icon-pencil am-icon-fw"></i>标题
				</span> <input type="text" name="mbt" class="am-form-field"
					placeholder="请输入标题">
			</div>
			<!-- 富文本 -->
			<div id="summernote"></div>
			<input name="mnr" id="mnr" type="hidden" />
			<!-- 按钮 -->
			<div class="am-input-group am-input-group-primary am-u-sm-10"
				style="margin-top: 5px">
				<span class="am-input-group-btn">
					<button class="am-btn am-btn-primary" type="button">验证码</button>
				</span> <input type="text" class="am-form-field" id="codes"
					style="width: 100px"> <label class="idfycode" id="code">1+1=?</label>
			</div>
		</form>
		<div class="am-input-group am-input-group-primary am-u-sm-2">
			<button class="am-btn am-topbar-btn am-btn-sm am-btn-success am-fr"
				onclick="getname();">立即发布</button>
		</div>

	</div>
	<div class="am-container" style="padding: 0">
		<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
			<h2 class="am-titlebar-title ">帮助社区</h2>
		</div>
		<section data-am-widget="accordion"
			class="am-accordion am-accordion-gapped" data-am-accordion='{  }'>

		<c:forEach items="${MbList}" var="item">
			<dl class="am-accordion-item">
				<!-- 这里是标题 -->

				<dt class="am-accordion-title">${item. mbt}</dt>
				<dd class="am-accordion-bd am-collapse">
					<!-- 规避 Collapase 处理有 padding 的折叠内容计算计算有误问题， 加一个容器 -->
					<div class="am-accordion-content">
						<!-- 这里是发布的内容 -->
						<div class="am-panel am-panel-default" style="overflow: hidden;">
							<div class="am-panel-bd">
								<span style="display: block"> ${item. mnr} </span> <a
									class="am-btn am-btn-link am-fr reply_btn" value="${item.mid}">回复</a>
							</div>
						</div>
						<!-- 这里是评论 -->
						<c:forEach items="${item.list }" var="msg">
							<ul class="am-comments-list am-comments-list-flip">
								<li class="am-comment am-comment-success"><a href="#">
										<img
										src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2576860909,4181919339&fm=111&gp=0.jpg"
										alt="" class="am-comment-avatar" width="48" height="48" />
								</a>
									<div class="am-comment-main">
										<header class="am-comment-hd"> <!--    <h3 class="am-comment-title">评论标题</h3> -->
										<div class="am-comment-meta">
											<a class="am-comment-author">某人</a> 评论于
											<time> <fmt:formatDate value="${msg.createdate}"
												pattern="yyyy-MM-dd HH:MM:ss" /> </time>
										</div>
										</header>
										<div class="am-comment-bd">${msg.mnr}</div>
									</div></li>




							</ul>
						</c:forEach>
					</div>
				</dd>
			</dl>
		</c:forEach> </section>
		<!-- 分页 -->
		<ul class="page_div">
		</ul>
	</div>
	<!--[if lt IE 9]>
  <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
  <script src="js/amazeui.ie8polyfill.min.js"></script>
  <![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="/antis/FrontPage/js/paging.js"></script>
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css"
		rel="stylesheet">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
	<Script src="/antis/FrontPage/js/summernote-zh-CN.js"></Script>
	<!--<![endif]-->
	<script src="/antis/FrontPage/js/amazeui.min.js"></script>
	<script src="/antis/FrontPage/js/Unit_pub.js"></script>
	<script src="/antis/FrontPage/js/Unit_post.js"></script>
	<script>
		$("#code").html(html);
	</script>
</body>
</html>