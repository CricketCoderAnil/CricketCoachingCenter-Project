<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
body {
            font-family: Arial, sans-serif;
            background-repeat: no-repeat;
            background-size: 100%;
            background-color: silver;
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
width:20px;
height:30px;
text-decoration: none;
padding: 10px 20px;
font-size: 18px;
background-color: purple;
border-radius: 5px;
justify-content: center;
margin-top: 10px;
margin-left: 50px;
}
header a:hover{
 background: linear-gradient(90deg, #ad5389 0%, #3c1053 100%);
 border-radius: 5px;
}
        h2{
        color:linear-gradient(90deg, #667eea 0%, #764ba2 100%);
        margin-left: 80px;
        }
       .container{
       width: 350px;
       height: 730px;
       border: 2px solid black;
       margin: auto;
       justify-content: center;	
      	background-color: rgba(19, 191, 84,0.1);
      	box-shadow: 0px 0px 10px black;
      	margin-top: 30px;
      	border-radius: 10px;
       }
       
       .lb{
       padding: 0px 100px;
       font-family: Verdana, Arial, Helvetica, sans-serif;
       font-size:16px; 
       
       }
 .inp{
margin: 0px 50px;
border: 2px solid black;
padding: 5px;
padding-left: 80px;
border-radius: 20px;
justify-content: center;
       }
       .btn{
       width: 80px;
       height: 30px;
       margin-left: 40%;
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
.cont {
            padding: 20px;
            max-width: 100%;
            margin: 20px auto;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            background-color: silver;
        }

        .section {
            display: flex;
            align-items: flex-start;
            margin-bottom: 30px;
        }

        .section img {
            width: 150px; 
            height: auto;
            margin-right: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 80px;
        }

        .section-title {
            font-size: 1.5em;
            margin-bottom: 10px;
            color: navy;
            text-decoration:underline;
            padding-bottom: 5px;
        }

        ul {
            list-style-type: square;
            padding: 0;
            margin: 50px;
            color: #333;
        }

        ul li {
            margin-bottom: 10px;
            color: teal;
        }

</style>
</head>
<body>

<header>
<a class="lnk" href="./">Home</a>
</header>

    <div class="container">
        <h2 class="h">Update Details</h2>
        <br>
        
        <frm:form modelAttribute="stu"  method="post">
            
             <label class="lb">Sid</label><br><br>
            <frm:input class="inp" path="sid" readonly="true" /><br>
            <label class="lb"><sp:message code="stu.reg.sname" /></label><br><br>
            <frm:input class="inp" path="sname" /><br>
            <label class="lb"><sp:message code="stu.reg.semail"/></label><br><br>
            <frm:input class="inp" path="semail" /><br>
            <label class="lb"><sp:message code="stu.reg.sphno"/></label><br><br>
            <frm:input class="inp" path="sphno" /><br>
            <label class="lb">Experience</label><br><br>
            <frm:input class="inp" path="exp" /><br>
            <label class="lb"><sp:message code="stu.reg.location"/></label><br><br>
            <frm:input class="inp" path="location" /><br>
            <label class="lb"><sp:message code="stu.reg.fee"/></label><br><br>
            <frm:input class="inp" path="fee" /><br><br>
            <label class="lb"><sp:message code="stu.reg.imurl"/></label><br><br>
            <frm:input class="inp" path="imgUrl" />
            <input class="btn" type="submit" value="Update">&nbsp;&nbsp;&nbsp;
            
        
        </frm:form>
        <br><br>
		
    </div><br>
    <hr>
    <div class="cont">
    
    <div class="section">
        <img src="images/acdm3.png" alt="General Information">
        <div>
            <h2 class="section-title"><sp:message code="upd.t"/></h2>
            <ul>
                <li><sp:message code="upd.l1"/></li>
                <li><sp:message code="upd.l2"/></li>
                <li><sp:message code="upd.l3"/></li>
                <li><sp:message code="upd.l4"/></li>
                
            </ul>
        </div>
    </div>

    
    <div class="section">
        <img src="images/acdm1.png" alt="Rules and Gameplay">
        <div>
            <h2 class="section-title"><sp:message code="upd2.t2"/></h2>
            <ul>
                 <li><sp:message code="upd2.l1"/></li>
                <li><sp:message code="upd2.l2"/></li>
                <li><sp:message code="upd2.l3"/></li>
                <li><sp:message code="upd2.l4"/></li>
                
            </ul>
        </div>
    </div>

    
    <div class="section">
        <img src="images/glw.png" alt="Equipment">
        <div>
            <h2 class="section-title"><sp:message code="upd3.t3"/></h2>
            <ul>
                 <li><sp:message code="upd3.l1"/></li>
                <li><sp:message code="upd3.l2"/></li>
                
            </ul>
        </div>
    </div>

    
    <div class="section">
        <img src="images/acdm2.png" alt="Key Skills">
        <div>
            <h2 class="section-title"><sp:message code="upd4.t4"/></h2>
            <ul>
                 <li><sp:message code="upd4.l1"/></li>
                <li><sp:message code="upd4.l2"/></li>
                <li><sp:message code="upd4.l3"/></li>
                
            </ul>
        </div>
    </div>

    <!-- Fun Facts -->
    <div class="section">
        <img src="images/ballbat.png" alt="Fun Facts">
        <div>
            <h2 class="section-title"><sp:message code="upd5.t5"/></h2>
            <ul>
                 <li><sp:message code="upd5.l1"/></li>
                <li><sp:message code="upd5.l2"/></li>
                <li><sp:message code="upd5.l3"/></li>
                
            </ul>
        </div>
    </div>
</div>
<div>

</div>
    <footer>
        <marquee><sp:message code="home.foot"/></marquee>
    </footer>
    
</body>
</html>