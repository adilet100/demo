<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/assets/chat/style.css">
    <title>Test</title>
    <script defer src="/static/assets/chat/simple-peer.js"></script>
</head>
<body>
<div>
    <video width="100%" autoplay height="auto"  id="local"></video>
    <div class="controls">

        <input type="range" value="100" id="volume">
        <button id="start">Вызов</button>

    </div>
    <textarea id="offer" placeholder="Протокол отправки запроса"></textarea>
</div>
<div>
    <video width="100%" autoplay height="auto"  id="remote"></video>
    <form class="controls" id="send">
        <input type="range" value="100" id="volumeTwo">
        <button type="submit">Ответ</button>
        <textarea placeholder="Протокол отправки ответа запроса"></textarea>
    </form>
</div>
<script defer src="/static/assets/chat/main.js"></script>
</body>
</html>