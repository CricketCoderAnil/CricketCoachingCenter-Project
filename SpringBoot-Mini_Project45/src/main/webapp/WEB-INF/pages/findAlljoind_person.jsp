<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/findall_joiners.css">

</head>
<body>
<header>
    <h1><sp:message code="fdall.h.h"/></h1>
</header>

<nav>
    <a href="report">Back</a>
    <a href="./">Home</a>
</nav><br><br><br>

<div class="prof">
    <c:choose>
        <c:when test="${!empty rmsg.getContent()}">
            <c:forEach var="rm" items="${rmsg.getContent()}" varStatus="loop">
                <div class="profile-card bg-color-${loop.index % 5}">
                    <figure>
                        <img class="profile-img" src="${rm.img_url}" alt="Not Found">
                        <figcaption class="profile-name">${rm.pname}</figcaption>
                    </figure>
                    <div class="profile-details">
                        <p><strong>Id:</strong> ${rm.pid}</p>
                        <p><strong>Name:</strong> ${rm.pname}</p>
                        <p><strong>Email:</strong> ${rm.pemail}</p>
                        <p><strong>Contact:</strong> ${rm.phno}</p>
                        <p><strong>Address:</strong> ${rm.addrs}</p>
                        <p><strong>Father Name:</strong> ${rm.fathername}</p>
                        <p><strong>Father Contact:</strong> ${rm.fatherContact}</p>
                        <p><strong>Fee:</strong> ${rm.fee}</p>
                        <p><strong>Joining Date:</strong> ${rm.joiningDate}</p>
                        
                        <p class="profile-actions">
                            <a href="editing?no=${rm.pid}">
                                <img width="30px" height="30px" src="images/edit.png">
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="deleting?no=${rm.pid}">
                                <img width="30px" height="30px" src="images/delete.png">
                            </a>
                        </p>
                    </div>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <h1><sp:message code="fdall.h"/></h1>
        </c:otherwise>
    </c:choose>
</div>

<br><br><br><br><br><br><br><br>
<hr>

	<footer>
        <marquee><sp:message code="home.foot"/></marquee>
        </footer>		
</body>
</html>