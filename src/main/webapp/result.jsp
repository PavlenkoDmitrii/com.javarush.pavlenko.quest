<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>JRU QUEST</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<c:if test="${sessionScope.score == 4}">
    <div class="container mt-4 bg-primary text-white text-center">
        <h1>Вы победили! Вполне ожидаемо!</h1>
    </div>
</c:if>
<c:if test="${sessionScope.score < 4}">
    <div class="container mt-4 bg-primary text-white text-center">
        <h1>Вы совершили невозможное и проиграли!</h1>
    </div>
</c:if>
<div class="container mt-3 bg-light text-center">
    <h2>Наверняка вы хотите попробовать еще раз!</h2>
    <br/>
    <%@ include file="progress.jsp" %>
    <br/>
    <div class="container text-center mt-1">
        <div class="border p-2 rounded shadow-sm bg-white mt-3 d-inline-block">
            <h4 class="fw-bold">Попробовать еще раз?</h4>
            <form action="/restart" method="GET">
                <button class="btn btn-primary mt-1">Конечно!</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
