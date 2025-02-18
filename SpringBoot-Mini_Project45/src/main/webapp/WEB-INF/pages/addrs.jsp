<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    
    <style >.
    body {
        font-family: sans-serif;
        background-color: rgb(113, 163, 193); 
        margin: 0;
        padding: 0;
    }
    .container {
        width: 800px; 
        height: 450px;
        margin: auto;
        background: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        overflow: hidden;
    }
    h1,p{
    text-align: center;
    color: rgb(155, 28, 76);
    }
    footer {
position: fixed;
bottom: 0;
width: 100%;
background: black;
color: white;
padding: 10px 0;
text-align: center;
overflow: hidden;
white-space: nowrap;
position: fixed;
bottom:0px;
bottom:0px;
right: 0px;
}
footer marquee{
display: inline-block;
animation: scrollFooter 10s linear infinite;
}
    </style>
</head>
<body bgcolor="rgb(113, 163, 193)">
    <h1><sp:message code="add.f"/></h1>
    <p><sp:message code="add.lo"/></p>
    <div class="container">
         
      <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d452.2598754018167!2d78.45619277019941!3d17.439726924932966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e0!4m0!4m3!3m2!1d17.439728204390576!2d78.45653072852859!5e1!3m2!1sen!2sin!4v1738956755007!5m2!1sen!2sin" width="800" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        
    </div>
    <br><br><br><br><br><br><br><br><br>
    
    
    <footer>
        <marquee><sp:message code="home.foot"/></marquee>
    </footer>
</body>

</html>
