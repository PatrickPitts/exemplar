<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Thymeleaf Fragments Example</title>
    <link th:insert="templates :: css_default">
</head>
<body>
<nav th:insert="templates :: default_nav"></nav>
<header th:insert="templates :: header"></header>
<div th:replace="templates :: footer"></div>
</body>
</html>
