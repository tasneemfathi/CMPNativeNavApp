package org.example.nav.navigation

import android.util.Log
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.navigation.NavBackStackEntry
import androidx.navigation.NavHostController
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import androidx.navigation.toRoute

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NavigationHost() {
    val navController = rememberNavController()
    val backStackEntry by navController.currentBackStackEntryAsState()
    val currentRoute = backStackEntry?.destination?.route
    Log.d("NavigationHost", "Current route: $currentRoute")
    Log.d("NavigationHost", "${Splash}")
    Scaffold(
        topBar = {
            when(currentRoute) {
                "org.example.nav.navigation.Splash" -> {
                    // Hide app bar
                }
                "org.example.nav.navigation.Welcome" -> {
                    TopAppBar(title = { Text("Welcome") })
                }
                "org.example.nav.navigation.Main"-> {
                    TopAppBar(title = { Text("Main") })
                }
                "org.example.nav.navigation.HomeDetails" -> {
                    TopAppBar(
                        title = { Text("Details") },
                        navigationIcon = {
                            IconButton(onClick = { navController.popBackStack() }) {
                                Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                            }
                        }
                    )
                }
                else -> {
                    TopAppBar(
                        title = { Text("Details") },
                        navigationIcon = {
                            IconButton(onClick = { navController.popBackStack() }) {
                                Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                            }
                        }
                    )
                }

            }
        }
    ) { innerPadding ->
        NavHostGraph(
            navController = navController,
            startDestination = Splash,
            contentPadding = innerPadding
        )
    }

}

//
//inline fun <reified T> NavBackStackEntry?.toRouteOrNull(): T? {
//    return try {
//        this?.toRoute<T>()
//    } catch (_: Exception) {
//        null
//    }
//}