<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sp:message code="cr.th"/></title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    color: #333;
}

header {
    background: linear-gradient(90deg, #00274d 0%, #0056b3 100%);
    color: white;
    padding: 25px;
    text-align: center;
    font-size: 32px;
    font-weight: bold;
    text-transform: uppercase;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

nav {
    display: flex;
    justify-content: center;
    background: #1a1a2e;
    padding: 15px;
}

nav a {
    color: white;
    text-decoration: none;
    padding: 12px 25px;
    font-size: 18px;
    font-weight: bold;
    margin: 0 15px;
    background: #ff9800;
    border-radius: 8px;
    transition: background 0.3s ease-in-out, transform 0.2s;
}

nav a:hover {
    background: #e67e22;
    transform: scale(1.05);
}

.container {
    max-width: 1100px;
    margin: 30px auto;
    padding: 20px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.course-section {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 30px;
    padding: 15px;
    background: #ecf0f1;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s;
}

.course-section:hover {
    transform: scale(1.02);
}

figure {
    text-align: center;
}

.course-section img {
    width: 150px;
    height: auto;
    display: block;
    margin: 0 auto;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

figcaption {
    font-size: 1.2em;
    font-weight: bold;
    margin-top: 10px;
}

.course-details {
    flex-grow: 1;
    text-align: center;
}

.course-title {
    font-size: 1.6em;
    color: #d32f2f;
    margin-bottom: 10px;
    font-weight: bold;
}

.course-fee {
    font-size: 1.2em;
    font-weight: bold;
    color: #1976d2;
}

footer {
    text-align: center;
    background: #0d47a1;
    color: white;
    padding: 15px;
    margin-top: 20px;
    font-size: 16px;
    box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.2);
    text-transform: uppercase;
}
</style>
</head>
<body>
<header>
   <h1><sp:message code="cr.th"/></h1>
</header>

<nav>
    <a href="./"><sp:message code="home.hm"/></a>
    <a href="courcejoin"><sp:message code="cr.n.a"/></a>
</nav>

<div class="container">
    <div class="course-section">
       <figure> 
       <img src="images/bating.png" alt="Batting Course">
       <figcaption><sp:message code="cr.h1"/></figcaption>
       </figure>
        <div class="course-details">
            <h2 class="course-title"><sp:message code="cr.p1"/></h2>
            <p><sp:message code="cr.p1"/></p>
            <p class="course-fee"><sp:message code="cr.p2"/></p>
        </div>
    </div>
<hr>
    
    <div class="course-section">
        <figure>
        <img src="images/ball.png" alt="Bowling Course">
        <figcaption><sp:message code="cr.fc2"/></figcaption>
        </figure>
        <div class="course-details">
            <h2 class="course-title"><sp:message code="cr.h2"/></h2>
            <p><sp:message code="cr.p11"/></p>
            <p class="course-fee"><sp:message code="cr.p22"/></p>
        </div>
    </div>

   <hr>
    <div class="course-section">
       <figure> 
       <img src="images/keeping.png" alt="Fielding Course">
       <figcaption><sp:message code="cr.fc3"/></figcaption>
       </figure>
        <div class="course-details">
            <h2 class="course-title"><sp:message code="cr.h3"/></h2>
            <p><sp:message code="cr.p111"/></p>
            <p class="course-fee"><sp:message code="cr.p222"/></p>
        </div>
    </div>
<hr>
    
    <div class="course-section">
        <figure>
        <img src="images/allrounder.png" alt="All-Rounder Course">
        <figcaption><sp:message code="cr.fc4"/></figcaption>
        </figure>
        <div class="course-details">
            <h2 class="course-title"><sp:message code="cr.h4"/></h2>
            <p><sp:message code="cr.p1111"/></p>
            <p class="course-fee"><sp:message code="cr.p2222"/></p>
        </div>
    </div>
</div>

<footer>
    &copy; <sp:message code="home.foot"/>
</footer>
</body>
</html>

