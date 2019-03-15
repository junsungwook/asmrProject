<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="../fm/style.css" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
</head>
<script>
function sendIt(){
   $.ajax({
      type:"get",
      url:"idCheck?userid="+$("#userid").val(),
      success: function(data){
         if(data.trim()=="ok"){
            alert("쓸수있는 아이디입니다.");
            $(opener.document).find("#id").val($("#userid").val());
            $(opener.document).find("#userid").val($("#userid").val());
            self.close();
            }else{alert("쓸수없는 아이디입니다!");}
      },
      error:function(e){
         alert("에러");
      }
   });
}
</script>
<style>
body{
	animation: myanimation 20s infinite;
}
.container{
	width: 60%;
	margin: 0 auto;
	padding-top: 30px;
	
}
@keyframes myanimation {
  0% {background-color: rgb(102, 203, 153);}
  25%{background-color: rgb(114, 189, 194);}
  50%{background-color: rgb(109, 197, 220);}
  75%{background-color: rgb(204, 137, 162);}
  100% {background-color: rgb(102, 203, 153);}
}
.container h5{
	text-align: center;
}
</style>
<body>
<div class="container">
	<h5><b>가입하실 ID를 입력하세요</b></h5>
	<input type="text" class="text" id="userid">
	<input type ="button" class="btn btn-default" onclick="sendIt()" value="중복확인">
</div>
</body>
</html>