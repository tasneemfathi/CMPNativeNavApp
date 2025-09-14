//
//  SplashScreen.swift
//  iosApp
//
//  Created by tasneem .. on 03/09/2025.
//

import SwiftUI
import ComposeApp

struct SplashScreen: View {
    @EnvironmentObject var appCoordinator:AppCoordinatorImpl
    var body: some View {
        ComposeSplashView(goToWelcome: {
            appCoordinator.showingSplash = false
        })
    }
}

#Preview {
    SplashScreen()
}


struct ComposeSplashView: UIViewControllerRepresentable {
    let goToWelcome: () -> Void
    func makeUIViewController(context: Context) -> UIViewController {
        ViewControllersKt.SplashViewController(goWelcome: goToWelcome)
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
