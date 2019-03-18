<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 웹폰트추가 -->
<link href="https://fonts.googleapis.com/css?family=Caveat:400,700&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<html>
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var water = new Audio('resources/music/water.mp3');
	var bug = new Audio('resources/music/bug.mp3');
	var cafe = new Audio('resources/music/cafe.mp3');
	var fire = new Audio('resources/music/fire.mp3');
	var forest = new Audio('resources/music/forest.mp3');
	var home = new Audio('resources/music/home.mp3');
	var library = new Audio('resources/music/library.mp3');
	var night = new Audio('resources/music/night.mp3');
	var paris = new Audio('resources/music/paris.mp3');
	var rain = new Audio('resources/music/rain.mp3');
	var sea = new Audio('resources/music/sea.mp3');
	var snow = new Audio('resources/music/snow.mp3');
	var thunder = new Audio('resources/music/thunder.mp3');
	var train = new Audio('resources/music/train.mp3');
	var wind = new Audio('resources/music/wind.mp3');
	
	var arr = new Array(bug,fire,forest,home,library,night,paris,rain,sea,snow,thunder,train,wind,water,cafe);
	
	/* 음악배열저장 */
	$(".soundSave").click(function(){
		var str = "";
		for(var i = 0; i<arr.length; i++){
			if(!arr[i].paused){
				str += i;
				str += ",";
			}
		}
		alert("사운드 배열값: " + str);
		$.ajax({
		     type:"get",
		     url:"sounds?sound="+str,
		     success: function(data){
		    	 alert("저장하셨습니다. 다음 번 로그인부터 불러올 수 있습니다");
		      },
		      error:function(e){
		         alert("다시 시도해주세요");
		      }
		});
	});
	/* 음악배열불러오기 */
	$(".soundLoad").click(function(){
		$.ajax({
		     type:"get",
		     url:"load",
		     success: function(data){
		    	 if(data==null){
		    		 alert("저장된 조합이 없습니다");
		    		 return false;
		    	 }
		    	var dataString = data.split(',');
		    	for(var i in dataString){
		    		arr[dataString[i]].play();
		    		arr[dataString[i]].loop = true;
		    		$(".picpic").eq(dataString[i]).css("opacity",1.0);
					$(".volumeGra").eq(dataString[i]).css("display","inline");
		    	}
		      },
		      error:function(e){
		         alert("오류");
		      }
		});
	});
	$(".volumeBox").click(function(){
		for(var i = 0; i<arr.length; i++){
			if(arr[i].muted){
				arr[i].muted = false;
				$(".muteImg").attr("src","resources/icon/volume_on.png")
			}
			else{
				arr[i].muted = true;
				$(".muteImg").attr("src","resources/icon/volume_mute.png")
			}
		}
	});
	
	
	$("#bug").click(function(){
		if(bug.paused){
			bug.play();
			bug.loop = true;
			bug.volume = 0.5;
			$("#bug").css("opacity",1.0);
			$(".bugS").css("display","inline");
		}else{
			bug.pause();
			$("#bug").css("opacity",0.4);
			$(".bugS").css("display","none");
		}
	});
	$("#water").click(function(){
		if(water.paused){
			water.play();
			water.loop = true;
			water.volume = 0.5;
			$("#water").css("opacity",1.0);
			$(".waterS").css("display","inline");
		}else{
			water.pause();
			$("#water").css("opacity",0.4);
			$(".waterS").css("display","none");
		}
	});
	$("#cafe").click(function(){
		if(cafe.paused){
			cafe.play();
			cafe.loop = true;
			cafe.volume = 0.5;
			$("#cafe").css("opacity",1.0);
			$(".cafeS").css("display","inline");
		}else{
			cafe.pause();
			$("#cafe").css("opacity",0.4);
			$(".cafeS").css("display","none");
		}
	});
	$("#fire").click(function(){
		if(fire.paused){
			fire.play();
			fire.loop = true;
			fire.volume = 0.5;
			$("#fire").css("opacity",1.0);
			$(".fireS").css("display","inline");
		}else{
			fire.pause();
			$("#fire").css("opacity",0.4);
			$(".fireS").css("display","none");
		}
	});
	$("#forest").click(function(){
		if(forest.paused){
			forest.play();
			forest.loop = true;
			forest.volume = 0.5;
			$("#forest").css("opacity",1.0);
			$(".forestS").css("display","inline");
		}else{
			forest.pause();
			$("#forest").css("opacity",0.4);
			$(".forestS").css("display","none");
		}
	});
	$("#home").click(function(){
		if(home.paused){
			home.play();
			home.loop = true;
			home.volume = 0.5;
			$("#home").css("opacity",1.0);
			$(".homeS").css("display","inline");
		}else{
			home.pause();
			$("#home").css("opacity",0.4);
			$(".homeS").css("display","none");
		}
	});
	$("#library").click(function(){
		if(library.paused){
			library.play();
			library.loop = true;
			library.volume = 0.5;
			$("#library").css("opacity",1.0);
			$(".libraryS").css("display","inline");
		}else{
			library.pause();
			$("#library").css("opacity",0.4);
			$(".libraryS").css("display","none");
		}
	});
	$("#night").click(function(){
		if(night.paused){
			night.play();
			night.loop = true;
			night.volume = 0.5;
			$("#night").css("opacity",1.0);
			$(".nightS").css("display","inline");
		}else{
			night.pause();
			$("#night").css("opacity",0.4);
			$(".nightS").css("display","none");
		}
	});
	$("#paris").click(function(){
		if(paris.paused){
			paris.play();
			paris.loop = true;
			paris.volume = 0.5;
			$("#paris").css("opacity",1.0);
			$(".cityS").css("display","inline");
		}else{
			paris.pause();
			$("#paris").css("opacity",0.4);
			$(".cityS").css("display","none");
		}
	});
	$("#rain").click(function(){
		if(rain.paused){
			rain.play();
			rain.loop = true;
			rain.volume = 0.5;
			$("#rain").css("opacity",1.0);
			$(".rainS").css("display","inline");
		}else{
			rain.pause();
			$("#rain").css("opacity",0.4);
			$(".rainS").css("display","none");
		}
	});
	$("#sea").click(function(){
		if(sea.paused){
			sea.play();
			sea.loop = true;
			sea.volume = 0.5;
			$("#sea").css("opacity",1.0);
			$(".seaS").css("display","inline");
		}else{
			sea.pause();
			$("#sea").css("opacity",0.4);
			$(".seaS").css("display","none");
		}
	});
	$("#snow").click(function(){
		if(snow.paused){
			snow.play();
			snow.loop = true;
			snow.volume = 0.5;
			$("#snow").css("opacity",1.0);
			$(".snowS").css("display","inline");
		}else{
			snow.pause();
			$("#snow").css("opacity",0.4);
			$(".snowS").css("display","none");
		}
	});
	$("#thunder").click(function(){
		if(thunder.paused){
			thunder.play();
			thunder.loop = true;
			thunder.volume = 0.5;
			$("#thunder").css("opacity",1.0);
			$(".thunderS").css("display","inline");
		}else{
			thunder.pause();
			$("#thunder").css("opacity",0.4);
			$(".thunderS").css("display","none");
		}
	});
	$("#train").click(function(){
		if(train.paused){
			train.play();
			train.loop = true;
			train.volume = 0.5;
			$("#train").css("opacity",1.0);
			$(".trainS").css("display","inline");
		}else{
			train.pause();
			$("#train").css("opacity",0.4);
			$(".trainS").css("display","none");
		}
	});
	$("#wind").click(function(){
		if(wind.paused){
			wind.play();
			wind.loop = true;
			wind.volume = 0.5;
			$("#wind").css("opacity",1.0);
			$(".windS").css("display","inline");
		}else{
			wind.pause();
			$("#wind").css("opacity",0.4);
			$(".windS").css("display","none");
		}
	});
	$(".bugS").mouseup(function(){
		bug.volume = $(".bugS").val();
	});
	$(".waterS").mouseup(function(){
		water.volume = $(".waterS").val();
	});
	$(".cafeS").mouseup(function(){
		cafe.volume = $(".cafeS").val();
	});
	$(".fireS").mouseup(function(){
		fire.volume = $(".fireS").val();
	});
	$(".forestS").mouseup(function(){
		forest.volume = $(".forestS").val();
	});
	$(".homeS").mouseup(function(){
		home.volume = $(".homeS").val();
	});
	$(".libraryS").mouseup(function(){
		library.volume = $(".libraryS").val();
	});
	$(".nightS").mouseup(function(){
		night.volume = $(".nightS").val();
	});
	$(".cityS").mouseup(function(){
		city.volume = $(".cityS").val();
	});
	$(".rainS").mouseup(function(){
		rain.volume = $(".rainS").val();
	});
	$(".seaS").mouseup(function(){
		sea.volume = $(".seaS").val();
	});
	$(".snowS").mouseup(function(){
		snow.volume = $(".snowS").val();
	});
	$(".thunderS").mouseup(function(){
		thunder.volume = $(".thunderS").val();
	});
	$(".trainS").mouseup(function(){
		train.volume = $(".trainS").val();
	});
	$(".windS").mouseup(function(){
		wind.volume = $(".windS").val();
	});
	var tabSwitch = 0;
    $(".tabButton").click(function(){
        if(tabSwitch == 0){
            $(".boardContent").animate({
                width: "1000px"
            }, 1000);
            $(".boardContent").css("display","block");
            tabSwitch = 1; 
        }else{
        	$(".boardContent").animate({
                width: "0px"
            }, 1000);
            tabSwitch = 0; 
        }
    });
    
    $(".buttonLogin").click(function(){
    	window.open('login.jsp','login','width=500, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no');
    	
    });
    
    /* 댓글 스크립트 */
    $.ajax({
		url:"C_List",
		type:"get",
		success:function(data){
			if(data!=null){
				data = $.parseJSON(data);
				var htmlStr="";
				htmlStr +="<table class='table table-striped table-dark'>";
				for(var i=0; i<data.length;i++){
					htmlStr +="<tr>";
					htmlStr +="<td>"+data[i].writer+"</td>";
					htmlStr +="<td>"+data[i].regdate+"</td>";
					htmlStr +="<td>"+data[i].msg+"</td>";
					htmlStr +="</tr>";
				}
				htmlStr +="</table>";
				$("#result").html(htmlStr);	
			}
		},
		error:function(e){
			alert("error : "+ e);
		}
	});
	$("#msg").keyup(function(){
		if(event.keyCode==13){
			$.ajax({
				url:"C_Insert",
				type:"post",
				data:{"msg":$("#msg").val(),"writer":$("#writer").val()},
				success:function(data){
					data = $.parseJSON(data);
					var htmlStr="";
					htmlStr +="<table class='table table-striped table-dark'>";
					for(var i=0; i<data.length;i++){
						htmlStr +="<tr>";
						htmlStr +="<td>"+data[i].writer+"</td>";
						htmlStr +="<td>"+data[i].regdate+"</td>";
						htmlStr +="<td>"+data[i].msg+"</td>";
						htmlStr +="</tr>";
					}
					htmlStr +="</table>";
					$("#result").html(htmlStr);	
					$("#msg").val("");
				},
				error:function(e){
					alert("inserterror : "+ e);
				}
			});
		}
	});
})
</script>
<style>
input[type="text"], input[type="password"] {
	height: auto; /* 높이 초기화 */ 
	line-height: normal; /* line-height 초기화 */ 
	padding: .8em .5em; /* 여백 설정 */ 
	border: 0;
	-webkit-appearance: none;
	outline-style: none;
 }

body,html{
	width: 85%;
	margin: 0 auto;
	font-family: 'Caveat', cursive;
}

a:hover{
	text-decoration: none;
}
a:active{
text-decoration: none;
}
a:visited{
text-decoration: none;
}

.mydiv {
  width:100%;
  height:100%;
  font-weight:bold;
  animation: myanimation 20s infinite;
}
@keyframes myanimation {
  0% {background-color: rgb(102, 203, 153);}
  25%{background-color: rgb(114, 189, 194);}
  50%{background-color: rgb(109, 197, 220);}
  75%{background-color: rgb(204, 137, 162);}
  100% {background-color: rgb(102, 203, 153);}
}
/* 로고와 뮤트, 로그인 부분  */
.logo{
	text-align: center;
	padding-top: 5%;
}
.logo h1{
	font-size: 5em;
	color: white;
}
.bar{
	height:100px;
	width:100%;
}
.bar .volumeBox{
	float:left;
	height: 100px;
	width: 100px;
}
.bar .loginBox{
	height: 100px;
	float: right;
	width: 200px;
}
.bar .content{
	
}
.bar .volumeBox .muteImg{
	width: 40px;
	height: auto;
}
	/* 버튼 css효과 */
.bar .loginBox .wrap {
	text-align: center;
}
.bar .loginBox .wrap b{
	color: white;
	font-size: 1.2em;
}
.bar .loginBox .wrap a {
	-webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	-o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
	display: inline-block;
	max-width: 120px;
	text-decoration: none;
	border-radius: 8px;
	padding: 4px 10px;
	font-size: 1.4em;
}
.bar .loginBox .wrap a.button {
	color:white;
	box-shadow: rgba(255, 255, 255, 0.1) 0 0px 0px 2px inset;
}
.bar .loginBox .wrap a.button:hover {
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}
/* 로고와 뮤트, 로그인 부분 끝*/
/* 컨텐츠 부분 시작 */
.content .introText {
	text-align: center;
}
.content .introText h1{
	font-size: 1.4em;
	color: white;
}
.content .bigBox{
	width:100%;
	height: 100%;
}


/* 슬라이드바 제작 */
.slidecontainer {
  width: 100%;
  margin-top: 20px;
  padding: 0 25%;
}
.volumeGra {
  -webkit-appearance: none;
  width: 40%;
  height: 5px;
  background: #ffffff;
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
}

.volumeGra:hover {
  opacity: 1;
}

.volumeGra::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 20px;
  height: 20px;
  background: #ffffff;
  cursor: pointer;
  border-radius: 12px;
  
}

.volumeGra::-moz-range-thumb {
  width: 20px;
  height: 20px;
  background: #ffffff;
  cursor: pointer;
  border-radius: 10px;
}
/* 슬라이드제작 끝 */
/* 컨텐츠 row 설정시작 */
.bigBox{
	padding-top: 40px;
}
.row{
	width:100%;
	height:200px;
	text-align: center;
	margin: 20px 0;
}
.row .sero1{
	width:32%;
	float: left;
	margin-left: 20px;
}
.row .sero2{
	width:32%;
	float: left;
	margin : 0 10px;
}
.row .sero3{
	width:32%;
	float: left;
}
/* 컨텐츠 row 설정끝 */
/* 컨텐츠 부분 끝 */
/* 탭 부분 설정시작 */
.boardTab{
height: 1000px;
position: fixed;
right: 0px;
top: 0px;
}
    .boardTab .tabButtonArea{
    width: 40px;
    height: 100%;
    float: left;
    }
            .boardTab .tabButtonArea .tabButton{
            width: 100%;
            height: 80px;
            background-color: #CCCCFF;
            border-radius:  30px 0px 0px 30px;
            font-size: 0.7em;
            color: white;
            text-align: center;
            }
            .boardTab .tabButtonArea .tabButton p{
                padding-top: 5px;
            }
    .boardTab .boardContent{
        width: 0%;
        height: 100%;
        background-color: #CCCCFF;
        float: left;
        display: none;
        text-align: center;
        padding-top: 40px;
    }
	    .boardTab .boardContent p{
	    	color: white;
	    	font-size: 1.5em;
	    	text-align: center;
	    }
	    .boardTab .boardContent .loginon{
	    	color: olive;
	    	font-size: 1.2em;
	    	text-align: center;
	    	font-family: "Nanum Gothic", sans-serif;
	    	color: white;
	    }
	    .boardTab .boardContent #result td{
	    	font-family: "Nanum Gothic", sans-serif;
	    	color: maroon;
	    }
	    .boardTab .boardContent .radius{
	    	width: 70%;
	    	height : 38px;
	    	display:inline-block;
	    	border-radius: 300px;
	    	background: white;
	    	padding-left: 15%;
	    	font-family: "Nanum Gothic", sans-serif;
	    }
	    .boardTab .boardContent .table{
	    	margin-top:50px;
	    	width: 60%;
	    }
.cBox{
		text-align: center;
}
/* 탭 부분 설정끝 */
</style>
<head>
	<title>main</title>
</head>
<body class="mydiv">
<!-- 컨텐츠의 윗부분 -->
<div class="logo">
	<h1>Siesta</h1>
</div>
<div class="bar">
	<div class="volumeBox">
		<img src="resources/icon/volume_on.png" class="muteImg" style="opacity:0.7;">
	</div>
	<div class="loginBox">
		<div class="wrap">
			<c:if test="${not empty sessionScope.id  }">
				<b>welcome to Siesta! </b><br> <a href="logout" class="button buttoLogout"><b>log out</b></a>
			</c:if>
			<c:if test="${empty sessionScope.id }">
	  			<a href="#" class="button buttonJoin" onClick="window.open('joinform.jsp','Join','width=500, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no');return false;"><b>sign up</b></a>
	  			<a href="#" class="button buttonLogin"><b>log in</b></a>
  			</c:if>
		</div>
	</div>
</div>
<!-- 컨텐츠 윗부분 끝 -->
<!-- 컨텐츠 시작 -->
<div class="content">
	<div class="introText">
		<h1>
			Improve focus and boost your productivity.<br> 
			Mix different sounds and create your perfect environment.
		</h1>
	</div>
	<div class="bigBox">
		<div class="row">
			<div class="sero1 sero">
				<img src="resources/icon/bug.png" id="bug" class="picpic" alt="풀벌레" style="opacity:0.4;">
				<div class="slidecontainer">
				  <input type="range"  min="0" max="1" step="0.1" value="0.5" class="volumeGra bugS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero2 sero">
				<img src="resources/icon/fire.png" id="fire" class="picpic" alt="모닥불" style="opacity:0.4;">
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra fireS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero3 sero">
				<img src="resources/icon/forest.png" id="forest" class="picpic" alt="숲" style="opacity:0.4;">
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra forestS" id="myRange" style="display: none;">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="sero1 sero">
				<img src="resources/icon/home.png" id="home" class="picpic" alt="집" style="opacity:0.4;">	
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra homeS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero2 sero">
				<img src="resources/icon/library.png" id="library" class="picpic" alt="도서관" style="opacity:0.4;">
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra libraryS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero3 sero">
				<img src="resources/icon/night.png" id="night" class="picpic" alt="밤" style="opacity:0.4;">	
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra nightS" id="myRange" style="display: none;">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="sero1 sero">
				<img src="resources/icon/city.png" id="paris" class="picpic" alt="도시" style="opacity:0.4;">	
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra cityS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero2 sero">
				<img src="resources/icon/rain.png" id="rain" class="picpic" alt="비" style="opacity:0.4;">
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra rainS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero3 sero">
				<img src="resources/icon/sea.png" id="sea" class="picpic" alt="바다" style="opacity:0.4;">	
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra seaS" id="myRange" style="display: none;">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="sero1 sero">
				<img src="resources/icon/snow.png" id="snow" class="picpic" alt="눈" style="opacity:0.4;">	
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra snowS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero2 sero">
				<img src="resources/icon/thunder.png" id="thunder" class="picpic" alt="번개" style="opacity:0.4;">
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra thunderS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero3 sero">
				<img src="resources/icon/train.png" id="train" class="picpic" alt="기차" style="opacity:0.4;">	
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra trainS" id="myRange" style="display: none;">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="sero1 sero">
				<img src="resources/icon/wind.png" id="wind" class="picpic" alt="바람" style="opacity:0.4;">		
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra windS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero2 sero">
				<img src="resources/icon/water.png" id="water" class="picpic" alt="물" style="opacity:0.4;">
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra waterS" id="myRange" style="display: none;">
				</div>
			</div>
			<div class="sero3 sero">
				<img src="resources/icon/cafe.png" id="cafe" class="picpic" alt="카페" style="opacity:0.4;">	
				<div class="slidecontainer">
				  <input type="range" min="0" max="1" step="0.1" value="0.5" class="volumeGra cafeS" id="myRange" style="display: none;">
				</div>
			</div>
		</div>		
	</div>
</div>
<div class="boardTab">
    <div class="tabButtonArea">
        <div class="tabButton">
            <p>B<br>o<br>a<br>r<br>d</p>
        </div>
    </div>
    <div class="boardContent">
    <c:if test="${not empty sessionScope.id  }">
    	<p class="loginon">본인만의 조합을 저장하고 불러오세요</p>
    	<img src="resources/icon/save.png" class="soundSave" alt="음악저장">&emsp;&emsp;&emsp;
    	<img src="resources/icon/listen.png" class="soundLoad" alt="음악불러오기">
    </c:if>
    <c:if test="${empty sessionScope.id }">
	  	<p>please login to Siesta</p>
  	</c:if>
  	
  	<!-- 댓글창 시작 -->
  	<c:if test="${not empty sessionScope.id  }">
  	<div id="result" align="center">
	</div>
	<input type="hidden" value="${sessionScope.id }" name="writer" id="writer" >
	
	<div class="radius">
		<input type="text" id="msg" class="form-control" style="width:400px;" placeholder="please enter your comment!!!">
	</div>
	</c:if>
    </div>
</div> 
<!-- 컨텐츠 끝 -->
</body>
</html>