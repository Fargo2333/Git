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
</head>
<body>


<script type="text/javascript">
function login(){
	document.personform.action="${pageContext.request.contextPath}/persons/login.action";
	document.personform.submit();
}
function register(){
	window.location.href="${pageContext.request.contextPath}/register.jsp";
}
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
	container.style.position = 'absolute';
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
<div class="mid">
    <div class="m1">抓精准扶贫,为高校护航 </div>
     <div class="LoR">	  
     
	 <div id="login">
	  
	   <h2><span></span>精准扶贫管理系统</h2>
	 <fieldset>
	 <form name="personform" method="post">
				<p><label for="email">账号</label></p>
				<p><input id="username" type="text" name="username" class="inputsytle" ></p> 
				<p><label for="password" >密码</label></p>
				<p><input id="password" type="password" name="userpassword" class="inputsytle"></p>
				<p><label for="email">用户类型</label><select style="margin-left:40px;" name="userschedule">
					<option>普通用户</option>
					<option>管理员</option>
					</select></p> 
				<p style="margin-top:10px;color: red">${sessionScope.faillogin }</p>
			    <p ><input class="btn" type="button" value="登陆" style="margin-top:50px" onclick="login()"></p>
			    <p ><input class="btn" type="button" value="注册" style="margin-top:20px;text-align: center" onclick="register()"></p>
			   
               
               </form>
				   </fieldset>
			</div>
                   
       </div>
			
</div>
</body>
<style>

.mid{
   width:600px;
    height:500px;
    position: absolute;
    z-index: 5;
    top: 10%;
    left:30%;
  }
.m1{
    font-size:35px; 
	font-family:Microsoft YaHei;
	width:400px;
	height:80px;
	margin:0 auto;
    color:#FFFFFF;
	 }
</style>
</html>