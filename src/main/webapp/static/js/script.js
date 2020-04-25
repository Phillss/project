
function nn (type) {
    naranja()[type]({
        title: '通知！',
        text: '点击接受或取消通知',
        timeout: 'keep',
        buttons: [{
            text: '接受',
            click: function (e) {
                naranja().success({
                    title: '通知',
                    text: '请求已被接受！'
                })
            }
        },{
            text: '取消',
            click: function (e) {
                e.closeNotification()
            }
        }]
    })
}

function f() {
    var d=document.getElementById("big-hidden");
    var ds=document.getElementById("mid-hidden");
    if(d.style.display=="block"){
        d.style.display="none";
        ds.style.display="none";
    }else{
        d.style.display="block";
        ds.style.display="block";
    }
}

function fa() {
    var alls=document.getElementsByClassName("textli");
    for(var i=0;i<alls.length;i++){
        alls[i].style.display='block';
    }
    var va=document.getElementsByClassName("readStatus");
    va[0].classList.remove("readStatus");
    var rleft=document.getElementsByClassName("rleft");
    rleft[0].classList.add("readStatus");
}
function faf() {
    var befores=document.getElementsByClassName("before");
    var afters=document.getElementsByClassName("after");
    for(var i=0;i<befores.length;i++){
        befores[i].style.display='none';
    }
    for(var i=0;i<afters.length;i++){
        afters[i].style.display='block';
    }
    var va=document.getElementsByClassName("readStatus");
    va[0].classList.remove("readStatus");
    var rmid=document.getElementsByClassName("rmid");
    rmid[0].classList.add("readStatus");
}
function fab() {
    var afters=document.getElementsByClassName("after");
    var befores=document.getElementsByClassName("before");
    for(var i=0;i<afters.length;i++){
        afters[i].style.display='none';
    }
    for(var i=0;i<befores.length;i++){
        befores[i].style.display='block';
    }
    var va=document.getElementsByClassName("readStatus");
    va[0].classList.remove("readStatus");
    var rright=document.getElementsByClassName("rright");
    rright[0].classList.add("readStatus");
}

function ajaxshow(paths){
    var s=document.getElementById("ajaxshow");
    var a=document.getElementById("top-search-input");
    s.style.display='block';
    $.ajax({
        type: 'GET',
        url: paths+"/log/request",
        // contentType: "application/json",
        data: {searchtitle:a.value},//JSON.stringify({"userName":"haha"}),JSON.stringify()必须有,否则只会当做表单的格式提交
        dataType: "json",//期待返回的数据类型
        success: function(list){
            $("#con").empty();
            $(list).each(
                function (i,values) {
                    $("#con").append(
                        "<a href=''><li>"+values+"</li></a>"
                    );
                }
            )
        },
        error:function(){
            alert("error");
        }
    });

    if(a.value==''){
        s.style.display='none';
    }
}

