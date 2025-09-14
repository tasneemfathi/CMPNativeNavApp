//
//  HomeDetailsScreen.swift
//  iosApp
//
//  Created by tasneem .. on 11/09/2025.
//

import Foundation
import ComposeApp
import SwiftUI

struct HomeDetialsScreen: View {
    @EnvironmentObject var appCoordinator:AppCoordinatorImpl

    var body: some View {
        AppScreenContainer(title: "Home Details Screen") {
            ComposeHomeDetailsView()
        }
    }
}

#Preview {
    HomeDetialsScreen()
}

struct ComposeHomeDetailsView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        ViewControllersKt.HomeDetailsViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
