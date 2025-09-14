package org.example.nav

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform