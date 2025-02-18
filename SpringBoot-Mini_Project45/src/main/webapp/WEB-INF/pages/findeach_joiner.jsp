<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/findeach.css">

</head>
<body>
<header>
<h1><sp:message code="find.each.h"/></h1>
</header>
<nav>
<a href="./"><sp:message code="home.hm"/></a>
<a href="loginform-joiner"><sp:message code="home.bk"/></a>
</nav>
								<div class="ehper">
								<h2><sp:message code="find.each.h2"/></h2>
								
								<img src="${rmsg.img_url}" alt="NotFound">
								
								
								<hr>
							   <p>Id   :${rmsg.pid}</p>
							   <p>Name   &nbsp;:&nbsp;&nbsp;${rmsg.pname}</p>
							   <p>Email &nbsp;:&nbsp;&nbsp;${rmsg.pemail}</p>
							   <p>Contact &nbsp;:&nbsp;&nbsp;${rmsg.phno}</p>
							   <p>Address &nbsp;:&nbsp;&nbsp;${rmsg.addrs}</p>
							   <p>Father Name&nbsp;:&nbsp;&nbsp;${rmsg.fathername}</p>
							   <p>Father Contact&nbsp;:&nbsp;&nbsp;${rmsg.fatherContact}</p>
							   <p>Fee&nbsp;:&nbsp;&nbsp;${rmsg.fee}</p>
							    <p>Joining Date&nbsp;:&nbsp;&nbsp;${sc.joiningDate}</p>    
								</div><br><br><br>
								<footer>
        <marquee><sp:message code="home.foot"/></marquee>
        </footer>
								
</body>
</html>