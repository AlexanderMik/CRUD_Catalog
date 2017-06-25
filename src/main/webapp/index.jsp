<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Smartphone catalog</title>
    <style type="text/css">
        TABLE {
            border-collapse: collapse; /* Убираем двойные линии между ячейками */
            width: 300px; /* Ширина таблицы */
        }
        TH {
            background: #fc0; /* Цвет фона ячейки */
            text-align: left; /* Выравнивание по левому краю */
        }
        TD {
            background: #fff; /* Цвет фона ячеек */
            text-align: center; /* Выравнивание по центру */
        }
        TH, TD {
            border: 1px solid black; /* Параметры рамки */
            padding: 4px; /* Поля вокруг текста */
        }
    </style>
</head>
<body>
<h2>Smartphone catalog</h2>

<jsp:useBean id="models" class="dao.Manager"/>

<c:if test="${!empty models.listOfAllModels}">
    <table>
        <tr>
            <th>Id</th>
            <th>Company</th>
            <th>Model</th>
            <th>Price</th>
            <th>Year</th>
            <th>Edit price</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="list" items="${models.listOfAllModels}">
            <tr>
                <td>${list.id}</td>
                <td>${list.company}</td>
                <td>${list.model}</td>
                <td>${list.price}</td>
                <td>${list.year}</td>
                <td><a href="edit.jsp?id=${list.id}&company=${list.company}&model=${list.model}&year=${list.year}">edit</a></td>
                <td><a href="delete?id=${list.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<h3>Add a smartphone</h3>
<form action="AddServlet" method="post">
    <table>
        <tr>
            <td>Company</td>
            <td><input name="company" type="text"></td>
        </tr>
        <tr>
            <td>Model</td>
            <td><input name="model" type="text"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input name="price" type="number"></td>
        </tr>
        <tr>
            <td>Year</td>
            <td><input name="year" type="number"></td>
        </tr>
    </table>
    <input type="submit" value="add">
</form>
</body>
</html>