<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Каталог товаров</h4>
<form>
    Поиск по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.id}">Подробнее..</a></p>
    </div>
    <#else>
    <h3>Товары не найдены</h3>
</#list>
<hr>
<h3>Добавить товар</h3>
<form action="/products/create" method="post">
    Название: <input type="text" name="title"/><br><br>
    Категория: <input type="text" name="category"/><br><br>
    Описание: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Количество: <input type="number" name="quantity"/><br><br>
    Продавец: <input type="number" name="seller_id"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>