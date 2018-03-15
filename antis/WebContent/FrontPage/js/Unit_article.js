$(function(){
    $("#join_active").click(function(){
        console.log($("#user_name").hasClass("display_none"))
        if($("#user_name").hasClass("display_none")){
            login_window();
        }
    })
})