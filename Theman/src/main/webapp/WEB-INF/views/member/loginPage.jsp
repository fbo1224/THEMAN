<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>

	<style>
		#wrap{
			width: 1200px;
			height: 600px;
			margin: auto;
		}

		#content{
			width: 50%;
			margin: auto;
			border: 1px solid lightgray;
			margin-top: 50px;
		}

		.content{
			width: 100%;
			margin: auto;
		}

		#content2{
			color: lightgray;
		}

		#loginword{margin-top: 10px; color: #FBCEB1;}

		#loginword > span{
			text-align: center; 
			height: 100px;
			font-size: 40px;
			font-weight: bold;
		}
		
		
		#login-area{width: 100%; height: 100%;}
		
		#id, #password{
			margin-top: 20px;
		}

		#id{
			background-image: url('resources/images/login/person.png');
		}

		#password{
			background-image: url('resources/images/login/password.png');
		}

		.input{
			outline-color: #FBCEB1;
		}

		.input{
			width: 400px;
			height: 50px;
			border-color: rgb(230, 230, 230);
			border-radius: 10px;
			background-repeat: no-repeat;
			background-size: 30px;
			background-position: right;
		}
		#content{text-align: center;}

		#content2 > a{
			text-decoration: none;
			color: rgb(99, 99, 99);
		}

		#content3{
			margin-top: 50px;
		}

		.loginBtn{
			width: 400px;
			height: 50px;
			background-color: #FBCEB1;
			color: white;
			font-size: 20px;
			font-weight: bold;
			margin-bottom: 30px;
			border:none;
		}
		.loginBtn:hover{color:orange;}
	
	</style>

</head>
<body>

	<jsp:include page ="WEB-INF/views/common/header.jsp" />

		<div id="wrap">
			<div id="content">
				<div id="loginword">
					<span>로그인</span>
				</div>
				<div id="login-area" class="content">
					<form action="${ path }/login" method="post">
						<div id="content1">
							<input type="text" name="memId" id="id" class="input" placeholder="아이디" maxlength="12" autofocus required>
							<input type="password" name="memPwd" id="password" class="input" placeholder="비밀번호" maxlength="15" required>
						</div>

						<div id="content2" class="content">
							<br><br>
							<a href="${ path }/findIdPage">아이디 찾기</a>
							&nbsp;&nbsp;|&nbsp;&nbsp;
							<a href="${ path }/findPwdPage">비밀번호 찾기</a>
						</div>

						<div id="content3">
							<button type="submit" class="loginBtn">로그인</button>
						</div>

					</form>
				
				</div>
			</div>
		
		</div>
</body>
</html>