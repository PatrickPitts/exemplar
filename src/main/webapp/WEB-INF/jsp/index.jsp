<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
    <title>
        John Patrick Pitts - Resume - Welcome!
    </title>
    <link th:insert="templates :: css_default">
</head>
<body class="main">
<div class="image_wrapper">
    <img class="header_image" src="jpg/chalk1.jpg" alt="Hand written mathematics on my personal chalk wall!">
</div>
<div class="image_wrapper">
    <img class="header_image" src="jpg/chalk2.jpg" alt="Hand written mathematics on my personal chalk wall!">
</div>
<div class="image_wrapper">
    <img class="header_image" src="jpg/chalk3.jpg" alt="Hand written mathematics on my personal chalk wall!">
</div>
<div class="math_header" th:style="'background: url(/jpg/chalk3.jpg);'">
        <nav th:insert="templates :: default_nav"></nav>
</div>
<h2>Which field about me are you interested in?</h2>
<h1>Attempt number 9</h1>
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