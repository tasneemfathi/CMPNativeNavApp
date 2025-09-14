//
//  NavigationStackCOntainer.swift
//  iosApp
//
//  Created by tasneem .. on 04/09/2025.
//

import Foundation
import SwiftUI

struct NavigationStackContainer<Content:View>: View {
    @EnvironmentObject var appCoordinator:AppCoordinatorImpl
    private let content:Content

    init(@ViewBuilder content: () -> Content) {
        self.content            = content()
    }

    var body: some View {
        NavigationStack(path: $appCoordinator.path) {
            ZStack{
                content
            }
            .navigationDestination(for: AppScreen.self) { screen in
                appCoordinator.build(screen)
            }
            .sheet(item: $appCoordinator.sheet) { sheet in
                appCoordinator.build(sheet)
                    .interactiveDismissDisabled(!appCoordinator.dismissable)
            }
            .fullScreenCover(item: $appCoordinator.fullScreenCover){ cover in
                NavigationStack {
                    appCoordinator.build(cover)
                }
            }

        }
        .environmentObject(appCoordinator)


    }
}

