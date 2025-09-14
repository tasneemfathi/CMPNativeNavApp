//
//  WelcomeScreen.swift
//  iosApp
//
//  Created by tasneem .. on 03/09/2025.
//

import SwiftUI
import ComposeApp

struct WelcomeScreen: View {
    @EnvironmentObject var appCoordinator:AppCoordinatorImpl

    var body: some View {
        ComposeWelcomeView(goToHome: {
            appCoordinator.showingWelcome = false
        })

    }
}

#Preview {
    WelcomeScreen()
}



struct ComposeWelcomeView: UIViewControllerRepresentable {
    let goToHome: () -> Void
    func makeUIViewController(context: Context) -> UIViewController {
        ViewControllersKt.WelcomeViewController(goToHome:goToHome)
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
