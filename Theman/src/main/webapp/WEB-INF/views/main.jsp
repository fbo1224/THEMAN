<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더맨더머</title>
</head>
<!-- swiper.js 라이브러리추가 -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

    <style>
    /* 이미지 영역 사이즈 조절 */
    .swiper {
        width: 800px;
        height: 500px;
    }

    /* 이미지 사이즈 조절 */
    .swiper-slide>img {
        width : 100%;
        height : 100%;
    }

    /* 화살표 버튼색 변경 (기본색은 파란색) */
    div[class^=swiper-button] {
        color : white;
        /* display : none; */ /* 아니면 안보이게 숨기기도 가능 */
    }
    
     .swiper-slide:hover{
            font-size: 21px;
            background-color: lightslategray;
            cursor: pointer;
        }

    
    
    </style>
<body>
	
<jsp:include page ="common/header.jsp" />
	
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
		 
		<div id="content_1">
        <!-- Slider main container -->
        <div class="swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->                	
                
                <div class="swiper-slide" onclick="aba();"><img src="${ path }/resources/images/logo/logo4.png"></div>
                <div class="swiper-slide"><img src="${ path }/resources/images/logo/logo.png"></div>
                <div class="swiper-slide"><img src="${ path }/resources/images/logo/logo1.png"></div>
                <div class="swiper-slide"><img src="${ path }/resources/images/logo/logo2.png"></div>
                <div class="swiper-slide"><img src="${ path }/resources/images/logo/logo3.png"></div>
            	
            </div>
        
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
        
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        
            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        </div>
    </div>
	
	<script>

        window.onload = function(){

            $.ajax({ // 메인화면에 이벤트 게시판 호출 해서 리스트 보여주기
        	url : 'event.event',
        	success : function(result){
        		//console.log(result);
				
        		let resultStr = '';
				for(let i = 0; i < result.length; i++){
					//console.log(result);
					resultStr += '<div class="swiper-slide"><img src="' + result[i].titleImg +'">'
					 +  '<input type="hidden" name="eventNo" value="' + result[i].eventNo +'"></div>'
				
				}
				
				$('.swiper-wrapper').html(resultStr);
        		
        	},
            async : false
        	
            });
            
            // 슬라이더 동작 정의
            const swiper = new Swiper('.swiper', {
                autoplay : {
                    delay : 5000 // 5초마다 이미지 변경
                },
                loop : true, //반복 재생 여부
                slidesPerView : 1, // 이전, 이후 사진 미리보기 갯수
                pagination: { // 페이징 버튼 클릭 시 이미지 이동 가능
                    el: '.swiper-pagination',
                    clickable: true
                },
                navigation: { // 화살표 버튼 클릭 시 이미지 이동 가능
                    prevEl: '.swiper-button-prev',
                    nextEl: '.swiper-button-next'
                }
            });
            
            
            $(function(){ // 메인 화면에 띄워진 이벤트 게시판 클릭시 해당 이벤트게시판으로 이동

                $('.swiper-slide').click(function(){
                	
                    const eventNo = $(this).children().eq(1).val();
                    //console.log(eventNo);
                    location.href = '${path}/detail.event?eventNo=' + eventNo 
                })
            });

            
            
	</script>
		
		
	<span><a href="${path}/productUproad">제품등록</a></span>
		
		
		
		
		
	<jsp:include page="common/footer.jsp" />
		
	</div>
	
	
	 
	
	
	


</body>
</html>