<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	
	/* 글쓰기 버튼 */
    .cs_board_top{
        width: 1140px;
        height: 52px;
        margin: 0 auto;
        margin-bottom: 10px;
    }

    .cs_board_top_btn{
        width: 100px;
        float: right;
    }

    .cs_btn{
        width: 80px;
        height: 45px;
        border: none;
        background-color: #FF9843;
        border-radius: 20px;
        margin-left: 10px;
        color: white;
        font-size: 15px;
        font-weight: bold;
        margin-bottom: 15px;
    }
	

	.list-area{
		text-align: center;
	}

	.product{
	    border: 1px solid #e1e1e1;
	    border-radius: 20px;
	    width: 340px;
	    padding: 12px;
	    margin: 25px;
	    display: inline-block;
	}
	
	.product > img{
	    width: 280px;
	    height: 280px;
	    margin-top: 10px;
	    margin-bottom: 25px;
	    border-radius: 20px;
	}
	
	.product:hover{
		cursor: pointer;
	    opacity: 0.9;
	}
	
	.productTitle{
	    width: 100px;
	    font-size: 17px;
	    font-weight: bold;
	    color: #272727;
	}
	
	.productTitle:hover{
		text-decoration: none;
		color: #FF9843;
	}
	
	/* 페이징바 */
    .hdmy-board_page{
    	width: 1200px;
    }
    
     .pagination {
     	width:fit-content;
     	margin: 0 auto;
     	margin-top: 40px;
     	margin-bottom: 40px;
     }
     
     .page-item.active .page-link {
     	background-color: #FF9843 !important;
     	border: 1px solid #FF9843 !important;
     	color: #FFFFFF !important;
     	font-weight: bold;
     	border-radius: 10px;
     }
     
     .page-link {
     	color: #292929 !important;
     	font-weight: bold;
     	border-radius: 10px;
     	margin-right: 10px;
     }
     
     .page-item:last-child .page-link, .page-item:first-child .page-link {
     	border-radius: 10px !important;
     }
     
	
</style>
</head>
<body>

	<jsp:include page ="../common/header.jsp" />
    
    <div id="container">
        <div class="product_title"><a class="product_title_a" href="review">THE MAN</a></div>

        <div class="list-area">
        	<c:forEach var="p" items="${product}">
	            <div class="product" align="center">
	                <input type="hidden" value="${p.productNo}" />
	                <img src="${p.changeName}" class="productImg" />
	                <p>
	                <a class="productTitle">${p.productName}</a> <br><br>
	                <label>조회수</label> : <span>${p.count}</span>
	                </p>
	            </div>
        	</c:forEach>
        </div>
        
		<div class="hdmy-board_page" id="pagination">
			<ul class="pagination">
		        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" var="p">
		            <c:choose>
		                <c:when test="${p eq pageInfo.currentPage}">
		                    <li class="page-item active"><a class="page-link" href="product?page=${p}">${p}</a></li>
		                </c:when>
		                <c:otherwise>
		                    <li class="page-item"><a class="page-link" href="product?categoryNo=${ categoryNo }&page=${p}">${p}</a></li>
		                </c:otherwise>
		            </c:choose>
		        </c:forEach>
			</ul>
        </div>
    </div>
   
    <script>
    $(() => {
	    $('.product').click(function() {
	        const productNo = $(this).find('input[type="hidden"]').val();
	        location.href = '${path}/product/' + productNo;
	    });
	});
    
    </script>

	<jsp:include page="../common/footer.jsp" />
	
	

</body>
</html>