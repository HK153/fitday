<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div>
    <div>
        <h3><b>${mission.title}</b></h3>
        <p><span>작성자</span>&nbsp;| <span>${mission.date}</span>&nbsp;| <span>조회수 ${mission.viewCount}</span></p>
        <p>${mission.content}</p>
    </div>
        <div>
            <button type="button">수정하기</button>
            <button type="button">삭제하기</button>
        </div>

</div>

</body>
</html>
