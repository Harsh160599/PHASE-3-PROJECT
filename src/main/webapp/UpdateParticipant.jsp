<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<%@page import="com.Operation.ParticipantOperation" %>
<%@page import="com.application.Participant" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HARSH RAJ</title>
<style>
        .navbar {
            overflow: hidden;
            background-color: #333;
        }

        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"], select, input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #333;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #ddd;
            color: black;
        }
        .navbar .logo {
            float: right;
            color: #f2f2f2;
            font-size: 24px;
            padding: 14px 16px;
            text-decoration: none;
            margin-right: 40px;
        }
    </style>
</head>
<body>
<% ParticipantOperation participantOperation=new ParticipantOperation();
List<Integer> paIds = participantOperation.getAllParticipantIds();
        request.setAttribute("paIds",  paIds );%>
        <div class="navbar">
         <div class="logo">Funfit</div>
  <a href="AddBatch.jsp">AddBatch</a>
  <a href="UpdateBatch.jsp">UpdateBatch</a>
  <a href="ViewBatch.jsp">View</a>
  <a href="AddParticipant.jsp">AddParticpant</a>
  <a href="UpdateParticipant.jsp">UpdateParticipant</a>
  <a href="ViewParticipant.jsp">View</a>
</div>
 <form action="ParticipantServlet" method="post">
                        <input type="hidden" name="action" value="update">
                         <label>Id:</label>
                        <select id="id" name="id">
                            <c:forEach  items="${paIds}" var="partIds">
                                <option value="${partIds}">${partIds}</option>
                            </c:forEach>
                        </select>
                        <br>
                           <label>Name:</label>
                            <input type="text" name="name">
                                <br>
          
                                <label>Email:</label>
                          <input type="text" name="email">
                              <br>
        
                            <label>Phone Number:</label>
                               <input type="text" name="phoneNumber">
                               <br>
        
                                <label>Batch ID:</label>
                               <input type="text" name="batchId">
                                  <br>
                        <input type="submit" value="Update Batch">
</form>
</body>
</html>