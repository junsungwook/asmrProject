<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 웹폰트추가 -->
<link href="https://fonts.googleapis.com/css?family=Caveat:400,700&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
#blueone {
	border-collapse: collapse;
}
#blueone th {
	padding: 10px;
	color: #ffffff;
	border-bottom: 3px solid #ffffff;
	text-align: left;
}
#blueone td {
	color: #ffffff;
	padding: 10px;
	border-bottom: 1px solid #ffffff;
}
#blueone tr:hover td {
	color: #ffffff;
}
h1{
	font-family: 'Caveat', cursive;
	text-align: center;
	color:white;
	font-size: 4.0em;
}
body {
  animation: myanimation 20s infinite;
}
@keyframes myanimation {
  0% {background-color: rgb(102, 203, 153);}
  25%{background-color: rgb(114, 189, 194);}
  50%{background-color: rgb(109, 197, 220);}
  75%{background-color: rgb(204, 137, 162);}
  100% {background-color: rgb(102, 203, 153);}
}
</style>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
    $("#login_bt").click(function(){
        if($("#id").val()==""){
        	alert("아이디입력"); 
        	return false;
        }
        var params = $("#frm").serialize();
        $.ajax({
            type:"post",
            url:"login",
            data:params,
            success: function(data){
                if(data.trim()=="ok"){
                   alert("Siesta에 로그인 하셨습니다");   
                   opener.location.href="/app/"
                   self.close();
                   }else{alert("없는 아이디이거나 틀린 비밀번호입니다");}
             },
             error:function(e){
                alert("에러");
             }
         });
     });
});
</script>
<body>
	<h1>Siesta</h1>
	<br>
	<form name="frm" id="frm" action="login" method="post">
		<div align="center" class="container">
			<table id="blueone">
				<tr>
					<th></th>
					<th colspan=2 class="col-xs-8">
				</tr>
				<tr>
					<td>ID</td>
					<td class="col-xs-5"><input type="text" id="id" name ="id" class="form-control"></td>
					<td></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td colspan=2 class="col-xs-3"><input type="password" id="password"	name="password" class="form-control">
					<span id = 'password_valid_span'></span></td>
				</tr>
				<tr>
					<td></td>
					<td colspan=2><input type="button" id="login_bt" value="확인" class="btn btn-default"> &nbsp;&nbsp; 
					<input type="button" value="취소" class="btn btn-default"></td>
				</tr>
			</table>
		</div>
	</form>
</body>

</html>