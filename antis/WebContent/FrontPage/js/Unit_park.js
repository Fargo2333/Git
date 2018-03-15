$(function () {
    //初始设置激活
    let active = GetParameter("active");
    if (active == "Unit_grants") {
        $("#Unit_active2").removeClass("am-active");
        $("#Unit_active2_planel").removeClass("am-active");
        $("#Unit_grants2").addClass("am-active");
        $("#Unit_grants2_planel").addClass("am-active");
    }
})

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

//模拟数据填充
function page_active(num) {
    //这段只是看看
    var b = 3;
    if (num == 1) {
        b = 8;
    }
    //end
    $("#all_active").html("");
    for (var a = 0; a < b; a++) {
        $("#all_active").append(
            "<div class='am-u-sm-12 am-u-md-3 am-u-lg-3'>" +
            "<div class='am-thumbnail'>" +
            "<img src='http://img.zcool.cn/community/0142135541fe180000019ae9b8cf86.jpg@1280w_1l_2o_100sh.png'/>" +
            "<div class='am-thumbnail-caption'>" +
            "<h3>助人为乐，人人做起</h3>" +
            "<p class='line-clamp'>哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈</p>" +
            "<p>" +
            "<button class='am-btn am-btn-primary'>查看详情</button>" +
            "</p>" +
            "</div>" +
            "</div>" +
            "</div>"
        );
    }
}

//点击跳转
$(".article_click").click(function () {
    window.location.href = "Unit_article.jsp";
});