<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=basePath%>js/three.min.js"></script>

<title>精准扶贫管理系统</title>

<style type="text/css">
.error {
	color: red
}
</style>

</head>
<body>


<script type="text/javascript">

var container;
var camera, scene, projector, renderer;

var PI2 = Math.PI * 2;

var programFill = function ( context ) {

	context.beginPath();
	context.arc( 0, 0, 1, 0, PI2, true );
	context.closePath();
	context.fill();

}

var programStroke = function ( context ) {

	context.lineWidth = 0.05;
	context.beginPath();
	context.arc( 0, 0, 1, 0, PI2, true );
	context.closePath();
	context.stroke();

}

var mouse = { x: 0, y: 0 }, INTERSECTED;

init();
animate();

function init() {

	container = document.createElement( 'div' );
	container.id = 'bgc';
	container.style.position = 'relative';
	container.style.zIndex = '0';
	document.body.appendChild( container );

	camera = new THREE.PerspectiveCamera( 70, window.innerWidth / window.innerHeight, 1, 10000 );
	camera.position.set( 0, 300, 500 );

	scene = new THREE.Scene();

	for ( var i = 0; i < 100; i ++ ) {

		var particle = new THREE.Particle( new THREE.ParticleCanvasMaterial( { color: Math.random() * 0x808080 + 0x808080, program: programStroke } ) );
		particle.position.x = Math.random() * 800 - 400;
		particle.position.y = Math.random() * 800 - 400;
		particle.position.z = Math.random() * 800 - 400;
		particle.scale.x = particle.scale.y = Math.random() * 10 + 10;
		scene.add( particle );

	}

	projector = new THREE.Projector();

	renderer = new THREE.CanvasRenderer();
	renderer.setSize( window.innerWidth, window.innerHeight );

	container.appendChild( renderer.domElement );



	document.addEventListener( 'mousemove', onDocumentMouseMove, false );

	//

	window.addEventListener( 'resize', onWindowResize, false );

}

function onWindowResize() {

	camera.aspect = window.innerWidth / window.innerHeight;
	camera.updateProjectionMatrix();

	renderer.setSize( window.innerWidth, window.innerHeight );

}

function onDocumentMouseMove( event ) {

	event.preventDefault();

	mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;

}

//

function animate() {

	requestAnimationFrame( animate );

	render();

}

var radius = 600;
var theta = 0;

function render() {

	// rotate camera

	theta += 0.2;

	camera.position.x = radius * Math.sin( theta * Math.PI / 360 );
	camera.position.y = radius * Math.sin( theta * Math.PI / 360 );
	camera.position.z = radius * Math.cos( theta * Math.PI / 360 );
	camera.lookAt( scene.position );

	// find intersections

	camera.updateMatrixWorld();

	var vector = new THREE.Vector3( mouse.x, mouse.y, 0.5 );
	projector.unprojectVector( vector, camera );

	var ray = new THREE.Ray( camera.position, vector.subSelf( camera.position ).normalize() );

	var intersects = ray.intersectObjects( scene.children );

	if ( intersects.length > 0 ) {

		if ( INTERSECTED != intersects[ 0 ].object ) {

			if ( INTERSECTED ) INTERSECTED.material.program = programStroke;

			INTERSECTED = intersects[ 0 ].object;
			INTERSECTED.material.program = programFill;

		}

	} else {

		if ( INTERSECTED ) INTERSECTED.material.program = programStroke;

		INTERSECTED = null;

	}

	renderer.render( scene, camera );

}

</script>
	<h3>建美丽乡村，抓精准扶贫 </h3>
     <div class="LoR">
	  
	 <div id="login">
	   
	   <h2><span></span>精准扶贫管理系统</h2>
	 <fieldset>
	 <form action="${pageContext.request.contextPath}/persons/register.action" method="post" id="regiestForm">
				<p><label for="email">用户名</label></p>
				<p><input id="username" type="text" name="username" class="inputsytle" ></p> 

				<p><label for="password" >密码</label></p>
				<p><input id="userpassword" type="password" name="userpassword" class="inputsytle"></p>
				
				<p><label for="password" >确认密码</label></p>
				<p><input id="userpassword2" type="password" name="userpassword2" class="inputsytle"></p>
				<p><label for="email">用户类型</label><select style="margin-left:40px;" name="userschedule">
					<option>普通用户</option>
					<option>管理员</option>
					</select></p> 
			    <p ><input class="btn" type="submit" value="注册" style="margin-top:50px"></p>
			   
               
               </form>
				   </fieldset>
			</div>
                   
       </div>
			

</body>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- jquery 数据校验 -->
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>

<script type="text/javascript">
	$(function() {
		$("#regiestForm").validate({
			rules : {
				username : {
					required : true,
					minlength : 3
				},
				userpassword : {
					required : true,
					minlength : 4
				},
				userpassword2 : {
					required : true,
					minlength : 4,
					equalTo : "#userpassword"
				},
			},
			messages : {
				username : {
					required : "请输入用户名",
					minlength : "用户名必需由3个字母或者数字组成"
				},
				userpassword : {
					required : "请输入密码",
					minlength : "密码长度不能小于 4 个字母"
				},
				userpassword2 : {
					required : "请输入密码",
					minlength : "密码长度不能小于 4 个字母",
					equalTo : "两次密码输入不一致"
				},
			}
		})
	})
</script>


</html>