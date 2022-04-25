package com.dru128.models

import com.dru128.tools.IDGenerator

data class User( // пользователь
    var userType: TypeUser,
    var name: String,
    var id: String = IDGenerator.generateID()
)