<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더맨더머</title>
</head>
<body>
	
	<jsp:forward page="WEB-INF/views/home.jsp"/>


<jsp:include page ="WEB-INF/views/common/header.jsp" />
	
	<div id="innerOuter">
		<div id="ex">
		    <div class="reservation">
		   		<img onclick="location.href='${path}/hanlasan'" src="resources/image/han.jpg">
		   		<label id="han">한라산</label>
		    </div>
		    <div class="reservation">
		    	<img onclick="location.href='aqua'"src="resources/image/아쿠아리움.png">
		    	<label id="aqua">아쿠아플라넷</label>
		    </div>
		    <div class="reservation">
		   		<img onclick="location.href='tangerine'"src="resources/image/tangerine.jpg"/>
		   		<label id="gul">감귤체험</label>
		    </div>
		 </div>
		 
		<div id ="jeju-island">
			<div id="ollemap"></div>
			<div id="content-area"></div>
		        
		    <div id="whole-course">
		        <h3>코스 한 눈에 보기</h3>
		        <div id="btn-area">
		        	
		        </div>
		    </div>
		</div>
		
	</div>


</body>
</html>