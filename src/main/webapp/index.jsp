<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    </tr>
<c:forEach var="list" items="${models.listOfAllModels}">
    <tr>
        <td>${list.id}</td>
        <td>${list.company}</td>
        <td>${list.model}</td>
        <td>${list.price}</td>
        <td>${list.year}</td>
    </tr>
</c:forEach>
</table>
</c:if>

</body>
</html>