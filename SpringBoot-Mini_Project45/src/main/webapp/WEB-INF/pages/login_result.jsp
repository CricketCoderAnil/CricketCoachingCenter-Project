<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report Page</title>
<style>
body{

font-family: Verdana, sans-serif;
font-size: 16px;
color: rgb(50, 64, 127);
background-color: rgba(61, 211, 197,0.5);
}
header{
width: 100%;
height: 80px;
left:0px;
right:0px;
top:0px;
display:inline-block;
border: 2px solid black;
background-color: rgb(18, 67, 128);
position: absolute;
}
h2{
position: relative;
text-align: center;
top: 0px;
color:rgb(6, 4, 6);
}
header a{
text-decoration: none;
padding: 12px 24px;
font-size: 16px;
background-color: blue;
border-radius: 10px;
color: white;
display: inline-block;
margin-left: 20%;
margin-top: 20px;
}
header a:hover{
background-color: purple;
border-radius: 10px;
}
aside{
width: 170px;
height: 100vh;
position:fixed;
left:0px;
right:0px;
top:0px;
border: 2px solid black;
background-color: rgb(91, 147, 180);
display: block;
justify-content: center;
}
aside img{
width: 150px;
height: 150px;
border-radius: 50%;
border: 2px solid black;
}
aside a{
display: block;
margin-left: 20px;
text-decoration: none;
padding: 10px 20px;
background-color: purple;
width: 50px;
justify-content: center;
color:white;
border-radius: 10px;

}
aside a:hover{
background-color: rgb(117, 186, 117);
}
table{
width: 250px;
height: 200px;
border: 2px solid black;
margin:auto;
margin-top: 100px;
background-color:rgba(144, 126, 211,0.5);
}

h1{
text-align: center;
color: rgb(24, 11, 17);
text-decoration: underline;
}
.pgcon{
width: 500px;
height: 100px;
margin: auto;
color:rgb(156, 5, 79);
}
.pgcon a{
text-decoration: none;
padding:10px 20px;
font-size: 15px;
background-color: blue;
position: relative;
border-radius: 10px;
color: white;

}
.pgcon a:hover {
	background-color: orange;
	border-radius: 10px;
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
.prof{
width: 100%;
height: 100%;
 
}
.ehper{
 width: 100%;
 height:300px;
 padding-top: 10px;
 box-shadow: 0px 0px 20px black;
 background-color: rgba(26,16,26,0.1);
}
.ehper p{
position: relative;
left: 50%;
color: black;

}
.ehper img{
width: 250px;
height: 250px;
margin-left:200px;
position: absolute;
margin-top: 20px;
border-radius: 50%;
border: 5px solid #34495e; 
}
</style>
</head>

<body>
   <header>
   <h2>Coach Details</h2>
   
   
   </header>
   
   <aside>
   
   <img alt="noImage" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqD9fsoCOvAvSTf3f4gDUlB1VHs8qZK1WSkA&s">
   <br><br><a href="about-us"> About</a><br><br>
   
   <a href="addrs"> Address</a><br><br>
   <a href="findalljoiners">Student Report</a><br><br>
   
   <a href="./">Home</a>
   </aside>
   
   <article>
   
   
   <br><br><br>
   <div class=".tbcon">
   <c:choose>
    <c:when test="${!empty result_Msg.getContent()}">
   <table border="2" >
   <thead><h1>Coach Report</h1></thead>
   <tr>
   <th>Sid</th>
   <th><sp:message code="stu.reg.sname"/></th>
   <th><sp:message code="stu.reg.semail"/></th>
   <th><sp:message code="stu.reg.sphno"/></th>
   <th>Expirence</th>
   <th><sp:message code="stu.reg.location"/></th>
   <th><sp:message code="stu.reg.fee"/></th>
   <th>Join Date</th>
   <th>Oparetions</th>
   </tr>
   <c:forEach var="sc" items="${result_Msg.getContent()}">
   <tr><td>${sc.sid}</td>
   <td>${sc.sname}</td>
   <td>${sc.semail}</td>
   <td>${sc.sphno}</td>
   <td>${sc.exp}</td>
   <td>${sc.location}</td>
   <td>${sc.fee}</td>
   <td>${sc.joingDate}</td>
   <td><a href="edit?no=${sc.sid}"><img width="30px" height="30px"  src="images/edit.png"></a>&nbsp;&nbsp;&nbsp;<a href="delete?no=${sc.sid}"><img width="30px" height="30px" src="images/delete.png"></a></td>
   </tr>
   </c:forEach>
   </table>
   </c:when>
<c:otherwise>
<h1>No Data Found</h1>
</c:otherwise>
</c:choose>
</div><br>


		   <div class="pgcon">
		<c:if test="${result_Msg.hasPrevious() }">
		<a href="report?page=${result_Msg.getNumber()-1}">Previos</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		<c:if test="${!result_Msg.isFirst()}">
		<a href="report?page=0">First</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		<c:forEach var="i" begin="1" end="${result_Msg.getTotalPages()-1}" step="1">
		<a href="report?page=${i-1}">${i}</a>&nbsp;&nbsp;&nbsp;
		</c:forEach>
		
		<c:if test="${!result_Msg.isLast()}">
		<a href="report?page=${result_Msg.getNumber()+1}">Next</a>&nbsp;&nbsp;&nbsp;
		<a href="report?page=${result_Msg.getTotalPages()-1}">Last</a>&nbsp;&nbsp;&nbsp;
		</c:if><br><br>
		
		
		</div>
				<div class="regcon">
				<c:choose>
				<c:when test="${!empty resultMsg}">
				<h1>${resultMsg}</h1>
				</c:when>
				</c:choose>
				</div>
				<br><br><br><br>
				<hr>
				
				<div class="prof">
				<h1 style ="text-align: center;color: rgb(177, 190, 13);">Student Info</h1>
					<c:forEach var="sc" items="${result_Msg.getContent()}">
						<div class="ehper">
						<img src="${sc.imgUrl}" alt="NotFound">
							   <p>Sid&nbsp;:&nbsp;&nbsp;${sc.sid}</p>
							   <p><sp:message code="stu.reg.sname"/>&nbsp;:&nbsp;&nbsp;${sc.sname}</p>
							   <p><sp:message code="stu.reg.semail"/>&nbsp;:&nbsp;&nbsp;${sc.semail}</p>
							   <p><sp:message code="stu.reg.sphno"/>&nbsp;:&nbsp;&nbsp;${sc.sphno}</p>
							   <p>Join Date&nbsp;:&nbsp;&nbsp;${sc.joingDate}</p>
							   <p>Expirence&nbsp;:&nbsp;&nbsp;${sc.exp}</p>
							   <p><sp:message code="stu.reg.location"/>&nbsp;:&nbsp;&nbsp;${sc.location}</p>
							   <p><sp:message code="stu.reg.fee"/>&nbsp;:&nbsp;&nbsp;${sc.fee}</p>
							   
							   
							   
						</div>
					<hr>
					
					
					</c:forEach>
				</div>
</article>
<br><br>
<footer>
        <marquee>CrickecoderAnil Cricket Coaching Center</marquee>
    </footer>
</body>
</html>