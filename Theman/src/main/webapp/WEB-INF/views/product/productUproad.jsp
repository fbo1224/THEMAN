<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<div class="insert_box">
		            <form action="${path}/event/insert" method="post" id="myform" enctype="multipart/form-data">
		            	<input type="hidden" name="userNo" value="${ sessionScope.loginUser.userNo }"/>
		            	
						<table class="tb_input">
							<tbody>
		                        <tr>
									<th>* 제목</th>
									<td><input type="text" name="eventTitle" class="title_inp" required/></td>
								</tr>
								<tr>
									<th>* 내용</th>
									<td><textarea class="content_inp" name="eventContent" required></textarea>
		                            </td>
								</tr>
		                        <tr>
									<th>* 첨부파일</th>
									<td>
										<input type="file" name="upfiles1" id="upfiles1" style="padding-right: 35px;"> <span class="file_label">* 썸네일로 등록 되는 이미지 입니다.</span>
		                            </td>
								</tr>
		                        <tr>
									<th>* 첨부파일</th>
									<td>
										<input type="file" name="upfiles2" id="upfiles2"> <span class="file_label">* 본문에 등록되는 이미지 입니다.</span>
		                            </td>
								</tr>
							</tbody>
						</table>
		                <div class="detail_btn_box" align="center">
		                    <button class="hdmy_detail_btn" type="submit">등록</button>
		                    <button class="hdmy_detail_btn" type="button" onclick="backPage();">취소</button>
		                </div>
		            </form>
		        </div> 



</body>
</html>