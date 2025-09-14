package org.example.nav.UI

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.delay
import org.jetbrains.compose.ui.tooling.preview.Preview

@Composable
fun SplashScreen(goWelcome: () -> Unit) {
    Column (Modifier.fillMaxSize(), horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.spacedBy(20.dp)) {
        Spacer(Modifier.weight(1f))
        LaunchedEffect(Unit){
            delay(3000)
            goWelcome()
        }
        Text("🌊 Splash Screen")
        CircularProgressIndicator()
        Spacer(Modifier.weight(1f))
    }
}

@Composable
@Preview
fun PreviewSplashScreen(){
    SplashScreen {  }
}