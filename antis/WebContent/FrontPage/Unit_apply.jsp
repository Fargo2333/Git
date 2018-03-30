<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title>困难学生绿色通道</title>
    <link rel="stylesheet" href="css/amazeui.flat.min.css" />
    <link rel="stylesheet" href="css/Unit_apply.css">
    <link rel="stylesheet" href="css/Unit_pub.css">
    <script type="text/javascript">
  
	 var myName="<%=session.getAttribute("username")%>"; 
  </script>
</head>
<body>
<div class="am-container" style="margin-top: 80px">
        <ol class="am-breadcrumb">
            <li>
                <a href="#">困难学生绿色通道</a>
            </li>
            <li>
                <a href="#">困难学生申请与认定</a>
            </li>
        </ol>
        <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
            <ul id="tabs_nav" class="am-tabs-nav am-cf">
                <li class="am-active">
                    <a href="[data-tab-panel-0]">贫困学生申请与认定</a>
                </li>
                <li class="">
                    <a href="[data-tab-panel-1]">扶贫创业资金申请</a>
                </li>
                <li class="">
                    <a href="[data-tab-panel-2]">扶贫项目展示与申请</a>
                </li>
                <li class="">
                    <a href="[data-tab-panel-3]">贫困学生教育补助</a>
                </li>
            </ul>
            <div class="am-tabs-bd">
                <div data-tab-panel-0 class="am-tab-panel am-active">
                    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
                        am-avg-md-3 am-avg-lg-4 am-gallery-bordered" data-am-gallery="{pureview: true}">
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="远方 有一个地方 那里种有我们的梦想" />
                                    <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt="某天 也许会相遇 相遇在这个好地方" />
                                    <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt="不要太担心 只因为我相信" />
                                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-4.jpg" alt="终会走过这条遥远的道路" />
                                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="am-g">
                        <button type="button" class="am-btn am-btn-success am-fr apply_btn" style="margin-top: 10px">立即申请</button>
                    </div>
                </div>
                <div data-tab-panel-1 class="am-tab-panel ">
                    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
                        am-avg-md-3 am-avg-lg-4 am-gallery-bordered" data-am-gallery="{pureview: true}">
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="远方 有一个地方 那里种有我们的梦想" />
                                    <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt="某天 也许会相遇 相遇在这个好地方" />
                                    <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt="不要太担心 只因为我相信" />
                                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-4.jpg" alt="终会走过这条遥远的道路" />
                                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="am-g">
                        <button type="button" class="am-btn am-btn-success am-fr apply_btn" style="margin-top: 10px">立即申请</button>
                    </div>
                </div>
                <div data-tab-panel-2 class="am-tab-panel ">
                    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
                        am-avg-md-3 am-avg-lg-4 am-gallery-bordered" data-am-gallery="{pureview: true}">
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="远方 有一个地方 那里种有我们的梦想" />
                                    <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt="某天 也许会相遇 相遇在这个好地方" />
                                    <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt="不要太担心 只因为我相信" />
                                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-4.jpg" alt="终会走过这条遥远的道路" />
                                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="am-g">
                        <button type="button" class="am-btn am-btn-success am-fr apply_btn" style="margin-top: 10px">立即申请</button>
                    </div>
                </div>
                <div data-tab-panel-3 class="am-tab-panel ">
                    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
                        am-avg-md-3 am-avg-lg-4 am-gallery-bordered" data-am-gallery="{pureview: true}">
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="远方 有一个地方 那里种有我们的梦想" />
                                    <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt="某天 也许会相遇 相遇在这个好地方" />
                                    <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-3.jpg" alt="不要太担心 只因为我相信" />
                                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="am-gallery-item">
                                <a href="" class="">
                                    <img src="http://s.amazeui.org/media/i/demos/bing-4.jpg" alt="终会走过这条遥远的道路" />
                                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                                    <div class="am-gallery-desc">2375-09-26</div>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <div class="am-g">
                        <button type="button" class="am-btn am-btn-success am-fr apply_btn" style="margin-top: 10px">立即申请</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="am-modal am-modal-no-btn" tabindex="-1" id="apply_modal">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">
                <label id="apply_title"></label>
                <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
            </div>
            <div class="am-modal-bd">
                <form action="" class="am-form">
                    <div class="am-form-group" style="text-align: left">
                        <label>姓名：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group" style="text-align: left">
                        <label>民族：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group" style="text-align: left">
                        <label>身份证：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group" style="text-align: left">
                        <label>家庭年收入：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group" style="text-align: left">
                        <label>主要致贫原因：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group" style="text-align: left">
                        <label>联系电话：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group" style="text-align: left">
                        <label>家庭人数：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group" style="text-align: left">
                        <label>家庭住址：</label>
                        <input type="text" id="" placeholder="" class="am-form-field" />
                    </div>
                    <div class="am-form-group am-form-file">
                        <button type="button" class="am-btn am-btn-default am-btn-sm">
                            <i class="am-icon-cloud-upload"></i> 选择证明文件</button>
                        <input type="file" multiple>
                    </div>
                    <div class="am-form-group" style="padding-bottom: 5px">
                        <button type="submit" class="am-btn am-btn-success am-fr">确定申请</button>
                    </div>
                </form>
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
    <script src="js/amazeui.min.js"></script>
    <script src="js/Unit_pub.js"></script>
    <script src="js/Unit_apply.js"></script>
</body>
</html>