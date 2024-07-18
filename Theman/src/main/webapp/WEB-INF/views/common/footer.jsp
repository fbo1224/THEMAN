<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <style>
		
		/*div{box-shadow: 0 0 0 1px red;}*/
		
        #footer > div{
            width: 100%;
        }

        #footer_2{
            height: 40%;
            text-align: center;
            padding-top: 40px;
        }

        #footer_3{
            height: 60%;
        }

        #footer_2 > a{
            text-decoration : none;
            color: black;
            margin: 15px;
            vertical-align: middle;
            font-size: 15px;
        }

        #footer_3 > p {
            font-size: 13px;
            text-align: center;
        }

        #footer_2 > a:hover{
            color:rgb(70, 149, 151);
        }
        #wrap{
			width: 1200px;
            height: 180px;
		}

    </style>
</head>
<body>
    
    <div id="footer">

		<div id="wrap">
	        <div id="footer_2">
	            <a href="#">개인정보보호정책</a> |
	            <a href="#">이용약관</a> |
	            <a href="#">청소년보호정책</a> |
	            ©2024 TheMan
	        </div>
	
	
	        <div id="footer_3">
	            <p>
					(주)더놀자
					주소 : 서울특별시 중구 남대문로 120 그레이츠 청계(구 대일빌딩) 2F <br>
					대표이사 : 서준형 | 책임자 : 서준형 ｜  개인정보관리책임자 : 서준형<br>
					전자우편주소 : help@theman.kr | 전화번호 : 1544-9970 
	
	            </p>
	        </div>
	        
	    </div>
    </div>
</body>
</html>