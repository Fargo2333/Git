<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title>爱心帮扶乐园</title>
    <link rel="stylesheet" href="/antis/FrontPage/css/amazeui.flat.min2.css" />
    <link rel="stylesheet" href="/antis/FrontPage/css/Unit_park.css">
    <link rel="stylesheet" href="/antis/FrontPage/css/Unit_pub.css">
    <link rel="stylesheet" href="/antis/FrontPage/css/page_style.css">
  <script type="text/javascript">
  
	 var myName="<%=session.getAttribute("username")%>"; 
  </script>
</head>
<body>
<div data-am-widget="tabs" class="am-tabs am-tabs-default tabs_top">
        <ul class="am-tabs-nav am-cf">
            <li id="Unit_active2" class="">
                <a href="[data-tab-panel-active]">帮扶行动</a>
            </li>
            <li id="Unit_grants2" class="">
                <a href="[data-tab-panel-grants]">贫困助学</a>
            </li>
        </ul>
        <div class="am-tabs-bd">
            <!-- 帮扶行动内容 -->
            <div data-tab-panel-active class="am-tab-panel" id='Unit_active2_planel'>
                <!-- 热门行动内容 -->
                <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
                    <h2 class="am-titlebar-title ">
                        热门行动
                    </h2>
                </div>
                <!-- 热门行动 -->
                <div class="am-g cpi_active">
                <c:forEach items="${FpxmList}" var="fpx">
                    <div class="am-u-sm-12 am-u-md-3 am-u-lg-3">
                        <div class="am-thumbnail">
                            <img src="${fpx.image }" width="100px"  height="100px"
                                alt="" />
                            <div class="am-thumbnail-caption">
                                <h3>${fpx.xxmmc}</h3>
                                <p class="line-clamp"> <c:if test="${fn:length(fpx.xjsnrjgm)>20 }">  
                         ${fn:substring(fpx.xjsnrjgm, 0, 20)}...  
                   </c:if>  
                  <c:if test="${fn:length(fpx.xjsnrjgm)<=20 }">  
                         ${fpx.xjsnrjgm }  
                   </c:if>    </p>
                                <p>
                                  <a class="am-btn am-btn-primary article_click"  href="/antis/fpxm/editfpxmfont.action?id=${fpx.xid}">查看详情</a>
                                </p>
                            </div>
                        </div>
                    </div>
                   </c:forEach>
                   
                <!-- 分页 -->

            </div>
                               <div class="am-container">
                    <ul class="page_div">
                    </ul>
                </div>
            <!-- 贫困助学内容 -->
            <div data-tab-panel-grants class="am-tab-panel " id='Unit_grants2_planel'>
                <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
                    <h2 class="am-titlebar-title ">
                        推荐助学
                    </h2>
                </div>
                <!-- 推荐助学 -->
                <div class="am-g cpi_active">
                    <div class="am-u-sm-12 am-u-md-3 am-u-lg-3">
                        <div class="am-thumbnail">
                            <img src="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/d31b0ef41bd5ad6e476060618acb39dbb7fd3c9b.jpg"
                                alt="" />
                            <div class="am-thumbnail-caption">
                                <h3>助人为乐，人人做起</h3>
                                <p class="line-clamp">哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈</p>
                                <p>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
                    <h2 class="am-titlebar-title ">
                        全部助学
                    </h2>
                </div>
                <!-- 全部助学 -->
                <div id="all_active" class="am-g cpi_active">
                    <div class="am-u-sm-12 am-u-md-3 am-u-lg-3">
                        <div class="am-thumbnail">
                            <img src="https://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/d31b0ef41bd5ad6e476060618acb39dbb7fd3c9b.jpg"
                                alt="" />
                            <div class="am-thumbnail-caption">
                                <h3>助人为乐，人人做起</h3>
                                <p class="line-clamp">哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈</p>
                                <p>
                                    <a class="am-btn am-btn-primary article_click"  href="/antis/fpxm/editfpxmfont.action?id=">查看详情</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 分页 -->
                <div class="am-container">
                    <ul class="page_div">
                    </ul>
                </div>
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
    <script src="/antis/FrontPage/js/paging.js"></script>
    <script src="/antis/FrontPage/js/amazeui.min.js"></script>
    <script src="/antis/FrontPage/js/Unit_pub.js"></script>
    <script src="/antis/FrontPage/js/Unit_park.js"></script>
    <script type="text/javascript">
  //分页初始化
    $(".page_div").paging({
        pageNo:${page.pageNow} ,//当前页数
        totalPage:${page.totalPageCount},//总页数
        totalSize: ${page.totalCount},//总条数
        callback: function (num) {
            //这里返回当前页数num
            //console.log(num);
            page_active(num);
        }
    });
    
    
    </script>
</body>
</html>