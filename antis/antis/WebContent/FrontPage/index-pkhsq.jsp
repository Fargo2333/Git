<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
  
</head>
<script type="text/javascript">
function pkhsq(){
	alert("贫困户申请成功！");
	document.pkhsqform.action="${pageContext.request.contextPath}/jcxx/insertfrontpkh.action";
	document.pkhsqform.submit();
}
</script>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/FrontPage/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/FrontPage/js/amazeui.min.js"></script>
<body class="templatemo-bg-gray">
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
      <li class="hw-menu-active"><a href="index.jsp">首页</a></li>
      <li ><a href="${pageContext.request.contextPath}/FrontPage/solutions.jsp">贫困户绿色通道</a></li>
	   <li><a href="${pageContext.request.contextPath}/FrontPage/news.jsp">扶贫动态 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/service-center.jsp">爱心扶贫乐园 </a></li>
      <li><a href="${pageContext.request.contextPath}/FrontPage/about-us.jsp">关于我们</a></li><c:if test="${sessionScope.username != null}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;">${sessionScope.username }</div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/persons/user_cancellation2.action">退出</a></div></li></c:if><c:if test="${empty sessionScope.username}" ><li><div style="margin-left:20px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/login.jsp">登陆</a></div></li><li><div style="margin-left:2px;color: red;font-family: 微软雅黑;font-size:14px;"><a href="${pageContext.request.contextPath}/FrontPage/register.jsp">注册</a></div></li>  </c:if></li>  
    <li><a style="margin-left: 20px; color: red; font-family: 微软雅黑; font-size: 14px;" href="${pageContext.request.contextPath}/zuozhan_map.jsp">进入后台</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="rollpic">
	 <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{}' >
	 
    </div>
</div>
<br>
	<h1 class="margin-bottom-15">贫困户申请</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" name="pkhsqform" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">户主姓名</label>
			            <input type="text" class="form-control" name="phzxm" id="first_name">		            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			           	<label for="first_name" class="control-label">民族</label>
			            <input type="text" class="form-control" name="pmz" id="first_name">	     		            		            
			          </div>             
			        </div>
			         <div class="form-group">
			         <div class="col-md-6">
			        <label class="control-label">户主身份证</label> 
			        <input type="text" class="form-control" name="psfz" id="last_name">	
			         </div>
			          <div class="col-md-6">
			        <label class="control-label">年收入(万)</label> 
			        <input type="text" class="form-control" name="pgold" id="last_name">	
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">主要致贫原因</label>
			            <select name="pzyzpyy" class="form-control">
					<option>等、靠、要、怨等思想贫困户</option>
					<option>因老</option>
					<option>因残</option>
					<option>因病</option>
					<option>因灾</option>
					<option>缺技术</option>
					<option>缺资金</option>
					<option>缺信息</option>
					<option>其他</option>
					</select>	            		            		            
			        </div>   
			        <div class="col-md-6">
			        <label class="control-label">主要致贫详细原因</label> 
			        <input type="text" class="form-control" name="pzyzpxxyy" id="last_name">
			        </div>	            
			        </div>			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			             <label for="last_name" class="control-label">贫困户属性</label>
			           <select name="ppkhsx" class="form-control">
					<option>一般贫困户</option>
					<option>扶贫低保户</option>
					<option>纯低保户</option>
					<option>五保户</option>
					</select>	            		            		            		            
			          </div>    
			          <div class="col-md-6">	
			        <label class="control-label">联系电话</label> 
			        <input type="text" class="form-control" name="plxdh" id="last_name">	          
			          </div>           
			        </div>
			        <div class="form-group">
			         <div class="col-md-6">
			        <label class="control-label">家庭人口</label> 
			        <input type="text" class="form-control" name="pjtrk" id="last_name">	
			         </div>
			          <div class="col-md-6">
			        <label class="control-label">所在村</label> 
			        <input type="text" class="form-control" name="pvillagename" id="last_name">	
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="button" onclick="pkhsq()" value="申请" class="btn btn-info" style="width:20%;">
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      	<p>This form is provided by <a rel="nofollow" href="http://www.cssmoban.com/page/1">Free HTML5 Templates</a> that can be used for your websites. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
	        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
	        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>