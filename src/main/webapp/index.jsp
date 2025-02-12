<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>JRU QUEST</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<br/>
<div div class="container mt-2 bg-primary text-white text-center">
    <h1>Добро пожаловать!</h1>
</div>
<div div class="container mt-3 bg-light text-center">
    <h2>Вам предлагается пройти небольшой квест на знание основных компонентов ПК.</h2>
    <h2>Здесь не будет сложных вопросов, не стоит волноваться!</h2>
</div>
<br/>
<div class="container text-center mt-1">
    <div class="border p-2 rounded shadow-sm bg-white mt-3 d-inline-block">
        <h4 class="fw-bold">Представьтесь:</h4>
        <form action="/quest" method="GET">
            <input type="text" class="form-control d-inline w-auto" name="name" placeholder="Введите имя">
            <br/>
            <button class="btn btn-primary mt-1">Начать</button>
        </form>
    </div>
</div>
</body>
</html>