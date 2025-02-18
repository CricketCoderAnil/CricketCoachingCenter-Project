<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><sp:message code="reg.title"/></title>
<style>
body {
            font-family: Arial, sans-serif;
            background-color: #337ab3;
            margin: 0;
            padding: 0;
           
            
        }
header{
width: 100%;
height: 70px;
border: 2px solid black;
box-shadow: 0px 0px 10px black;
display: flex;
justify-content: flex-start;
padding: 5px;
}
header a{
color: white;
width:30px;
height:30px;
text-decoration: none;
padding: 5px 20px;
font-size: 18px;
background-color: purple;
border-radius: 5px;
}
header a:hover{
 background: linear-gradient(90deg, #ad5389 0%, #3c1053 100%);
 border-radius: 5px;
}
        h2{
        color:linear-gradient(90deg, #667eea 0%, #764ba2 100%);
        }
       .container{
       width: 320px;
       height: 800px;
       border: 2px solid black;
       margin: auto;
       padding:20px 20px;
       margin-top: 30px;
       border-radius: 20px;
       box-shadow: 0px 0px 10px black;
       
       }
       .lb{
       padding: 0px 90px;
       font-family: Verdana, Arial, Helvetica, sans-serif;
       font-size:16px; 
       }
       .inp{
        margin: 0px 40px;
        border: 2px solid black;
        padding: 5px;
        padding-left: 80px;
        border-radius: 20px;
       }
       .btn{
       width: 80px;
       height: 30px;
       margin-left: 30%;
       border-radius: 10px;
       
       
       }
       
       
.lnk{
width: 80px ;
height: 30px;
border: 2px solid black;
background-color: green;
color: white;
}
.ftr{
width: 100px;
height: 80px;
margin: auto;
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
}
footer marquee{
display: inline-block;
}
        .unique-points {
            margin-top: 20px;
            padding: 15px;
            background: #f9f9f9;
            background-color:rgb(113, 163, 193);
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
           
        }

        .unique-points h3 {
            margin-bottom: 10px;
            color: #007BFF;
            margin-left:50px;
        }

        .unique-points ul {
            list-style-type: square;
            padding: 0;
            margin: 0;
            margin-left:50px;
        }

        .unique-points ul li {
            margin-bottom: 8px;
            color: #333;
        }
        .l{
        width: 800px;
        height: 300px;
        border-radius: 30px;
        background-color: gray;
        padding :20px 20px;
        margin: auto;
        font-family: serif;
        font-size: 18px;
        }
        h3{
        color: teal;
        background: gray;
        }
        .logl{
        width:50px;
        height:30px;
        border-radius: 10px;
        }
        /* Styling the Submit and Reset Buttons */
.btn {
    width: 120px;
    height: 40px;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s ease-in-out;
     
}

.btn[type="submit"] {
    background: rgb(109, 191, 184);
    color: white;
}

.btn[type="submit"]:hover {
    background: rgb(109, 191, 184);
    transform: scale(1.05);
}

.btn[type="reset"] {
    background:rgb(109, 191, 184) ;
    color: white;
}

.btn[type="reset"]:hover {
    background: rgb(109, 191, 184);
    transform: scale(1.05);
}

/* Styling the Login Link Button */
.bt {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    background: linear-gradient(90deg, #4b0082, #6a0dad);
    color: white;
    text-decoration: none;
    border-radius: 8px;
    transition: 0.3s ease-in-out;
}

.bt:hover {
    background: linear-gradient(90deg, #6a0dad, #4b0082);
    transform: scale(1.05);
}

/* Responsive adjustments */
@media (max-width: 600px) {
    .btn {
        width: 100%;
        height: 45px;
    }
    
    .bt {
        display: block;
        text-align: center;
        width: 100%;
        margin-top: 10px;
    }
}
        
    </style>
</head>
<body>
<header>
<a class="lnk" href="./">Home</a>
</header>

    <div class="container">
        <h2 class="h">Coach Registration</h2>
        
        
        <frm:form modelAttribute="stu"  method="post">
            
            
            <label class="lb"><sp:message code="stu.reg.sname"/></label><br><br>
            <frm:input class="inp" path="sname" /><br><br>

            <label class="lb"><sp:message code="stu.reg.semail"/></label><br><br>
            <frm:input class="inp" path="semail" /><br><br>

            <label class="lb"><sp:message code="stu.reg.sphno"/></label><br><br>
            <frm:input class="inp" path="sphno" /><br><br>

            <label class="lb">Experience</label><br><br>
            <frm:input class="inp" path="exp" /><br><br>

            <label class="lb"><sp:message code="stu.reg.location"/></label><br><br>
            <frm:input class="inp" path="location" /><br><br>

            <label class="lb"><sp:message code="stu.reg.fee"/></label><br><br>
            <frm:input class="inp" path="fee" /><br><br>
            
            <label class="lb"><sp:message code="stu.reg.imurl"/></label><br><br>
            <frm:input class="inp" path="imgUrl" />
            <br><br>

            <input class="btn" type="submit" value="<sp:message code='stu.reg.register'/>">&nbsp;<br><br>
            <input class="btn" type="reset" value="Clear">
       			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a class="bt" href="loginUser"><sp:message code='logg.lb'/></a>
        
        </frm:form>
        <br><br>
		
    </div>
    <div class="unique-points">
    <div class="l">
        <h3>Did You Know?</h3>
        
        <ul>
            <li>Cricket has unique terms like "Duck," "Googly," and "Hat-trick" that make it distinct.</li>
            <li>The longest six in cricket history was 153 meters, hit by Shahid Afridi.</li>
            <li>The first international cricket match was played between the USA and Canada in 1844.</li>
            <li>A cricket match was once played in space by astronauts on the International Space Station.</li>
            <li>Cricket matches have been held on frozen lakes in Switzerland during Ice Cricket tournaments.</li>
            <li>The first Women’s Cricket World Cup was held in 1973, two years before the men’s tournament.</li>
            <li>England holds the highest ODI team total of 498/4, achieved against the Netherlands in 2022.</li>
            <li>The Marylebone Cricket Club (MCC), formed in 1787, is one of the oldest cricket organizations.</li>
        </ul>
        </div>
    </div>
</div>
<div class="emt">

</div>
<br><br>
    <footer>
        <marquee>CrickecoderAnil Cricket Coaching Center</marquee>
    </footer>
</body>
</html>
