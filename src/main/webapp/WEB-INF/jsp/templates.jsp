<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head th:fragment="headerfiles">
    <title>Templates</title>
    <link th:fragment="css_default" rel="stylesheet" th:href="@{/styles/style.css}">
</head>

<body>
<div th:fragment="header">
    <h1>A relevant topic!</h1>
</div>
<nav th:fragment="default_nav" class="default_nav">
    <div><a th:href="@{/math}">Math</a></div>
    <div><a th:href="@{/physics}">Physics</a></div>
    <div><a th:href="@{/cs}">Comp Sci</a></div>
    <div><a th:href="@{/app}">App Dev</a></div>
    <div><a th:href="@{/edu}">Education</a></div>
</nav>
<aside>
    <div>This is a sidebar???</div>
</aside>
<div class="another">this is another sidebar</div>
<footer th:fragment="footer">
    <a th:href="@{/math}">Math</a>
    <a th:href="@{/physics}">Physics</a>
    <a th:href="@{/cs}">Comp Sci</a>
    <a th:href="@{/app}">App Dev</a>
    <a th:href="@{/edu}">Education</a>
</footer>
</body>
</html>
