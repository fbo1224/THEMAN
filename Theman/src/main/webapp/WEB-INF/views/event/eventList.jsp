<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/*div{box-shadow: 0 0 0 1px red;}*/
	
	#wrap{
		width:1200px;
		height:2000px;
		margin:auto;
	}
	
	#content{
		width:1200px;
		height:auto;
	}
	
	.eventList{
		width:100%;
		height:400px;
	}
	.event{
		width:50%;
		height:100%;
		float:left;
		border:1px solid lightgray;
	}
	
	.img{
		width:100%;
		height:70%;
	}
	
	.eventTitle{
		font-size:23px;
		font-weight:bold;
		text-align:center;
		color:brown;
	}
	
	.eventContent{
		font-size:15px;
		color:#FBCEB1;
	}
	
	#bottom{
		width:100%;
		height:200px;
		text-align:center;
	}
	#bottomBtn{
		margin-top:100px;
	}
	
</style>
</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<div id="wrap">
		<div id="content">
		
		<div class="eventList">
			<div class="event">
				<img src="resources/images/event/event_1.png" alt="이벤트사진" class="img">
				
				<p class="eventTitle">스프링 이벤트~~!!</p>
				
				<hr>
				
				<p class="eventContent">이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	</p>
			</div>
			<div class="event">
				<img src="resources/images/event/event_2.png" alt="이벤트사진" class="img">
				
				<p class="eventTitle">써머 이벤트~~!!</p>
				
				<hr>
				
				<p class="eventContent">이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	</p>
				
			</div>
		</div>
		
		<div class="eventList">
			<div class="event">
				<img src="resources/images/event/event_3.png" alt="이벤트사진" class="img">
				
				<p class="eventTitle">어텀 이벤트~~!!</p>
				
				<hr>
				
				<p class="eventContent">이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	</p>
			
			</div>
			<div class="event">
				<img src="resources/images/event/event_4.png" alt="이벤트사진" class="img">
				
				<p class="eventTitle">윈터 이벤트~~!!</p>
				
				<hr>
				
				<p class="eventContent">이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	이벤트내용	</p>
			
			</div>
		</div>
		
		<div id="bottom">
			<button id="bottomBtn" class="btn btn-outline-primary" onclick="location.href='main.jsp'">목록으로</button>
		</div>
		
		
		
		
		</div>
	</div>
	



</body>
</html>