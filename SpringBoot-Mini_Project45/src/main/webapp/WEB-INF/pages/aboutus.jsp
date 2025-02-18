<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><sp:message code="ab.t"/></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        header {
            background: rgb(109, 191, 184);
            color: white;
            width:100%;
            height:60px;
            text-align: center;
        }

        .container {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            
        }

        .team {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .team-member {
            text-align: center;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background: #f1f8e9;
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
            border: 2px solid #28a745;
        }

        footer {
            text-align: center;
            padding: 20px 0;
            background: #333;
            color: white;
            margin-top: 20px;
        }
        nav {
            display: flex;
            justify-content: flex-end;
            background: #34495E;
            padding: 10px;
            font-size: 15px;
        }
        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
            margin:10px;
            background-color: green;
            border-radius: 10px;
        }
        nav a:hover {
            background: #1ABC9C;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1><sp:message code="ab.h"/></h1>
        <p><sp:message code="ab.p"/></p>
    </header>
<nav>

 <a href="./">Back</a>
  
</nav>
    <div class="container">
        <h2><sp:message code="ab.h2"/></h2>
        <p>
            <sp:message code="ab.p1"/>
        </p>

        <h2><sp:message code="ab.h21"/></h2>
        <p>
            <sp:message code="ab.p2"/>
        </p>

        <h2><sp:message code="ab.h22"/></h2>
        <div class="team">
            <div class="team-member">
                <img src="images/ravishastri.png" alt="Anil Kumar">
                <h3><sp:message code="ab.name1"/></h3>
                <p><sp:message code="ab.pname"/></p>
            </div>
            <div class="team-member">
                <img src="images/dravid.png" alt="Rajesh Sharma">
                <h3><sp:message code="ab.name2"/></h3>
                <p><sp:message code="ab.pname2"/></p>
            </div>
            <div class="team-member">
                <img src="images/gumbeer.png" alt="Sneha Patel">
                <h3><sp:message code="ab.name3"/></h3>
                <p><sp:message code="ab.pname3"/></p>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy;<sp:message code="home.foot"/> </p>
    </footer>
</body>
</html>
