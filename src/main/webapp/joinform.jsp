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
var emailPattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
$(document).ready(function(){
    $("#password").keyup(function(){
        $("#pwd_check").val("");
        return false;
    });
    var pw_p= /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
    $("#password").keyup(function(){
       $("#password_valid_div").remove();
       if(!$("#password").val().match(pw_p)){
          $("#password_valid_span").append("<div style='color:red' id='password_valid_div'>"+ "사용 불가능(특수문자,영어,숫자 각 1개 이상)</div>");
          
       }
       else{
          $("#password_valid_span").append("<div style='color:green' id='password_valid_div'>"+
                "사용가능 패스워드</div>");
          $("#password_valid").val("1");
       }
    });
    
    $("#pwd_check").keyup(function(){
       $("#password_check_div").remove();
       if($("#password").val()== $("#pwd_check").val()){
          $("#password_check_span").append("<div style='color:green' id= 'password_check_div' >일치!</div>");
       }
       else{   
          $("#password_check_span").append("<div style='color:red' id='password_check_div'>불일치!</div>");
       }
          
    });
    $("#insert_bt").click(function(){
    	if(!$("#password").val().match(pw_p)){
    		alert("비밀번호는 영어,특수문자를 포함해야합니다.")
    		return false;
    	}
        if ($("#pwd_check").val() != $("#pwd_check").val()) {
          	alert("비밀번호 맞지않음");
        	return false;
        }
        if($("#name").val()==""){
        	alert("이름입력"); 
        	return false;
        }
        if($("#userid").val()==""){
        	alert("아이디입력"); 
        	return false;
        }
        if($("#userid").val()=="false"){
        	alert("아이디 중복확인 하세요");
        	return false;
        }
        if($("#phone").val()==""){
        	alert("폰번호 입력하세요");
        	return false;
        }
        var params = $("#frm").serialize();
        $.ajax({
            type:"post",
            url:"memberInsert",
            data:params,
            success: function(data){
               alert("Siesta를 즐기실 수 있습니다")
               self.close();
            },
            error:function(e){
               alert("에러");
            }
         });
     });
    
    
    $("#idcheck").click(function(){
    	window.open("IdCheck.jsp","confirm","width=500 height=150");
    	});
});
</script>
<body>
	<h1>Siesta</h1>
	<br>
	<form name="frm" id="frm" action="memberInsert" method="post">
		<input type="hidden" name="id" id="userid" value="false">
		<input type="hidden" name="password_valid">
		<input type="hidden" id="email_valid" value="false">
	
		<div align="center" class="container">
			<table id="blueone">
				<tr>
					<th></th>
					<th colspan=2 class="col-xs-8">
				</tr>
				<tr>
					<td>이름 *</td>
					<td class="col-xs-4"><input type="text" name="name" id="name" class="form-control"></td>
					<td></td>
				</tr>
				<tr>
					<td>ID *</td>
					<td class="col-xs-5"><input type="text" disabled id="id" name ="id" class="form-control"></td>
					<td><input type="button" id="idcheck" value="중복체크" class="btn btn-default"></td>
				</tr>
				<tr>
					<td>PASSWORD *</td>
					<td colspan=2 class="col-xs-3"><input type="password" id="password"	name="password" class="form-control" placeholder="(영문,특수기호포함)">
					<span id = 'password_valid_span'></span></td>
				</tr>
				<tr>
					<td>암호확인 *</td>
					<td><input type="password" id="pwd_check" class="form-control"></td>
					<td><span id = 'password_check_span'></span></td>
				</tr>
				<tr>
					<td>PHONE *</td>
					<td class="col-xs-4">
					<input type="text" name="phone" id="phone" class="form-control" maxlength="13">
					</td>
					<td ></td>
				</tr>
				<tr>
					<td></td>
					<td colspan=2><input type="button" id="insert_bt" value="확인" class="btn btn-default"> &nbsp;&nbsp; 
					<input type="button" value="취소" class="btn btn-default"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
<script>
    function autoHypenPhone(str) { // 폰번호 하이픈 하는 함수
    	str = str.replace(/[^0-9]/g, '');
    	var tmp = '';
    	if (str.length < 4) {
    		return str;
    	} else if (str.length < 7) {
    		tmp += str.substr(0, 3);
    		tmp += '-';
    		tmp += str.substr(3);
    		return tmp;
    	} else if (str.length < 11) {
    		tmp += str.substr(0, 3);
    		tmp += '-';
    		tmp += str.substr(3, 3);
    		tmp += '-';
    		tmp += str.substr(6);
    		return tmp;
    	} else {
    		tmp += str.substr(0, 3);
    		tmp += '-';
    		tmp += str.substr(3, 4);
    		tmp += '-';
    		tmp += str.substr(7);
    		return tmp;
    	}
    	return str;
    }
	    var cellPhone = document.getElementById('phone');
	    
	    cellPhone.onkeyup = function(event) {
	   	event = event || window.event;
    	var val = this.value.trim();
    	this.value = autoHypenPhone(val);
   }
</script>
</html>