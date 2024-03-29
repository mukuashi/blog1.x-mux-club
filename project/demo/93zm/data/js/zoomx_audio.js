$(function() {
    playCotrol();
})

//获取歌曲链接并插入dom中
function getSong() { 
    var audio = document.getElementById("audio");
    audio.src = "http://mkstest-93zm.stor.sinaapp.com/fm1.mp3";
    audio.loop = true; //歌曲循环
    playCotrol(); //播放控制函数

}
var play_btn='<a href=\"#\" title=\"播放\" class=\"play_btn\"></a>';
var pause_btn='<a href=\"#\" title=\"暂停\" class=\"pause_btn\"></a>';
//点击播放/暂停
function clicks() {
    var audio = document.getElementById("audio");
    $("#control").click(function() {
        if ($("#control").hasClass("play")) {
            $("#control").addClass("pause").removeClass("play");
            audio.play();//开始播放
            dragMove();//并且滚动条开始滑动
            $("#control").html(pause_btn);
        } else {
            $("#control").addClass("play").removeClass("pause");
            $("#control").html(play_btn);
            audio.pause();
        }
    })
}

//播放时间
function timeChange(time, timePlace) {//默认获取的时间是时间戳改成我们常见的时间格式
    var timePlace = document.getElementById(timePlace);
    //分钟
    var minute = time / 60;
    var minutes = parseInt(minute);
    if (minutes < 10) {
        minutes = "0" + minutes;
    }
    //秒
    var second = time % 60;
    seconds = parseInt(second);
    if (seconds < 10) {
        seconds = "0" + seconds;
    }
    var allTime = "" + minutes + "" + ":" + "" + seconds + ""
    timePlace.innerHTML = allTime;
}

//播放事件监听
function playCotrol() {
	var audio = document.getElementById("audio");
	//alert(audio);
    audio.addEventListener("loadedmetadata", //一经完整的加载完毕
        function() {
            $("#control").addClass("play").removeClass("color_gray");
            $("#control").html(play_btn);
            addListenTouch(); //加载之后才可以拖动进度条
            var allTime = audio.duration;
            timeChange(allTime, "allTime");
            setInterval(function() {
                var currentTime = audio.currentTime;
                $("#time .currentTime").html(timeChange(currentTime, "currentTime"));
            }, 1000);
            clicks();
		}, false);

    audio.addEventListener("pause",
        function() { //监听暂停
            $("#control").addClass("play").removeClass("pause");
            $("#control").html(play_btn);
            if (audio.currentTime == audio.duration) {
                audio.stop();
                audio.currentTime = 0;
            }
        }, false);
    audio.addEventListener("play",
        function() { //监听暂停
            $("#control").addClass("pause").removeClass("play");
            $("#control").html(pause_btn);
            dragMove();
        }, false);
    audio.addEventListener("ended", function() {
        alert(0)
    }, false)
}
    
//进度条
 var startX, x, aboveX = 0; //触摸时的坐标 //滑动的距离  //设一个全局变量记录上一次内部块滑动的位置 

//1拖动监听touch事件
function addListenTouch() {
    document.getElementById("drag").addEventListener("touchstart", touchStart, false);
    document.getElementById("drag").addEventListener("touchmove", touchMove, false);
    document.getElementById("drag").addEventListener("touchend", touchEnd, false);
    var drag = document.getElementById("drag");
    var speed = document.getElementById("speed");
}

//touchstart,touchmove,touchend事件函数
 function touchStart(e) {  
     e.preventDefault();
     var touch = e.touches[0];
     startX = touch.pageX; 
 }
 function touchMove(e) { //滑动          
     e.preventDefault();
     var touch = e.touches[0];
     x = touch.pageX - startX; //滑动的距离
     //drag.style.webkitTransform = 'translate(' + 0+ 'px, ' + y + 'px)';  //也可以用css3的方式     
     drag.style.left = aboveX + x + "px"; //  
     speed.style.left = -((window.innerWidth) - (aboveX + x)) + "px";
 }
 function touchEnd(e) { //手指离开屏幕
     e.preventDefault();
     aboveX = parseInt(drag.style.left);
     var touch = e.touches[0];
     var dragPaddingLeft = drag.style.left;
     var change = dragPaddingLeft.replace("px", "");
     numDragpaddingLeft = parseInt(change);
     var currentTime = (numDragpaddingLeft / (window.innerWidth - 15)) * audio.duration;//30是拖动圆圈的长度，减掉是为了让歌曲结束的时候不会跑到window以外
     audio.currentTime = currentTime;
 }
//3拖动的滑动条前进
function dragMove() {
    setInterval(function() {
        drag.style.left = (audio.currentTime / audio.duration) * (window.innerWidth - 15) + "px";
        speed.style.left = -((window.innerWidth) - (audio.currentTime / audio.duration) * (window.innerWidth - 15)) + "px";
    }, 500);
}