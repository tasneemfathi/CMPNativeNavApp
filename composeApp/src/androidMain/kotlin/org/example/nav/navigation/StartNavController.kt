package org.example.nav.navigation
import androidx.navigation.NavController

fun NavController.goToWelcome(){
        navigate(Welcome)
}

fun NavController.goToHome(){
    navigate(Main)
}

fun NavController.goToHomeDetails(){
    navigate(HomeDetails)
}
