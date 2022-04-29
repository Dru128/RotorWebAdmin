package com.dru128.plugins

import com.dru128.models.TypeUser
import com.dru128.models.User
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.http.content.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*


fun Application.configureRouting()
{
    val userList = listOf<User>( // for tests
        User(TypeUser.DRIVER),
        User(TypeUser.DRIVER),
        User(TypeUser.ADMIN),
        User(TypeUser.WORKER),
        User(TypeUser.DRIVER),
        User(TypeUser.WORKER),
    )

    routing {
        delete("user")
        {
            val id: String = call.receive()
            if (id.isNotEmpty())
            {
                println("id is got ready. ID = $id")
                call.respond("100") // success

                // удалить из бд
            }
            else
            {
                println("id is empty")
                call.respond("400")
            }
        }
        get("EditUsers")
        {
            call.respond(
                FreeMarkerContent("edit_users.ftl", mapOf("users" to userList))
            )
        }
        static("static") // для получения ресурсов в html из папки files
        {
            resources("files")
        }
    }
}