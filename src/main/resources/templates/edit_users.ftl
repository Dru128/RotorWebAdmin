<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="design.css">
    <title>Rotor admin</title>
</head>
<body style="text-align: center; font-family: sans-serif">
<img
        src="rotor_logo.png"
        alt="rotor_logo">


<form name="test" method="post" action="input1.php">

    <input type="text"  placeholder="Введите Имя" class="input_name">

    <select class="select">
        <option>Все</option>
        <option>Работник</option>
        <option>Водитель</option>
        <option>Админ</option>
    </select>

</form>

<button class="addUser" id="openDialog">+</button>
<dialog class="dialog">
    <input type="text"  placeholder="Введите Имя" class="input_name_dialog">
    <select class="select_dialog">

        <option>Работник</option>
        <option>Водитель</option>

    </select>
    <p><button id="closeDialog" class="closeDialog">Закрыть окно</button></p>
    <p><button id="AddDialog" class="AddDialog">Добавить</button></p>
</dialog>
<script>
    var dialog = document.querySelector('dialog')
    document.querySelector(
        '#openDialog'
    ).onclick = function () {
        dialog.show() // Показываем диалоговое окно
    }
    document.querySelector(
        '#closeDialog'
    ).onclick = function () {
        dialog.close() // Прячем диалоговое окно
    }
</script>
</body>
</html>