$(function() {

	naver_add();
})

// nav 附加
var naver_add = function() {
	var js ="";
	js=js+
					"<header class='am-topbar am-topbar-fixed-top'>"
							+ "<div class='am-container'>"
							+
							// <!-- logo -->
							"<div class='am-topbar-brand' style='line-height: normal'>"
							+ "<img src='../FrontPage/images/logoko.png' class= 'nav_logo' > "
							+ "</div>"
							+
							// <!-- 手机导航键 -->
							"<button class='am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only phone_nav' > "
							+ "<span class='am-icon-bars'></span>"
							+ "</button>"
							+
							// <!-- 电脑导航 -->
							"<div class='am-collapse am-topbar-collapse' id='collapse-head'>"
							+ "<ul class='am-nav am-nav-pills am-topbar-nav' id='nav_computer'>"
							+ "<li id='index'>"
							+ "<a href='/antis/FrontPage/index.jsp'>首页</a > "
							+ "</li>"
							+ "<li id='nav_help' class='am-dropdown dropdown_up'>"
							+ "<a class='am-dropdown-toggle' href='javascript:;'>爱心帮扶乐园"
							+ "<span class='am-icon-caret-down'></span>"
							+ "</a>"
							+ "<ul class='am-dropdown-content'>"
							+ "<li id='Unit_active'>"
							+ "<a href='/antis/fpxm/xmsqfont.action'>1. 帮扶行动</a>"
							+ "</li>"
							+ "<li id='Unit_grants'>"
							+ "<a href='/antis/FrontPage/Unit_park.jsp?active=Unit_grants'>2. 扶贫助学</a>"
							+ "</li>"
							+ "</ul>"
							+ "</li>"
							+ "<li id='Unit_about'>"
							+ "<a href='/antis/FrontPage/Unit_about.jsp?active=Unit_about'>帮扶动态</a>"
							+ "</li>"
							+ "<li id='Unit_show'>"
							+ "<a href='/antis/FrontPage/Unit_show.jsp?active=Unit_show'>帮扶效果展示</a>"
							+ "</li>"
							+ "<li id='nav_study' class='am-dropdown dropdown_up'>"
							+ "<a class='am-dropdown-toggle' href='javascript:;'>困难学生绿色通道"
							+ "<span class='am-icon-caret-down'></span>"
							+ "</a>"
							+ "<ul class='am-dropdown-content'>"
							+ "<li id='Unit_apply'>"
							+ "<a href='/antis/FrontPage/index-pkhsq.jsp?active=index-pkhsq'>1. 困难学生申请与认定</a>"
							+ "</li>"
							+ "<li id='Unit_post'>"
							+ "<a href='/antis/mb/xxllfont.action?active=Unit_post&type=life'>2. 生活困难求助</a>"
							+ "</li>"
							+ "<li id='Unit_post'>"
							+ "<a href='/antis/mb/xxllfont.action?active=Unit_post&type=psy'>3. 心理困难求助</a>"
							+ "</li>"
							+ "<li id='Unit_post'>"
							+ "<a href='/antis/mb/xxllfont.action?active=Unit_post&type=learn'>4. 学业困难求助</a>"
							+ "</li>"
							+ "<li id='Unit_post'>"
							+ "<a href='/antis/mb/xxllfont.action?active=Unit_post&type=work'>5. 就业困难求助</a>"
							+ "</li>"
							+ "</ul>"
							+ "</li>"
							+ "</ul>";
	debugger
	if(undefined==myName){
		js =js
		+ "<div class=' am-topbar-right '>"
		+ "<button class='am-btn am-btn-secondary am-topbar-btn am-btn-sm' onclick=location.href='/antis/register.jsp'  >"
		+ "<span class='am-icon-pencil'></span>注册</button>"
		+ "<a class='am-btn am-btn-default am-topbar-btn am-btn-sm display_none' href='/antis/persons/user_cancellation2.action'>"
		+ "<span class='am-icon-mail-reply'></span> 退出登录</a>"
		+ "</div>"
		+
		"<div class='am-topbar-right '>"
		+ "<button class='am-btn am-topbar-btn am-btn-sm am-btn-success' onclick=location.href='login.jsp'>"
		+ "<span class='am-icon-user '></span>登录      </button>"
		+ "<button id='user_name' class='am-btn am-topbar-btn am-btn-sm am-btn-success display_none'>"
		+ "<span class='am-icon-user'></span>您好，"+myName+"</button>"
		+ "</div>" + "</div>" + "</header>";
	}else if("null"==myName){
		
			js =js
			+ "<div class=' am-topbar-right '>"
			+ "<button class='am-btn am-btn-secondary am-topbar-btn am-btn-sm' onclick=location.href='/antis/FrontPage/register.jsp'  >"
			+ "<span class='am-icon-pencil'></span>注册</button>"
			+ "<a class='am-btn am-btn-default am-topbar-btn am-btn-sm display_none' href='/antis/persons/user_cancellation2.action'>"
			+ "<span class='am-icon-mail-reply'></span> 退出登录</a>"
			+ "</div>"
			+
			"<div class='am-topbar-right '>"
			+ "<button class='am-btn am-topbar-btn am-btn-sm am-btn-success' onclick=location.href='/antis/FrontPage/login.jsp'>"
			+ "<span class='am-icon-user '></span>登录      </button>"
			+ "<button id='user_name' class='am-btn am-topbar-btn am-btn-sm am-btn-success display_none'>"
			+ "<span class='am-icon-user'></span>您好，"+myName+"</button>"
			+ "</div>" + "</div>" + "</header>";
		
	}
	
	else{
		
		js =js
		+ "<div class=' am-topbar-right '>"
		+ "<button class='am-btn am-btn-secondary display_none am-topbar-btn am-btn-sm' onclick=location.href='/antis/frontPage/register.jsp'  >"
		+ "<span class='am-icon-pencil'></span>注册</button>"
		+ "<a class='am-btn am-btn-default am-topbar-btn am-btn-sm ' href='/antis/persons/user_cancellation2.action'>"
		+ "<span class='am-icon-mail-reply'></span>退出登录</a>"
		+ "</div>"
		+
		"<div class='am-topbar-right '>"
		+ "<button class='am-btn am-topbar-btn display_none am-btn-sm am-btn-success' onclick=location.href='/antis/frontPage/login.jsp'>"
		+ "<span class='am-icon-user '></span>登录      </button>"
		+ "<button id='user_name' class='am-btn am-topbar-btn am-btn-sm am-btn-success '>"
		+ "<span class='am-icon-user'></span>您好，"+myName+"</button>"
		+ "</div>" + "</div>" + "</header>";
		
	}
		
							
							
	$('body')
	.prepend(js)

	footer_add();
}

// footer 附加
var footer_add = function() {
	$('body')
			.append(
					"<footer class='footer'>"
							+ "<div class='am-g'>"
							+ "<div class='am-u-lg-12 am-u-md-12 am-u-sm-12' style='padding: 0'>"
							+ "<div style='padding: 0 25%'>"
							+ "<div class='footer_title'>"
							+ "<h2>联系我们</h2>"
							+ "</div>"
							+ "<div class='footer_content'>"
							+ "<h3>公益项目咨询：121212121@qq.com|公益项目合作：12121212@qq.com </h3>"
							+ "<h3>主办：啊啊益慈善基金会 支持：啦啦啦啦</h3>"
							+ "</div>"
							+ "<p>© 2014 Dadsdasfsfasf, Inc. Licensed Coby Adbd aadadsa. by the DON Team.</p>"
							+ "</div>" + "</div>" + "</div>" + "</div>"
							+ "</footer >")

	active_set();
	active_down();
}

// 设置激活菜单项目
var active = GetParameter("active");
var active_set = function() {
	debugger
	if (active == null) {
		
		
		$("#index").addClass("am-active");
		return false;
	}
	if (active != "nav_study")
		$("#" + active).addClass("am-active");
}

// 激活下拉
var active_down = function() {
	// pc下拉
	$(".dropdown_up").dropdown({
		toggle : '#nav_computer'
	});
	// 手机下拉
	$(".phone_nav").attr("data-am-collapse", "{ target: '#collapse-head' }");
}

// 获取url参数
function GetParameter(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if (r != null)
		return decodeURIComponent(r[2]);
	return null;
}

// 绑定登录窗口
$(document).on("click", ".login_btn", function() {
	login_window(1);
})

// 绑定注册窗口
$(document).on("click", ".register_btn", function() {
	login_window(0);
	
})

// 登录窗口添加
function login_window(type) {
	$("#your-modal").remove();
	var title = "登录";
	var register = "";
	var username = "";
	var _btn = "<button type='submit' class='am-btn am-btn-default am-fr' style='margin-left:5px;'>忘记密码 ^_^? </button>"
			+ "<button type='submit' class='am-btn am-btn-success am-fr'>登录</button>";
	if (type == 0) {
		title = "注册";
		username = "<div class='am-form-group'>"
				+ "<label for='doc-ipt-pwd-0' class='am-u-sm-3 am-u-lg-2 am-form-label'>昵称</label>"
				+ "<div class='am-u-sm-9 am-u-lg-10'>"
				+ "<input type='password' id='doc-ipt-pwd-0' placeholder='请输入昵称'>"
				+ "</div>" + "</div>";
		register = "<div class='am-form-group'>"
				+ "<label for='doc-ipt-pwd-2' class='am-u-sm-3 am-u-lg-2 am-form-label' style='padding-left:0;padding-right:0;'>确认密码</label>"
				+ "<div class='am-u-sm-9 am-u-lg-10'>"
				+ "<input type='password' id='doc-ipt-pwd-3' placeholder='再次输入你的密码'>"
				+ "</div>" + "</div>";
		_btn = "<button type='submit' class='am-btn am-btn-default am-fr' style='margin-left:5px;'>取消</button>"
				+ "<button type='submit' class='am-btn am-btn-success am-fr'>注册</button>";
	}
	$("body")
			.append(
					"<div class='am-modal am-modal-no-btn' style='display: block' tabindex='-1' id='your-modal'>"
							+ "<div class='am-modal-dialog'>"
							+ "<div class='am-modal-hd'>"
							+ title
							+ ""
							+ "<a href='javascript: void(0)' class='am-close am-close-spin' data-am-modal-close>&times;</a>"
							+ "</div>"
							+ "<div class='am-modal-bd' style='margin-top: 15px;'>"
							+ "<form class='am-form am-form-horizontal'>"
							+ username
							+ "<div class='am-form-group'>"
							+ "<label for='doc-ipt-3' class='am-u-sm-3 am-u-lg-2 am-form-label'>帐号</label>"
							+ "<div class='am-u-sm-9 am-u-lg-10'>"
							+ " <input type='text' id='doc-ipt-3' placeholder='输入你的帐号'>"
							+ "</div>"
							+ " </div>"
							+ "<div class='am-form-group'>"
							+ "<label for='doc-ipt-pwd-2' class='am-u-sm-3 am-u-lg-2 am-form-label'>密码</label>"
							+ "<div class='am-u-sm-9 am-u-lg-10'>"
							+ "<input type='password' id='doc-ipt-pwd-2' placeholder='输入你的密码'>"
							+ "</div>"
							+ "</div>"
							+ register
							+ "<div class='am-form-group' style='margin:15px 18px 0 0;'>"
							+

							_btn
							+ "</div>"
							+ "</form>"
							+ "</div>"
							+ "</div>"
							+ "</div>")
	$('#your-modal').modal();
}