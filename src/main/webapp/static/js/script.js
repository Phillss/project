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

window.onload=function () {
        var recent=document.getElementById("recent");
        if(recent==''){
            recent.style.display="none";
        }
    }
