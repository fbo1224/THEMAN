<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>마이페이지</title>

<style>
    /*div{border: 1px solid red; box-sizing: border-box;}*/

    #wrap{
        width: 1200px;
        margin: auto;
    }
    
    #content{
    	width: 900px;
        height: auto;
        margin: auto;
        margin-bottom : 50px;
    }

    .content{
        width: 100%;
        height: 230px;
        border-bottom: 2px solid lightgray;
    }
    #content1 > div{
        float: left;
        width: 25%;
        height: 100%;
    }
    #content2 > div{
        float: left;
        width: 25%;
        height: 100%;
    }
    #content3 > div{
        float: left;
        width: 25%;
        height: 100%;
    }

    #ct1_1 > h3{
        margin-top: 35px;
        margin-left: 50px;
        font-weight: bold;
    }

    .img1{
        width: 50px;
        height: 50px;
    }

    .img1:hover{transform: scale(1.1);}
    .img2:hover{transform: scale(1.1);}

    .img2{
        width: 50px;
        height: 50px;
    }


    #name{
        font-size: 35px;
        font-weight: bold;
        margin-top: 50px;
        margin-left:50px;
    }

    #ct2_4 > button{
        border: none;
        background-color: #FBCEB1;;
        width: 100px;
        height: 40px;
        color: white;
        margin-top: 40px;
        margin-left: 70px;
        border-radius: 10px;
    }
    #ct2_4 > button:hover{color: orangered;}

    .icon{
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .iconImg{
        width: auto;
    }
    .iconImg > a > span {
        display: block;
        color: black;
    }
    .iconImg > a > span:hover{
        text-decoration: none;
    }
    a:hover{text-decoration: black;}
    
    #gradeInfo{
        display: none;
    }
    .img{
        width: 150px; 
        height: 150px; 
        margin-top: 40px; 
        margin-left: 40px;
        cursor:pointer;
    }
    .img:hover{opacity: 0.7;}
    #save{
        background-color: white;
        font-weight: bold;
        border: none;
        float: right;
    }
    #save:hover{background-color: black; color: white;}
    #profile{
    	border-radius:50px;
    }
    
</style>

</head>
<body>

		<jsp:include page="../common/header.jsp" />
	
    <div id="wrap">
    	<div id="content">
	        <div id="content1" class="content" style="height: 100px;">
	            <div id="ct1_1">
	                <h3>마이페이지</h3>
	            </div>
	            <div id="ct1_2"></div>
	            <div id="ct1_3"></div>
	            <div id="ct1_4">
	            </div>
	        </div>
	        <div id="content2" class="content">
	            <div id="ct2_1">
                    <img src="${ sessionScope.loginUser.userProfile }" id="profile" style="width:200px; height:230px;">
	            </div>
	            <div id="ct2_2">
	                <div id="name">${ sessionScope.loginUser.userNickname }님</div>
	            </div>
	            <div id="ct2_3">
	                <div id="gradeIcon">
	                
	                
	                </div>
	            </div>
	
	
	            <div id="ct2_4">
	                <button type="button" id="update" onclick="location.href='${path}/update.ck'">정보수정</button>
	                <button type="button" data-toggle="modal" data-target="#deleteForm">회원탈퇴</button>
	            </div>
	        </div>
	        <!-- 회원탈퇴 모달 -->
		<div class="modal" id="deleteForm">
			<div class="modal-dialog">
		 		<div class="modal-content">
		
		        <!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" style="color:red">회원 탈퇴</h4>
				 	<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				
				<!-- Modal body -->
				<div class="modal-body">
				<form action="${path}/delete.me" method="post">
				
				<div class="form-group">
				   	<label for="memPwd" style="font-size:20px; color:orangered">"회원탈퇴"라고 적어주세요.</label><br>
				   	<input type="text" id="delete" class="form-control" placeholder="회원탈퇴" id="deletePwd" required>
				   	
	                <button id="deleteBtn" type="submit" class="btn btn-sm btn-danger" onclick="return deleteMember();" style="float: right;" disabled>탈퇴하기</button>
	                
				</div>
				 	<input type="hidden" value="${ sessionScope.loginUser.userNo }" name="memNo">
				</form>
			 	</div>
				</div>
			</div>
		</div>
		
		<script>
			$delete = $('#delete').val();
			
			(() => {
				if($delete == '회원탈퇴'){
					$('#deleteBtn').attr('disabled', false);
				}
			})
		
		</script>
	        
	        <div id="content3" class="content">
	
	            <div class="icon"><div class="iconImg"><a href="${ path }/mypage.coupon?memNo=${ sessionScope.loginUser.userNo }"><img class="img1" src="./resources/images/myPage/order.png" alt="주문내역"><span>주문내역</span></a></div></div>
	            <div class="icon"><div class="iconImg"><a href="${ path }/mypage.heart?memNo=${ sessionScope.loginUser.userNo }"><img class="img1" src="./resources/images/myPage/heart.png" alt="찜목록"><span>찜목록</span></a></div></div>
	            <div class="icon"><div class="iconImg"><a href="${ path }/myReview.list?memNo=${ sessionScope.loginUser.userNo }"><div style="width: 80%;margin: auto;"><img class="img1" src="./resources/images/myPage/review.png" alt="리뷰"></div><span>내 리뷰</span></a></div></div>
	            <div class="icon"><div class="iconImg"><a href="${ path }/eventList?currentPage=1"><img class="img1" src="./resources/images/myPage/cancel.png" alt="결제취소"><span>결제취소</span></a></div></div>
	        </div>


    	</div>
		<%@ include file="../common/footer.jsp" %>
    </div>
</body>
</html>