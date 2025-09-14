package org.example.nav

import androidx.compose.ui.window.ComposeUIViewController
import org.example.nav.UI.HomeDetailsScreen
import org.example.nav.UI.HomeScreen
import org.example.nav.UI.SplashScreen
import org.example.nav.UI.WelcomeScreen
import platform.UIKit.UIViewController



fun SplashViewController(goWelcome: () -> Unit): UIViewController {
    return ComposeUIViewController {
        SplashScreen(goWelcome = goWelcome)
    }
}


fun WelcomeViewController(goToHome: () -> Unit): UIViewController {
    return ComposeUIViewController {
        WelcomeScreen(goToHome = goToHome)
    }
}


fun HomeViewController(goHomeDetails: () -> Unit): UIViewController {
    return ComposeUIViewController {
        HomeScreen(goHomeDetails = goHomeDetails)
    }
}


fun HomeDetailsViewController(): UIViewController {
    return ComposeUIViewController {
        HomeDetailsScreen()
    }
}