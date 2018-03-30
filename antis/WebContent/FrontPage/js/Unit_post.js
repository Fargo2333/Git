$(function () {
    let type = GetParameter("type");
    let title = "";
    title = (type == "life" && "生活") || (type == "psy" && "心理") || (type == "learn" && "学业") || (type == "work" && "就业") || "";
    $("#breadcrumb_title").text(title + "困难求助");
})

$('#summernote').summernote({
    placeholder: '输入你的求助内容',
    tabsize: 2,
    height: 250,
    minHeight: 250,
    maxHeight: 250,
    lang: 'zh-CN'
});

//分页初始化
$(".page_div").paging({
    pageNo: 1,//当前页数
    totalPage: 2,//总页数
    totalSize: 12,//总条数
    callback: function (num) {
        //这里返回当前页数num
        //console.log(num);
        page_active(num);
    }
});

//获取富文本内容方法
//$("#summernote").summernote("code");

//写入富文本方法
//$("#summernote").summernote("code",content);

//回复
$(document).on("click", ".reply_btn", function () {
    $(".reply_box").remove();
    debugger
    $(this).parents(".am-panel").after(
        "<form action='/antis/message/addmb.action' method='post'><div class='am-form-group reply_box' style='overflow: hidden'>" +
     
        "<label for='doc-ta-1'>回复：楼主</label>" +
        "<input name='mbt' value='"+$(this).attr('value')+"'/>"+
        "<textarea name='mnr' rows='5'></textarea>" +
        "<button type='button' class='am-btn am-btn-default am-fr reply_clear' style='margin: 5px 0 0 5px'>取消</button>" +
        "<button type='submit' class='am-btn am-btn-primary am-fr ' style='margin-top: 5px'>确认</button>" +
        "</div></form>"
    );
})


//回复确认
$(document).on("click", ".reply_ok", function () {
    $(this).parents(".reply_box").next().prepend(
        "<li class='am-comment am-comment-success'>" +
        " <a href='#'>" +
        "<img src='https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2576860909,4181919339&fm=111&gp=0.jpg' class='am-comment-avatar' width='48' height='48' />" +
        "</a>" +
        "<div class='am-comment-main'>" +
        " <header class='am-comment-hd'>" +
        "<div class='am-comment-meta'>" +
        " <a href='#' class='am-comment-author'>某人</a>" +
        "评论于" +
        "<time>2014-7-12 15:60</time>" +
        "<a class='am-comment-author am-fr comment_reply'>回复</a>" +
        "</div>" +
        "</header>" +
        "<div class='am-comment-bd'>" +
        "..." +
        "</div>" +
        "</div>" +
        "</li>"
    );
    $(".reply_box").remove();
})

//评论回复
$(document).on("click", ".comment_reply", function () {
    $(".reply_box").remove();
    $(this).parents(".am-comment").after(
        "<div class='am-form-group reply_box' style='overflow: hidden'>" +
        "<label for='doc-ta-1'>回复：某人</label>" +
        "<textarea rows='5'></textarea>" +
        "<button type='button' class='am-btn am-btn-default am-fr reply_clear' style='margin: 5px 0 0 5px'>取消</button>" +
        "<button type='button' class='am-btn am-btn-primary am-fr comment_ok' style='margin-top: 5px'>确认</button>" +
        "</div>"
    );
})

//评论回复确认
$(document).on("click", ".comment_ok", function () {
    $(this).parents(".reply_box").after(
        "<li class='am-comment am-comment-warning am-comment-flip'>" +
        " <a href='#'>" +
        "<img src='https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2576860909,4181919339&fm=111&gp=0.jpg' class='am-comment-avatar' width='48' height='48' />" +
        "</a>" +
        "<div class='am-comment-main'>" +
        " <header class='am-comment-hd'>" +
        "<div class='am-comment-meta'>" +
        " <a href='#' class='am-comment-author'>某人</a>" +
        "评论于" +
        "<time>2014-7-12 15:50</time>" +
        "</div>" +
        "</header>" +
        "<div class='am-comment-bd'>" +
        "..." +
        "</div>" +
        "</div>" +
        "</li>"
    );
    $(".reply_box").remove();
})

//取消回复
$(document).on("click", ".reply_clear", function () {
    $(".reply_box").remove();
})
