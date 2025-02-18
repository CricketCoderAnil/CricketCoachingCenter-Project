<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CrickecoderAnil Cricket Coaching Center</title>
    <!-- <link rel="stylesheet" type="text/css" href="css/home.css"> -->
    <style>
    body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            
            background-color:rgb(149, 180, 175);
            background-repeat: no-repeat;
            background-size: 100%;
        }
        header {
            background:rgb(30, 174, 149);
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 24px;
            text-transform:uppercase;;
        }
        nav {
            display: flex;
            justify-content: center;
            background: #34495E;
            padding: 10px;
        }
        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
            margin:10px;
        }
        nav a:hover {
            background: #1ABC9C;
            border-radius: 10px;
        }
        .hero {
            background: url('cricket-bg.jpg') no-repeat center center/cover;
            height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 32px;
            font-weight: bold;
            text-shadow: 2px 2px 10px black;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            text-align: center;
           
        }
        .btn {
            background: #1ABC9C;
            padding: 10px 20px;
            color: white;
            font-size: 20px;
            border: none;
            cursor: pointer;
            border-radius: 10px;
            text-decoration: none;
        }
        .btn:hover {
            background: #16A085;
        }
        footer {
            background: #2C3E50;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }
        #language{
        padding: 5px 10px;
        background-color: rgb(61, 117, 94);
        border-radius: 10px ;
        font-family: serif;
        font-size: 20px;
        
        }
 </style>
    
</head>
<body>

    <header>
        <sp:message code="home.title"></sp:message>
    </header>

    <nav>
       
    <select id="language" name="language" onchange="changeLanguage()">
        <option value=""><sp:message code="home.lan"/></option>
        <option value="?locale=en_US"><sp:message code="lan.us"/></option>
        <option value="?locale=hi_IN"><sp:message code="lan.hi"/></option>
        <option value="?locale=te_IN"><sp:message code="lan.te"/></option>
        <option value="?locale=ch_CH"><sp:message code="lan.ch"/></option>
        <option value="?locale=fr_FR"><sp:message code="lan.fr"/></option>
        <option value="?locale=ja_JP"><sp:message code="lan.jp"/></option>
    </select>
        <a href="about-us"><sp:message code="home.ab"/></a>
        <a href="cource"><sp:message code="home.cb"/></a>
        <a href="registor">Couch Registration</a>
        <a href="loginUser"><sp:message code="home.lg"/></a>
        <a href="addrs"><sp:message code="home.adrs"/></a>
       <!--  <a href="findalljoiners">Report Joiner</a> -->
       <%--  <a href="loged-out"><sp:message code="home.lou"/></a> --%>
    </nav>

    <div class="hero">
       <sp:message code="home.mdl.title"/>
       <h6>${msg}</h6>
    </div>

    <div class="container">
        <h2><sp:message code="home.h2"/></h2>
        <p><sp:message code="home.p"/></p>
        <a href=courcejoin class="btn">joiner sin up</a>
         <a href=loginform-joiner class="btn">joiner sin in</a>
    </div>

    <footer>
        &copy; <sp:message code="home.foot"/>
    </footer>


<script>
        function changeLanguage() {
            var selectedValue = document.getElementById("language").value;
            if (selectedValue) {
                window.location.href = selectedValue;  // Redirects to the selected language URL
            }
        }
    </script>
</body>
</html>
