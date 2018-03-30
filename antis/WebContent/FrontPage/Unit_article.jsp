<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="renderer" content="webkit">
<title>内容详情</title>
<link rel="stylesheet" href="/antis/FrontPage/css/amazeui.flat.min2.css" />
<link rel="stylesheet" href="/antis/FrontPage/css/Unit_article.css">
<link rel="stylesheet" href="/antis/FrontPage/css/Unit_pub.css">
<script type="text/javascript">
  
	 var myName="<%=session.getAttribute("username")%>
	";
</script>
</head>
<body>
	<div class="am-g am-g-fixed blog-g-fixed">
		<div class="am-u-md-8">
			<article class="blog-main">
			<h3 class="am-article-title blog-title">
				<a href="#">${fpx.xxmmc}</a>
			</h3>
			<h4 class="am-article-meta blog-meta">
				<a href="#">${fpx.xvillagename }</a>
			</h4>

			<div class="am-g blog-content">
				<div class="am-u-lg-12">
					<p>
						<img src="${fpx.image }">
	
				    </p>
				</div>
				<div class="am-u-lg-12">${fpx.xjsnrjgm}</div>
			</div>
			</article>
			<hr class="am-article-divider blog-hr">
			<button id="join_active" type="button"
				class="am-btn am-btn-success am-fr" style="margin-bottom: 10px;">我要参与</button>
		</div>

		<div class="am-u-md-4 blog-sidebar">
			<div class="am-panel-group">
				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">关于</div>
				<div class="am-panel-bd">
					<p>这里可以写发起人，对象，时间</p>
				</div>
				</section>
				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">更多推荐</div>
				<ul class="am-list blog-list">
					<li><a href="#">我需要帮助！！！！！</a></li>
					<li><a href="#">我需要帮助！！！！！</a></li>
					<li><a href="#">我需要帮助！！！！！</a></li>
					<li><a href="#">我需要帮助！！！！！</a></li>
					<li><a href="#">我需要帮助！！！！！</a></li>
					<li><a href="#">我需要帮助！！！！！</a></li>
				</ul>
				</section>

				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">最近参与</div>
				<div class="am-panel-bd">
					<ul class="am-avg-sm-4 blog-team">
						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/man-2.png" />
						</li>
						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/woman-2.png" />
						</li>
						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/man-3.png" />
						</li>
						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/woman-3.png" />
						</li>

						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/woman-4.png" />
						</li>

						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/man-4.png" />
						</li>

						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/man-5.png" />
						</li>

						<li><img class="am-thumbnail"
							src="../FrontPage/images/Avatar/woman-5.png" />
						</li>

					</ul>
				</div>
				</section>
			</div>
		</div>
	</div>

	<!--[if lt IE 9]>
  <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
  <script src="js/amazeui.ie8polyfill.min.js"></script>
  <![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="/antis/FrontPage/js/amazeui.min.js"></script>
	<script src="/antis/FrontPage/js/Unit_pub.js"></script>
	<script src="/antis/FrontPage/js/Unit_article.js"></script>
</body>
</html>