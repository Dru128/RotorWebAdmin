package com.dru128.plugins

import com.dru128.models.TypeUser
import com.dru128.models.User
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.http.content.*
import io.ktor.server.response.*
import io.ktor.server.routing.*


fun Application.configureRouting()
{
    routing {
        get("EditUsers")
        {
            call.respond(
                FreeMarkerContent("edit_users.ftl", null)
            )
//            println("New user is created " + User(TypeUser.DRIVER, "Andreu"))
        }
        static("static") // для получения ресурсов в html из папки files
        {
            resources("files")
        }
    }
}