<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 웹폰트추가 -->
<link href="https://fonts.googleapis.com/css?family=Caveat:400,700&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/style.css" type="text/css">

<html>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://use.fontawesome.com/7ad89d9866.js"></script>
<script type="text/javascript" src="resources/script.js"></script>
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
    	<c:if test="${empty sessionScope.id }">
		  	<p style="font-family: 'Caveat', cursive;font-size:2em;">please login to Siesta</p>
	  	</c:if>
	    <c:if test="${not empty sessionScope.id  }">
	    	<p class="loginon">본인만의 조합을 저장하고 불러오세요</p>
	    	<div class="memoBox">
				<input type="text" id="memo" name="memo" class="form-control" placeholder="enter your colaboName!">
			</div>&emsp;&emsp;
	    	<img src="resources/icon/save.png" class="soundSave" alt="음악저장">&emsp;
	    	<img src="resources/icon/listen.png" class="soundLoad" alt="음악불러오기">
	   
	  	<!-- 댓글창 시작 -->
		  	<div id="result" align="center"></div>
			<input type="hidden" value="${sessionScope.id }" name="writer" id="writer" >
			<div class="radius">
				<input type="text" id="msg" class="form-control" style="width:400px;" placeholder="&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;please enter your comment!!!">
			</div>
			<br><br><br>
			<p class="loginon">다른 사용자들의 조합을 들어보고 추천하세요</p>
			<div class="view">
				<div id="colabos">
				</div>
			</div>
		</c:if>
    </div>
</div> 
<!-- 컨텐츠 끝 -->
</body>
</html>