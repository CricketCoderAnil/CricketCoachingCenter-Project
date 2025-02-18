<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/courselogin.css">
<style >
   
</style>
</head>
<body>

<header>
<h1>Login Page</h1>
</header>
<nav>
<a href="courcejoin">Back</a>
<a href="./">Home</a>
</nav>
<div class="container">

	<h2 class="ch"><sp:message code="logg.title"/></h2>
              
    <c:if test="${not empty error}">
            <div style="color: red;">${error}</div>
            <div style="color: red;">${rmsg}</div>
            
        </c:if>
    <frm:form modelAttribute="cjn">
        <frm:label class="lb" path="pname"><sp:message code="logg.uname"/></frm:label><br><br>
        <frm:input class="inp" path="pname" placeholder="User Name" value="${cjn.pname}"/><br><br>

        <frm:label class="lb" path="pemail"><sp:message code="logg.uemail"/></frm:label><br><br>
        <frm:input class="inp" path="pemail" placeholder="Email" value="${cjn.pemail}"/><br><br>
	    <input class="butn" type="submit" value="<sp:message code='logg.lb'/>">&nbsp;&nbsp;&nbsp;
        <input class="rbutn" type="reset" value="Clear">

    </frm:form>
    
</div>
<br><br><br><br><br>
 <footer>
        <marquee><sp:message code="home.foot"/></marquee>
        </footer>
</body>
</html>