<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Quest</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<div style="margin-left:10px;">
<h1>${quest.text}</h1>
<form action="/quest" method="POST">
        <c:forEach items="${quest.answers}" var="answer" varStatus="loop">
            <input type="radio" name="answer" value="${loop.index}" required> ${answer}<br>
        </c:forEach>
        <button class="btn btn-primary mt-1">Ответить</button>
        <br/>
            <%@ include file="progress.jsp" %>
        <br/>
        <div class="border p-2 rounded shadow-sm bg-white mt-1 d-inline-block">
            Сессия: <br/>
            Игрок: ${requestScope.name} <br/>
            ID: ${requestScope.id}
        </div>
    </div>
</form>

</body>
</html>
