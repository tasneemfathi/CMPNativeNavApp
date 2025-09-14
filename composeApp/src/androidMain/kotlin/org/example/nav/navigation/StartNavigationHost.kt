package org.example.nav.navigation

import androidx.navigation.NavGraphBuilder
import androidx.navigation.NavHostController
import androidx.navigation.compose.composable
import org.example.nav.MainScreen
import org.example.nav.UI.HomeDetailsScreen
import org.example.nav.UI.HomeScreen
import org.example.nav.UI.SplashScreen
import org.example.nav.UI.WelcomeScreen


fun NavGraphBuilder.StartNavigationHost(navController: NavHostController) {
    composable<Splash>{
        SplashScreen(goWelcome = navController:: goToWelcome)
    }
    composable<Welcome>{
        WelcomeScreen(goToHome = navController:: goToHome)
    }

    composable<Main>{
        MainScreen(parentNavController = navController)
    }



}

