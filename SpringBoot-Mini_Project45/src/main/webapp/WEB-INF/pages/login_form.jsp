<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style >
body{
font-family: sans-serif;
background-image: url("https://akm-img-a-in.tosshub.com/indiatoday/images/story/202311/rohit-sharma-292621597-16x9_0.jpg?VersionId=m9Gx37bF_rvAykn6dc9qzmxOL7V3tvjA");
background-repeat:no-repeat;
background-size: 100%;
} 
 header{
width: 100%;
height: 40px;
border: 2px solid black;
box-shadow: 0px 0px 10px black;
display: flex;
justify-content: center;
padding: 10px;

top: 0px;
right: 0px;
left: 0px;

}
header a{
color: white;
width:60px;
height:20px;
margin-right:300px;
text-decoration: none;
padding: 10px 20px;
font-size: 18px;
background-color: purple;
border-radius: 5px;
justify-content: center;
}
header a:hover{
 background: linear-gradient(90deg, #ad5389 0%, #3c1053 100%);
 border-radius: 5px;
}
h1{
text-align: center;
color:rgb(27, 29, 140);
margin-right: 430px;
margin-top: 0px;
}
.container{
width: 250px;
height: 300px;
border: 2px solid black;
padding: 20px 20px;
margin: auto;
border-radius: 20px;
box-shadow: 0px 0px 10px black;
background-color: rgba(113, 163, 193,0.5);
}
.ch{
margin-left: 90px;
color:rgb(14, 13, 13);
}
.lb{
margin-left:70px; 
color: rgb(53, 23, 7);
font-size:20px;
}
.inp{

border: 2px solid black;
border-radius: 10px;
margin-left: 20px;
padding: 10px 20px;
}
.butn{
margin-left: 65px;
padding:5px 10px;
border-radius:5px;
background-color: rgb(111, 199, 253);
display: inline;
}
.rbutn{
padding: 5px 10px;
border-radius:5px;
background-color: rgb(245, 148, 92);
}
nav {
display: flex;
justify-content: center;
padding: 10px;
}
nav a {
color: white;
text-decoration: none;
padding: 10px 20px;
font-size: 18px;
background-color: rgb(7, 154, 243);
border-radius: 5px;
}
nav a:hover {
 background: rgb(213, 228, 16);
 border-radius: 5px;
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
bottom: 0px;
bottom:0px;
right: 0px;
}
footer marquee{
display: inline-block;
animation: scrollFooter 10s linear infinite;
}
 .scroll-content {
        
        padding: 30px;
        background: rgba(113, 163, 193,0.5);
        font-family:serif;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        max-width: 100%;
        left:0px;
        right: 0px;
        
    }

    .description {
        font-size: 1.2em;
        color: #555;
        margin: 10px 0;
    }

    .quote {
        font-style: italic;
        color: #007BFF;
        border-left: 4px solid #007BFF;
        padding-left: 10px;
        margin: 15px 0;
    }

    .benefits {
        list-style-type: square;
        margin: 15px 0;
        padding: 0 20px;
        color: #333;
    }

    .carousel {
        display: flex;
        gap: 10px;
        overflow-x: auto;
        margin: 20px 0;
    }

    .carousel-img {
        width: 200px;
        height: 200px;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        padding: 30px;
    }

    .testimonials {
        background: #f9f9f9;
        padding: 15px;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
    }

    .testimonials h4 {
        color: #333;
    }

    .testimonials p {
        color: #666;
        font-style: italic;
    }
    .fu{
   max-width: 101%;
    height: 600px;
    background: rgba(113, 163, 193,0.5);
    top:0px;
    right: 0px;
    left: 0px;
    margin-top: 35px;
   
    
    }
   
</style>
</head>
<body>
<header>
<a href="registor"><sp:message code="home.reg"/></a>
<h1><sp:message code="home.logg.title"/></h1><br>
</header>



<h1>${result_Msg}</h1>
<br><br>
<br><br>
<div class="container">
	<h2 class="ch"><sp:message code="logg.title"/></h2>
              <frm:form modelAttribute="stu">
              	<frm:label class="lb" path="sname" ><sp:message code="logg.uname"/></frm:label><br><br>
              	<frm:input class="inp" path="sname" placeholder="User Name"/><br><br>
              	<frm:label class="lb" path="semail" >&nbsp;&nbsp;&nbsp;&nbsp;<sp:message code="logg.uemail"/></frm:label><br><br>
              	<frm:input class="inp" path="semail" placeholder="Email"/><br><br>
              	<input class="butn" type="submit" value="<sp:message code='logg.lb'/>">&nbsp;&nbsp;&nbsp;
              	<input class="rbutn" type="reset" value="Clear">
              </frm:form>
   </div>
   <br><br><br>
  <nav>
  	<a href="./"><sp:message code="home.hm"/></a>&nbsp;&nbsp;&nbsp;
  	<a href="loginform-joiner">Student Login</a>
  </nav>
  <br><br>
  
  <br><br><br><br>
  <div class="fu">
  <div class="scroll-content">
    <h3>Welcome to CrickecoderAnil Cricket Coaching Center</h3>
    <p class="description">
        At CrickecoderAnil, we aim to nurture budding cricketers with world-class training, expert guidance, and a passion for the game. Whether you're a beginner or looking to refine your skills, we have something for everyone!
    </p>
    
    <blockquote class="quote">
        "Cricket is not just a game; it's a way of life. Train hard, dream big, and achieve greatness!"
    </blockquote>
    
    <ul class="benefits">
        <li>Expert coaching from seasoned professionals.</li>
        <li>State-of-the-art training facilities.</li>
        <li>Regular practice matches and tournaments.</li>
        <li>Focus on fitness, technique, and mental toughness.</li>
    </ul>

    <div class="carousel">
        <img src="images/net.png" alt="Cricket Training" class="carousel-img">
        <img src="images/team.png" alt="Team Photo" class="carousel-img">
        <img src="images/ground.png" alt="Cricket Stadium" class="carousel-img">
    </div>
    
    <div class="testimonials">
        <h4>What Our Students Say</h4>
        <p>"Joining CrickecoderAnil has been the best decision of my cricketing journey. The coaches are incredibly supportive!" - Rahul S.</p>
        <p>"Amazing facilities and a great environment to learn and grow as a player." - Priya M.</p>
    </div>
    <br><br><br><br><br>
</div>
</div>


   <footer>
        <marquee>CrickecoderAnil Cricket Coaching Center</marquee>
    </footer>
</body>
</html>