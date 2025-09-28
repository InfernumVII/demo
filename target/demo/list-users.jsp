<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Список пользователей</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        tr:nth-child(even) { background-color: #f9f9f9; }
    </style>
</head>
<body>
    <h1>Управление пользователями</h1>
    
    <a href="users?action=new">Добавить нового пользователя</a>
    <br><br>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Email</th>
            <th>Действия</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>
                    <a href="users?action=edit&id=${user.id}">Редактировать</a>
                    <a href="users?action=delete&id=${user.id}" 
                       onclick="return confirm('Вы уверены?')">Удалить</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    
    <br>
    <a href="index.jsp">На главную</a>
</body>
</html>