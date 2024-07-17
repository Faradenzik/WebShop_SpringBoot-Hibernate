<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Список продавцов</h4>
<form>
    Поиск по имени: <input type="text" name="name"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list sellers as seller>
    <div>
        <p><b>${seller.name}</b> ${seller.email}  |  ${seller.registrationDate}
    </div>
<#else>
    <h3>Ни одного продавца не найдено</h3>
</#list>
<hr>
<h3>Добавить продавца</h3>
<form action="/sellers/create" method="post">
    Имя: <input type="text" name="name"/><br><br>
    E-mail: <input type="text" name="email"/><br><br>

    <input type="submit" value="Добавить продавца"/>
</form>
</body>
</html>