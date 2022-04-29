<#-- @ftlvariable name="users" type="kotlin.collections.List<com.dru128.models.User>"-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Rotor admin</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script>
        function copyId(i)
        {
            const id = document.getElementById("user_id" + i).innerText;
            navigator.clipboard.writeText(id)
            alert("скопировано в буфер обмена")
        }

        function deleteUser(i)
        {
            const id = document.getElementById("user_id" + i).innerText
            var dialog = document.querySelector('dialog')
            document.getElementById("dialog_tile").innerText = "Удалить пользователя " + id + "?"
            dialog.show()
            // Показываем диалоговое окно

            document.querySelector("#ok").onclick = async function ()
            {
                dialog.close();
                // const data = { "id": id };

                // удалить пользователя по айди
                await fetch('/user',
                {
                    method: 'DELETE',
                    headers: {'Content-Type': 'application/json'},
                    body: id
                });
            }
            document.querySelector("#cansel").onclick = function() { dialog.close() }
            // здесь нужно создать диалог с подтверждением на удаление пользователя
        }
    </script>
    <style>
        table {
            width: 300px; /* Ширина таблицы */
            margin: auto; /* Выравниваем таблицу по центру */
        }
        td {
            border: 1px solid #066fd5; /* Рамка вокруг таблицы */
            text-align: center; /* Выравниваем текст по центру ячейки */
        }
    </style>
</head>
<body style="text-align: center; font-family: sans-serif">
<dialog id="window">
    <h3 id="dialog_tile"></h3>
    <p><button id="cansel">Отмена</button></p>
    <p><button id="ok">Удалить</button></p>
</dialog>
<h2>Пользователи</h2>

<label>
    <select name="type_user_selector">
        <option value="ALL">Все</option>
        <option value="WORKER">Работники</option>
        <option value="DRIVER">Водители</option>
        <option value="ADMIN">Администраторы</option>
    </select>
</label>



  <table id="table_users">
      <tr>
          <th>Роль</th>
          <th>Идентификатор</th>
      </tr>

      <#list users?reverse as user>
      <tr>

          <td>


              <p id="user_type${user_index}">
                  <#if user.userType="DRIVER">Водитель
                  <#else>
                      <#if user.userType="WORKER">Работник
                      <#else>
                          <#if user.userType="ADMIN">Администратор
                          <#else>
                              ОШИБКА
                          </#if>
                      </#if>
                  </#if>
              </p>
          </td>

          <td>
              <p
                      id="user_id${user_index}"
                      onclick="copyId(${user_index})"
              >${user.id}</p>
          </td>
          <td onclick="deleteUser(${user_index})">
                  <input
                          type="image"
                          src="/static/delete.svg"
                          >
          </td>
      </tr>
      </#list>
    </table>


</body>
</html>