<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Информация о товаре</h4>
<b>Название: </b>${product.title}<br>
<b>Категория: </b>${product.category}<br>
<b>Описание: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Количество: </b>${product.quantity}<br>
<b>Продавец: </b>${product.seller_id}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>