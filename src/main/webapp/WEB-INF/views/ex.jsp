<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 웹폰트추가 -->
<link href="https://fonts.googleapis.com/css?family=Caveat:400,700&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>

</script>
<style>
body {
  overflow: hidden;
  background: #000;
}
body .container {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 500px;
  height: 300px;
  margin: -150px -250px;
  counter-reset: tab-counter 5;
}
body .container input[type=radio] {
  display: none;
}
body .container input[type=radio]:checked + label ~ label:nth-child(2) {
  width: 78px;
}
body .container input[type=radio]:checked + label ~ label:nth-child(2) .content {
  -webit-transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  opacity: 0;
  pointer-events: none;
}
body .container input[type=radio] + label {
  position: absolute;
  height: 100%;
  box-shadow: 2px 0px 4px -2px #000;
  cursor: pointer;
  -webit-transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
}
body .container input[type=radio] + label:nth-child(2) {
  box-shadow: none;
}
body .container input[type=radio] + label:nth-child(2) {
  width: 500px;
  background: #9575CD;
}
body .container input[type=radio] + label .content {
  position: absolute;
  left: 50%;
  top: 50%;
  width: 250px;
  margin-left: -125px;
  counter-increment: tab-counter -1;
  text-align: center;
}
body .container input[type=radio] + label .content:after {
  content: counter(tab-counter);
}
body .container input[type=radio]:checked + label ~ label:nth-child(4) {
  width: 54px;
}
body .container input[type=radio]:checked + label ~ label:nth-child(4) .content {
  -webit-transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  opacity: 0;
  pointer-events: none;
}
body .container input[type=radio] + label {
  position: absolute;
  height: 100%;
  box-shadow: 2px 0px 4px -2px #000;
  cursor: pointer;
  -webit-transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
}
body .container input[type=radio] + label:nth-child(2) {
  box-shadow: none;
}
body .container input[type=radio] + label:nth-child(4) {
  width: 476px;
  background: #64B5F6;
}
body .container input[type=radio] + label:nth-child(4):after {
  position: absolute;
  content: '';
  top: 50%;
  left: 100%;
  width: 18px;
  height: 75px;
  border-radius: 0 7.5px 7.5px 0;
  background: #64B5F6;
  box-shadow: 3px 0px 6px -3px #000;
}
body .container input[type=radio] + label .content {
  position: absolute;
  left: 50%;
  top: 50%;
  width: 250px;
  margin-left: -125px;
  counter-increment: tab-counter -1;
  text-align: center;
}
body .container input[type=radio] + label .content:after {
  content: counter(tab-counter);
}
body .container input[type=radio]:checked + label ~ label:nth-child(6) {
  width: 30px;
}
body .container input[type=radio]:checked + label ~ label:nth-child(6) .content {
  -webit-transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  opacity: 0;
  pointer-events: none;
}
body .container input[type=radio] + label {
  position: absolute;
  height: 100%;
  box-shadow: 2px 0px 4px -2px #000;
  cursor: pointer;
  -webit-transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
}
body .container input[type=radio] + label:nth-child(2) {
  box-shadow: none;
}
body .container input[type=radio] + label:nth-child(6) {
  width: 452px;
  background: #81C784;
}
body .container input[type=radio] + label:nth-child(6):after {
  position: absolute;
  content: '';
  top: 25%;
  left: 100%;
  width: 18px;
  height: 75px;
  border-radius: 0 7.5px 7.5px 0;
  background: #81C784;
  box-shadow: 3px 0px 6px -3px #000;
}
body .container input[type=radio] + label .content {
  position: absolute;
  left: 50%;
  top: 50%;
  width: 250px;
  margin-left: -125px;
  counter-increment: tab-counter -1;
  text-align: center;
}
body .container input[type=radio] + label .content:after {
  content: counter(tab-counter);
}
body .container input[type=radio]:checked + label ~ label:nth-child(8) {
  width: 6px;
}
body .container input[type=radio]:checked + label ~ label:nth-child(8) .content {
  -webit-transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: opacity 0.4s cubic-bezier(0.11, 0.65, 0.04, 1);
  opacity: 0;
  pointer-events: none;
}
body .container input[type=radio] + label {
  position: absolute;
  height: 100%;
  box-shadow: 2px 0px 4px -2px #000;
  cursor: pointer;
  -webit-transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
  transition: width 1.2s cubic-bezier(0.11, 0.65, 0.04, 1);
}
body .container input[type=radio] + label:nth-child(2) {
  box-shadow: none;
}
body .container input[type=radio] + label:nth-child(8) {
  width: 428px;
  background: #E57373;
}
body .container input[type=radio] + label:nth-child(8):after {
  position: absolute;
  content: '';
  top: 0%;
  left: 100%;
  width: 18px;
  height: 75px;
  border-radius: 0 7.5px 7.5px 0;
  background: #E57373;
  box-shadow: 3px 0px 6px -3px #000;
}
body .container input[type=radio] + label .content {
  position: absolute;
  left: 50%;
  top: 50%;
  width: 250px;
  margin-left: -125px;
  counter-increment: tab-counter -1;
  text-align: center;
}
body .container input[type=radio] + label .content:after {
  content: counter(tab-counter);
}

</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <input type="radio" name="tabs" id="tab_1"/>
  <label for="tab_1">
    <div class="content">Hello, I'm #</div>
  </label>
  <input type="radio" name="tabs" id="tab_0"/>
  <label for="tab_0">
    <div class="content">Hello, I'm #</div>
  </label>
</div>
</body>
</html>