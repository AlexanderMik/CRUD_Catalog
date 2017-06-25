<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<h2>Edit smartphone</h2>

<form action="edit" method="get">
    <table>
        <tr>
            <th>Id</th>
            <th>Company</th>
            <th>Model</th>
            <th>Price</th>
            <th>Year</th>
        </tr>
            <tr>
                <td>${param.get("id")}</td>
                <td>${param.get("company")}</td>
                <td>${param.get("model")}</td>
                <td><input name="price" type="number"></td>
                <td>${param.get("year")}</td>
            </tr>
    </table>
    <input type="hidden" name="id" value="${param.get("id")}">
    <input type="submit" value="edit">
</form>
</body>
</html>