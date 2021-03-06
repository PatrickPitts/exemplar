<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="stylesheet" th:href="@{/styles/res_styles.css}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Maven+Pro&display=swap" rel="stylesheet">
    <title>Resume</title>
</head>
<body>
<div class="resume-body">
    <div class="res-head">
        <table class="res-head-table">
            <tr>
                <td rowspan=2>
                    <div class="pic-wrap">
                        <img th:src="@{/jpg/bad_selfie.jpg}" alt="Just a terrible picture of my unkempt face" src=""/>
                    </div>
                </td>
                <td>
                    <div class="res-head">
                        <h2>John Patrick Pitts</h2>
                        <hr>
                        <div class="contact">
                            patrick.pitts@gmail.com | (206)-565-6233 | <a href="https://github.com/PatrickPitts">GitHub</a> | <a href="#">LinkedIn</a>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="summary">
                        <h3>Professional Summary</h3>
                        Software Developer who brings a dynamic and team-oriented approach to my work to make each
                        project the most impactful. Extensive experience with software architecture and documentation.
                        Extremely knowledgeable in developing physics and mathematics-oriented systems. Seeking to apply
                        an extensive skill set and growth mindset to develop new, scalable tools and technologies.
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <hr>
    <div class="projects">
        <h3>Projects</h3>
        <div class="project">
            <h4 class="proj-title">Principia - Projectile Motion Report Builder</h4>
            <h4 class="proj-subtitle">Personal Project, Physical Modeling and Reporting</h4>
            <ul class="proj-features">
                <li>Created modeling tool to represent projectile motion systems</li>
                <li>Implemented Matplotlib Python graphical libraries to build graphical models</li>
                <li>Leveraged Numpy Python computational libraries to build numerical models</li>
                <li>Used Reportlab Python pdf libraries to build .pdf report files</li>
            </ul>
        </div>
        <div class="project">
            <h4 class="proj-title">DMTools</h4>
            <h4 class="proj-subtitle">Personal Project</h4>
            <ul class="proj-features">
                <li>Engineered a series of tools useful to manage characters and encounters for Dungeons and Dragons,
                    5th Edition
                </li>
                <li>Integrated Front-End Infrastructure developed using Javax Swing UI design technologies in Java</li>
                <li>Introduced Back-End Infrastructure using Java with Object oriented field storage</li>
                <li>Incorporated Data Management using custom .txt file formatting, pending JSON integration</li>
            </ul>
        </div>
    </div>
    <hr>
    <div class="prof-experience">
        <h3>Professional Experience</h3>
        <div class="exp">
            <table class="exp-table">
                <tr>
                    <td>
                        <div>Oracle Certified Associate, Java SE 8 Programmer</div>
                    </td>
                    <td>
                        <div style="text-align:right">Sep 2020</div>
                    </td>
                </tr>
                <tr style="colspan:2;">
                    <td>
                        <div>Certification - Oracle</div>
                    </td>
                </tr>
            </table>
        </div>

        <div class="exp">
            <table class="exp-table">
                <tr>
                    <td>
                        <div>C2 Education</div>
                    </td>
                    <td>
                        <div style="text-align:right">Sep 2016 - Sep 2020</div>
                    </td>
                </tr>
                <tr style="colspan:2;">
                    <td>
                        <div>Math and Science Curriculum Developer, Teacher</div>
                    </td>
                </tr>
            </table>
            <ul class="exp-features">
                <li>Conducted skills analysis & long-term planning, including compiling progress reports</li>
                <li>Spearheaded research into new complex systems analysis, algorithms, & concepts</li>
                <li>Translated research into accessible material, incliding in application</li>
                <li>Introduced background knowledge & analysis into novel pedagogical strategies</li>
                <li>Fostered support in Python, SQL, C++, GitHub, Java, JavaScript, HTML/CSS, & Visual Basic</li>
            </ul>
        </div>
    </div>
    <hr>
    <div class="skills">
        <h3>Skills</h3>
        <table class="skill-table">
            <tr>
                <td>
                    <ul>
                        <li>Java</li>
                        <li>Python</li>
                        <li>HTML/CSS</li>
                        <li>SQL</li>
                        <li>JSON</li>
                    </ul>
                </td>
                <td>
                    <ul>
                        <li>Java SE 8/Java2EE</li>
                        <li>Spring MVC/Spring Boot</li>
                        <li>JPA/H2</li>
                        <li>JSP/JSTL/Thymeleaf</li>
                        <li>Maven</li>
                    </ul>
                </td>
                <td>
                    <ul>
                        <li>Git/GitHub</li>
                        <li>MySQL</li>
                        <li>Intellij/Ultimate</li>
                        <li>PyCharm</li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
    <hr>
    <div class="education">
        <h3>Education</h3>
        <div class="degree">
            <table class="deg-table">
                <tr style="font-weight:bold;">
                    <td>
                        <div>Central Washington University</div>
                    </td>
                    <td>
                        <div style="text-align:right">2023</div>
                    </td>
                </tr>
                <tr style="colspan:2;">
                    <td>
                        <div>Bachelor of Science in Computer Science</div>
                    </td>
                </tr>
            </table>

        </div>
        <div class="degree">

            <table class="deg-table">
                <tr style="font-weight:bold;">
                    <td>
                        <div>Central Washington University</div>
                    </td>
                    <td>
                        <div style="text-align:right">2016</div>
                    </td>
                </tr>
                <tr style="colspan:2;">
                    <td>
                        <div>Bachelor of Science in Physics</div>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</div>
</body>
</html>