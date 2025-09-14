//
//  HomeScreen.swift
//  iosApp
//
//  Created by tasneem .. on 03/09/2025.
//

import SwiftUI
import ComposeApp


struct MainScreen: View {
    @EnvironmentObject var appCoordinator:AppCoordinatorImpl
    @StateObject var homeAppCoordinator : AppCoordinatorImpl

    init() {
        self._homeAppCoordinator = StateObject(wrappedValue:  AppCoordinatorImpl())
    }
    var body: some View {
        TabView {
            // First Tab
            ZStack{
                NavigationStackContainer {
                    AppScreenContainer(title: "Home Screen") {
                        ComposeHomeView(goToHomeDetails: {
                            homeAppCoordinator.push(.mainPath(.homeDetails))
                        })
                    }
                }.environmentObject(homeAppCoordinator)
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }

            // Second Tab
            ZStack{
                NavigationStackContainer {
                    AppScreenContainer(title: "Profile Screen") {

                    }
                }
            }
            .tabItem {
                Label("Profile", systemImage: "person")
            }

            // Third Tab (example)
            ZStack{
                NavigationStackContainer {
                    AppScreenContainer(title: "Settings Screen") {

                    }
                }
            }
            .tabItem {
                Label("Settings", systemImage: "gear")
            }
        }
    }
}


#Preview {
    MainScreen()
}



struct ComposeHomeView: UIViewControllerRepresentable {
    let goToHomeDetails: () -> Void

    func makeUIViewController(context: Context) -> UIViewController {
        ViewControllersKt.HomeViewController(goHomeDetails:goToHomeDetails)
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
