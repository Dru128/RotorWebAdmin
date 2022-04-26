<#-- @ftlvariable name="articles" type="kotlin.collections.List<com.example.models.Article>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    link rel="stylesheet" href="design.css">
    <title>Rotor admin</title>
</head>
<body style="text-align: center; font-family: sans-serif">
<img
        src="/static/rotor_logo.png"
        alt="rotor_logo">


<form name="test" method="post" action="input1.php">

    <input type="text"  placeholder="Введите Имя" class="input_name">

    <select class="select">
        <option>Все</option>
        <option>Работник</option>
        <option>Водитель</option>
        <option>Админ</option>
    </select>
    <a href="" class="addUser">+</a>
</form>
</body>
</html>