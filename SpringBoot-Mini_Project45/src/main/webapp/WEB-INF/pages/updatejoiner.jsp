<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<header>
<h1><sp:message code="up.st.de"/></h1>
 <link rel="stylesheet" type="text/css" href="css/update_joiner.css">
</header>
<nav>
<a href="findalljoiners">Back</a>
<a href="./">Home</a></nav>
<article>
<div class="container">
<h2><sp:message code="up.st.de"/></h2>
			<frm:form modelAttribute="cjn"  method="post">
            
             <label class="lb">Id</label><br><br>
            <frm:input class="inp" path="pid" readonly="true" /><br><br>
            <label class="lb">Name</label><br><br>
            <frm:input class="inp" path="pname" /><br>
            <label class="lb">Email</label><br><br>
            <frm:input class="inp" path="pemail" /><br><br>
            <label class="lb">Contact</label><br><br>
            <frm:input class="inp" path="phno" /><br><br>
            <label class="lb">addrs</label><br><br>
            <frm:input class="inp" path="addrs" /><br><br>
            <label class="lb">fatherName</label><br><br>
            <frm:input class="inp" path="fathername" /><br><br>
            <label class="lb">FatherContact</label><br><br>
            <frm:input class="inp" path="fatherContact" /><br><br>
            <frm:label class="lb" path="role">Role</frm:label><br><br>
            <frm:input class="inp" path="role"/><br><br>
            <label class="lb">Fee</label><br><br>
            <frm:input class="inp" path="fee" /><br><br>
            <label class="lb">Joing Date</label><br><br>
            <frm:input class="inp" path="joiningDate" /><br><br>
            <label class="lb"><sp:message code="stu.reg.imurl"/></label><br><br>
            <frm:input class="inp" path="img_url" /><br><br>
            <input class="btn" type="submit" value="<sp:message code='stu.up' />">&nbsp;&nbsp;&nbsp;
        </frm:form>
        </div>
  <br><br><br><br>
        
        <footer>
        <marquee><sp:message code="home.foot"/></marquee>
        </footer>
</body>
</html>