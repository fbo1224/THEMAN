<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page ="../common/header.jsp" />
	
	<div>
	
	</div>
	
    <div id="bottom-content" style="width : 100%; height : 600px; margin:auto;">

        <h2 style="font-size:38px; font-weight: 800; margin-top:50px; margin-bottom:60px;" align="center">현재 인기있는 차종~</h2>

        <div class="container">
            <div id="cacaca" class="row">
            
            </div>
        </div>
    </div>

	<jsp:include page="../common/footer.jsp" />
	
	<script>
	 $.ajax({ // 메인화면에 인기차량 선택해서 화면에 보여주기
         url : 'popular.car',
         success : function(result){

             //console.log(result);
             let resultStr = '';
				for(let i = 0; i < result.length; i++){
					if(i >= 3) break; // 3개만
					
					resultStr 
					  += '<div class="col-xs-12 col-sm-4">'
 					 + '<div class="card">'
 					   + '<a class="img-card">'
 					     + '<div class="card-content car-car">'
 					       + '<img style="width : 100%; height : 100%" src="' + result[i].carPhotoAddress +'">'
 					       + '<input type="hidden" name="popularcar" value="' + result[i].modelName + '">'
 					       + '<input type="hidden" name="popularcar2" value="' + result[i].gradeName + '">'
 					       + '<input type="hidden" name="popularcar3" value="' + result[i].fuelName + '">'
 					     + '</div>'
 					   + '</a>'
 					   + '<div>'
 					     + '<h4 calss=cardtitle>'
 					       + '<a>' + result[i].modelName + '</a>'
 					     + '</h4>'
 					   + '</div>'
 					 +'</div>'
					+ '</div>'
				}
				
				$('#cacaca').html(resultStr);

         }
     });
	
	</script>


</body>
</html>