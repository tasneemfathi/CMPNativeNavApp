import SwiftUI

@main
struct iOSApp: App {
    @StateObject var appCoordinator: AppCoordinatorImpl
    @State var showSplash = true
    init() {
        self._appCoordinator = StateObject(wrappedValue:  AppCoordinatorImpl())
    }
    var body: some Scene {
        WindowGroup {
            ZStack{
                if appCoordinator.showingSplash {
                    SplashScreen()
                } else if appCoordinator.showingWelcome{
                    WelcomeScreen()
                }else{
                    MainScreen()
                }
            }.environmentObject(appCoordinator)
        }

    }
}
