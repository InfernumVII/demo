<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${user == null ? 'Добавить' : 'Редактировать'} пользователя</title>
</head>
<body>
    <h1>${user == null ? 'Добавить нового' : 'Редактировать'} пользователя</h1>
    
    <form action="users" method="post">
        <c:if test="${user != null}">
            <input type="hidden" name="id" value="${user.id}" />
        </c:if>
        
        <input type="hidden" name="action" value="${user == null ? 'insert' : 'update'}" />
        
        <label for="name">Имя:</label>
        <input type="text" id="name" name="name" 
               value="${user != null ? user.name : ''}" required />
        <br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" 
               value="${user != null ? user.email : ''}" required />
        <br><br>
        
        <input type="submit" value="Сохранить" />
        <a href="users">Отмена</a>
    </form>
    
    <br>
    <a href="users">К списку пользователей</a>
</body>
</html>