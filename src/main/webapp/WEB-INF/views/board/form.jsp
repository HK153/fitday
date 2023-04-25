<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<jsp:include page="../header.jsp"/>
	<div>
		<form action="<%=request.getContextPath()%>" method="post">
			<div>
				<table>
					<tr>
						<td>
							<select name="boardType">
							<!-- 컨트롤러에서 불러오기. if로 talk면 커뮤니티, excercise면 운동으로 -->
								<option value="talk">커뮤니티</option>
								<option value="mission">인증</option>
							</select>
							<select name="category">
								<option value="공유">공유</option>
								<option value="추천">추천</option>
								<option value="잡담">잡담</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="제목을 입력하세요." name="title" id="title"></td>
					</tr>
					<tr>
						<td><textarea rows="20" cols="70" placeholder="내용을 입력하세요." name="content" id="content"></textarea> </td>
					</tr>
					<tr>
						<td>
							<input type="hidden" name="userSeq" value="1"><!-- 임시 회원번호 -->
							<input type="button" value="취소" onclick="cancelForm()">
							<input type="submit" value="등록" id="submitBtn">
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
<script type="text/javascript">
	function cancelForm(){
		let check = confirm('글작성을 취소하시겠습니까?');
		if(check==true){
			location.href="/board/list";
		}
	}
	
	$("#submitBtn").click(function(e){
			var title = $("#title").val();
			var content = $("#content").val();
			//공백 검색
			if(title.trim().length === 0 ||content.trim().length === 0){
				alert('내용을 입력하세요');
				e.preventDefault();
			}else{
				$("form").attr("action","/board/form");
			}					
		
	});

</script>
</body>
</html>