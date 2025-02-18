<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Registration Form</title>
    <link rel="stylesheet" type="text/css" href="css/corsereg.css">
    
</head>
<body>
<header>
<h1>Course Registration</h1>
</header>
<nav>
<a href="./">Back</a>
<a href="loginform-joiner" >Login</a> 
</nav>
<h1>${rmsg}</h1>
    <div class="form-container">
        <h1>Course Registration</h1>
        <frm:form modelAttribute="cjn">
        <frm:label path="pname"> Name</frm:label><br>
        <frm:input path="pname"/><br>
        <frm:label path="pemail">Email</frm:label><br>
        <frm:input path="pemail"/><br>
        <frm:label path="phno">Phone Number</frm:label><br>
        <frm:input path="phno"/><br>
        <frm:label path="fathername">Father Name</frm:label><br>
        <frm:input path="fathername"/><br>
        <frm:label path="fatherContact">Father Contact</frm:label><br>
        <frm:input path="fatherContact"/><br>
        <frm:label path="addrs">Address</frm:label><br>
         <frm:input path="addrs"/><br>
         <frm:label path="role">Role</frm:label><br>
         <frm:input path="role"/><br>
        <frm:label path="fee">Course Fee</frm:label><br>
        <frm:input path="fee"/><br>
        <frm:label path="img_url">Image url</frm:label><br>
        <frm:input path="img_url"/><br><br>
        <input type="submit" value="Register">
        
        </frm:form>
    </div>
    <br><br><br><br><br>
 <footer>
        <marquee>CrickecoderAnil Cricket Coaching Center</marquee>
        </footer>
</body>
</html>
