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
		margin : auto;
		width : 1200px;
		height : 800px;
	}
	
    #ct{
        margin: auto;
        width: 1200px;
        height: auto;
    }
    
    #title>b {
        font-size: 30px;
    }
    
    #content {
        margin: auto;
        width: 1000px;
        text-align: center;
        padding: 20px;
        border-radius: 10px;
    }
    
    .fa-chevron-down {
        margin-left: 10px;
        transition: transform 0.3s ease;
    }
    
    .q{
	    font-weight: bold;
        font-size: 20px;
        margin-top: 20px;
        color:gray;
    }
    
   .a {
        display: none;
        font-size: 18px;
        margin-bottom: 20px;
        margin-top: 10px;
        color:#FBCEB1;
    }
    
    .rotate {
        transform: rotate(180deg);
    }
    
    img{
    	width:30px;
    	height:30px;
    	float:right;
    }
    
    .plus{
    	float:left;
    }

</style>


</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<div id="wrap">
		<div id="ct">
		
			<div id="content">
	            <div id="title"><b>자주 찾는 질문</b></div>
	            <hr>
	            <div class="q"><div class="plus"></div>[회원] 비회원으로 이용할 수 없나요?<i class="fas fa-chevron-down" ></i><img src='resources/images/common/more.png'></div>
	            <p class="a">회원만 이용가능하기 때문에 양해부탁드립니다.</p>
	            <hr>
	            <div class="line"></div>
	            <div class="q"><div class="plus"></div>[회원] 회원탈퇴는 어디서 할 수 있나요?<i class="fas fa-chevron-down"></i><img src='resources/images/common/more.png'></div>
	            <p class="a">마이페이지에 개인정보 수정페이지에서 가능합니다. </p>
	             <hr>
	            <div class="line"></div>
	            <div class="q"><div class="plus"></div>[회원] 회원탈퇴는 어디서 할 수 있나요?<i class="fas fa-chevron-down"></i><img src='resources/images/common/more.png'></div>
	            <p class="a">마이페이지에 개인정보 수정페이지에서 가능합니다. </p>
	             <hr>
	            <div class="line"></div>
	            <div class="q"><div class="plus"></div>[회원] 회원탈퇴는 어디서 할 수 있나요?<i class="fas fa-chevron-down"></i><img src='resources/images/common/more.png'></div>
	            <p class="a">마이페이지에 개인정보 수정페이지에서 가능합니다. </p>
	             <hr>
	            <div class="line"></div>
	            <div class="q"><div class="plus"></div>[회원] 회원탈퇴는 어디서 할 수 있나요?<i class="fas fa-chevron-down"></i><img src='resources/images/common/more.png'></div>
	            <p class="a">마이페이지에 개인정보 수정페이지에서 가능합니다. </p>
	             <hr>
	            <div class="line"></div>
	            <div class="q"><div class="plus"></div>[회원] 회원탈퇴는 어디서 할 수 있나요?<i class="fas fa-chevron-down"></i><img src='resources/images/common/more.png'></div>
	            <p class="a">마이페이지에 개인정보 수정페이지에서 가능합니다. </p>
	            <div class="line"></div>
	        </div>
		
		
		
		
		</div>
	</div>
	
	
	<script>
	    $('.q').click(function() {
	        let answer = $(this).next();
	        answer.toggle();
	        $(this).find('.fa-chevron-down').toggleClass('rotate');
	        
	        if($('.plus').val() == ''){
		    	$(this).children('.plus').html('<img src="resources/images/common/magnifier.png">');
	        }
	        else {
	        	$(this).children('.plus').html();
	        }
	    });
	</script>

</body>
</html>