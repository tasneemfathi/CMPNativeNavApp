package org.example.nav.navigation

import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.composable
import androidx.navigation.compose.NavHost

@Composable
fun NavHostGraph(
    navController: NavHostController,
    startDestination: Splash,
    contentPadding: PaddingValues
){
    NavHost(navController = navController, startDestination = startDestination){
        StartNavigationHost(navController)
    }
}