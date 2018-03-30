<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title>贫困学生申请</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/datepicker3.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>

<link href="${pageContext.request.contextPath}/FrontPage/css/templatemo_style.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/FrontPage/css/bootstrap.min.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/echart/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/echart/ningbo2.js"></script>
<!-- Echarts 主题下载 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/echart/macarons.js"></script>
    
    <link rel="stylesheet" href="css/amazeui.flat.min.css" />
    <link rel="stylesheet" href="css/Unit_show.css">
    <link rel="stylesheet" href="css/Unit_pub.css">
    <link rel="stylesheet" href="css/page_style.css">
</head>
<script type="text/javascript">
function pkhsq(){
	alert("贫困户申请成功！");
	document.pkhsqform.action="${pageContext.request.contextPath}/jcxx/insertfrontpkh.action";
	document.pkhsqform.submit();
}

</script>
<script type="text/javascript">

var myName="<%=session.getAttribute("username")%>"; 
</script>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/FrontPage/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/FrontPage/js/amazeui.min.js"></script>
<body>

    



<br>
	<h1 class="margin-bottom-15">贫困学生申请</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" name="pkhsqform" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">姓名</label>
			            <input type="text" class="form-control" name="pxm" id="first_name">		            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			           	<label for="first_name" class="control-label">民族</label>
			            <input type="text" class="form-control" name="pmz" id="first_name">	     		            		            
			          </div>             
			        </div>
			         <div class="form-group">
			         <div class="col-md-6">
			        <label class="control-label">身份证</label> 
			        <input type="text" class="form-control" name="psfz" id="last_name">	
			         </div>
			          <div class="col-md-6">
			        <label class="control-label">家庭年收入(万)</label> 
			        <input type="text" class="form-control" name="pgold" id="last_name">	
			          </div>
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
			        <label class="control-label">家庭地址</label> 
			        <input type="text" class="form-control" name="pjtzz" id="last_name">	
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
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
    
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