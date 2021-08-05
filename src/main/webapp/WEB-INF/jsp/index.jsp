<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
    <title>
        John Patrick Pitts - Resume - Welcome!
    </title>
</head>
<body class = "main">
<h2>Which field about me are you interested in?</h2>
<form th:action="@{/choose-topic}" method="post">
    <label>
        <select name="topic-choice">
            <option value="physics">Physics</option>
            <option value="math">Mathematics</option>
            <option value="cs">Computer Science</option>
            <option value="app">Application Development</option>
            <option value="edu">Education</option>
        </select>
    </label>
    <label>
        <input th:type="submit" th:value="Choose"/>
    </label>
</form>


</body>
</html>