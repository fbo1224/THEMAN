<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>


	#changeBtn, #reset{
			border: none;
			background-color: rgb(70, 149, 151);
			width: 120px;
			height: 50px;
			color: white;
			margin-top: 30px;
			margin-left: 70px;
			border-radius: 10px;
	}

	#changeBtn:hover, #reset:hover, #pwdCheck1:hover{
		color: black;
	}

	#pwdCheck1{
		border: none;
		background-color: rgb(202, 202, 161);
		width: 100px;
		height: 40px;
		color: white;
		font-size: 13px;
		border-radius: 10px;
	}

	#word{
		text-align: center; 
		height: 100px;
		font-size: 40px;
		font-weight: bold;
		margin-top: 10px; 
		color: rgb(70, 149, 151);
	}

	input{
		width: 300px;
		height: 40px;
		border-color: rgb(230, 230, 230);
		border-radius: 10px;
		background-repeat: no-repeat;
		background-size: 30px;
		background-position: right;
	}


	.input:focus{
		border-color: rgb(70, 149, 151);
	}

	td{
		border-bottom: 1px solid lightgray;
		margin-bottom: 10px;
		font-size: 16px;
		padding-left: 10px;
	}

	#title{
		color: rgb(70, 149, 151);
		height: 100px;
		border-bottom: 1px solid lightgray;
	}

	#title > span{
		text-align: center;
		font-weight: bold;
		font-size: 45px;
	}
		
	#table{
		margin-top: 20px;
		border-collapse: separate;
		border-spacing : 15px;
	}
</style>
	
	
</head>
<body>

	<jsp:include page="../common/header.jsp" />
	<div class="outer">
		<div id="title" align="center">
			<span>추가정보 입력</span>
		</div>
		
		<form id="enroll-form" method="post" action="${ path }/insert.me">
			<table align="center" id="table">
			
				<tr>
					<td>이름</td>
					<td><input type="text" maxlength="5" required name="memName" id="name" autofocus></td>
					<td></td>
				</tr>
				
				
				<tr>
					<td>전화번호</td>
					<td><input type="text" placeholder="-제외하고 입력해주세요." maxlength="11" name="memPhone" required></td>
					<td id="phoneMent"></td>
				</tr>

				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" placeholder="@포함하여 입력해주세요." required></td>
					<td><button class="btn btn-sm btn-primary" type="button" onclick="emailCheck();">중복확인</button></td>
				</tr>

				<script>
					function emailCheck(){
						
						const $email = $('#enroll-form input[name=email]');
						// console.log($nickname);
						$.ajax({ 
							url : 'emailCheck.do',
							data : {userEmail : $email.val()},
							success : function(result){
								
								if(result =='NNNNN'){ // 중복된 닉네임
									alert('중복되는 이메일입니다.');
								
									$email.val('').focus();
								
								} else { // 중복 X == 사용 가능
									
									if(confirm('사용 가능한 이메일입니다. 사용하시겠습니까?')){
										$email.attr('readonly', true);
										
										// 중복확인 전 막아두었던 submit버튼 활성화
										$('#enroll-form button[type=submit]').removeAttr('disabled');
									}
									else{
										$email.focus();
									}
								}
							},
							error : function(){
								console.log('AJAX통신실패');
							}
						});
					}
				
				</script>
				
			</table>

			<br><br>

			<div align="center">
				<button type="reset" class="btn btn-sm btn-secondary">취소</button>
				<button type="submit" class="btn btn-sm btn-primary" disabled id="memJoin">입력완료</button>
			</div>

			<br><br>
		
		</form>

		<!-- 정규표현식 -->
		<script>
			
			/* 이름 */
			$('input[name=memName]').blur(function(){
					const memNameReg = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|]{2,15}$/;
					const memNameVal = $('input[name=memName]').val();

					if(!memNameReg.test(memNameVal)){
						$('input[name=memName]').val('');
						$('input[name=memName]').css('border-color','orangered');
					}
					else{
						$('input[name=memName]').css('border-color','rgb(230, 230, 230)');
					}
				});
			
			/* 전화번호 */
			$('input[name=memPhone]').blur(function(){
				const phoneReg = /^01([0|1|])-?([0-9]{4})-?([0-9]{4})$/;
				const phoneVal = $('input[name=memPhone]').val();

				if(!phoneReg.test(phoneVal)){
					$('input[name=memPhone]').val('');
					$('input[name=memPhone]').css('border-color','orangered');
				}
				else{
					$('input[name=memPhone]').css('border-color','rgb(230, 230, 230)');
				}
			});
			
			/* 이메일 */
			$('input[name=email]').blur(function(){
				const emailReg = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
				const emailVal = $('input[name=email]').val();

				if(!emailReg.test(emailVal)){
					$('input[name=email]').val('');
					$('input[name=email]').css('border-color','orangered');
				}
				else{
					$('input[name=email]').css('border-color','rgb(230, 230, 230)');
				}
			});
			
		</script>
	</div>

	<jsp:include page="../common/footer.jsp" />


</body>
</html>