<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	D
	/* 컨텐트 */
	#container{
	   width: 1200px;
	   margin: 0 auto;
	}
	
	.product_title{
	    width: 1200px;
	    text-align: center;
	    margin-bottom: 40px;
	}
	
	.product_title_a{
	    font-size: 35px;
	    font-weight: bold;
	    color: #272727;
	}
	
	 .product_title_a:hover{
	    color: #FF9843;
	    text-decoration: none;
	}
	
	.list-area{
		text-align: center;
	}
	
  	.product{
	    border: 1px solid lightgray;
	    width: 340px;
	    padding: 12px;
	    margin: 25px;
	    display: inline-block;
	}
	
	.product > img{
	    width: 300px;
	    height: 180px;
	    margin-bottom: 25px;
	}
	
	.product:hover{
	    cursor: pointer;
	    opacity: 0.8;
	}
	
	.productTitle{
	    width: 100px;
	    font-size: 17px;
	    font-weight: bold;
	}
	
	#container{
	    width: 1200px;
	    height: auto;
	    margin: 0 auto;
	}
	
	.detail_box{
	    width: 1200px;
	    height: 120px;
	    margin: 0 auto;
	    margin-top: 30px;
	    border-bottom: 1px solid lightgray;
	}
	
	.detail_title{
	    width: 1200px;
	    font-size: 25px;
	    font-weight: bold;
	    text-align: center;
	    padding-top: 20px;
	    padding-bottom: 10px;
	    border-top: 1px solid lightgray;
	}
	
	.detail_info{
	    width: 1200px;
	}
	
	.detail_info1{
	    width: 200px;
	    margin: 0 auto;
	    text-align: center;
	}
	
	.detail_content{
	    width: 1200px;
	    margin: 0 auto;
	    font-size: 15px;
	    border-bottom: 1px solid lightgray;
	}
	
	.detail_content_p{
		width: 1200px;
	    padding-top: 20px;
	    padding-bottom: 20px;
	    text-align: center;
	    white-space:pre-line;
	}
	
	.content_img{
        width: 1200px;
        height: auto;
        margin-bottom: 20px;
    }
	
	/* 목록 수정 삭제 버튼 */
	.detail_btn_box{
	    margin-top: 30px;
	}
	
	.hdmy_detail_btn {
	    display: inline-block;
	    width: 80px;
	    height: 50px;
	    padding: 8px;
	    font-size: 20px;
	    font-weight: bold;
	    border: none;
	    border-radius: 15px;
	    background-color: #FF9843;
	    color: #ffffff;
	    margin-right: 10px;
	    cursor: pointer;
	    line-height: 35px;
	    text-decoration: none;
	}
	
	.hdmy_detail_btn:hover{
	    text-decoration: none;
	    color: #FFFFFF;
	}
</style>
<body>

	<jsp:include page ="../common/header.jsp" />

	<div id="container">
        <div class="product_title"><a class="product_title_a">${product.categoryName }</a></div>

        <div class="detail_box"> <!-- 제목, 작성자 신청버튼 전부 감싸는 div -->
            <!-- <div class="detail_title"><span>${product.productName}</span></div> -->
            <input type="hidden" value="${product.userNo}"/>
            <div class="detail_info">
                <div class="detail_info1"><a>${product.createDate} &nbsp;&nbsp;| &nbsp;&nbsp;조회수 : ${product.count}</a></div>
            </div>
        </div>

        <div class="detail_content">
            <div class="detail_content_p">${product.productContent}</div>
            <c:if test="${!empty product.changeName}">
	            <img src="${path}/${product.changeName}" class="content_img"/>
	        </c:if>
        </div>

        
        <form action="" id="postForm" method="post">
		    <input type="hidden" name="productNo" value="${product.productNo}"/>
		</form>
    </div>



	<jsp:include page="../common/footer.jsp" />


</body>
</html>