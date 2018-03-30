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