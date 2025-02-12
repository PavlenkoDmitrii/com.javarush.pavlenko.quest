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
<div class="progress mt-3" style="height: 20px;">
    <c:choose>
        <c:when test="${sessionScope.score == 0}">
            <div class="progress-bar" role="progressbar" style="width: 0;" aria-valuenow="0" aria-valuemin="0"
                 aria-valuemax="100"></div>
        </c:when>
        <c:when test="${sessionScope.score == 1}">
            <div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25"
                 aria-valuemin="0" aria-valuemax="100"></div>
        </c:when>
        <c:when test="${sessionScope.score == 2}">
            <div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="50"
                 aria-valuemin="0" aria-valuemax="100"></div>
        </c:when>
        <c:when test="${sessionScope.score == 3}">
            <div class="progress-bar" role="progressbar" style="width: 75%;" aria-valuenow="75"
                 aria-valuemin="0" aria-valuemax="100"></div>
        </c:when>
        <c:when test="${sessionScope.score == 4}">
            <div class="progress-bar" role="progressbar" style="width: 100%;" aria-valuenow="100"
                 aria-valuemin="0" aria-valuemax="100"></div>
        </c:when>
    </c:choose>

</div>
</body>
</html>
