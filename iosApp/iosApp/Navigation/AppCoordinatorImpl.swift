//
//  AppCoordinator.swift
//  UGO Rider
//
//  Created by tasneem .. on 24/08/2025.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUI

class AppCoordinatorImpl: AppCoordinatorProtocol {


    // MARK: - Navigation
     @Published var path: NavigationPath = NavigationPath()
     @Published var sheet: AppSheet? = nil
     @Published var fullScreenCover: AppCovers? = nil
     @Published var dismissable: Bool = true
     @Published var dismiss: Bool = false
     @Published var showingSplash: Bool = true
     @Published var showingWelcome: Bool = true


     // MARK: - Navigation Functions
     func push(_ screen: AppScreen) {
         path.append(screen)
     }

    func presentSheet(_ sheet: AppSheet, _ dismissable: Bool = true) {
         self.dismissable = dismissable
         self.sheet = sheet
     }

     func presentFullScreenCover(_ fullScreenCover: AppCovers) {
         self.fullScreenCover = fullScreenCover
     }

     func pop() {
         path.removeLast()
     }
     func popToRoot() { path.removeLast(path.count) }
     func dismissSheet() { sheet = nil }
     func dismissFullScreenOver() { fullScreenCover = nil }
  
     func dismissRoot() {
         dismiss = true
         consumeDismiss()
     }

    func canPopBack() -> Bool {
       return path.count > 0
    }

     private func consumeDismiss() { dismiss = false }

//    func switchTo(_ newRoot: FullSheetType) {
//        self.root = newRoot
//    }
}
