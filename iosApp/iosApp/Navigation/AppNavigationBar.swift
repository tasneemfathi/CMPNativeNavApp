//
//  AppRootView 2.swift
//  UGO Rider
//
//  Created by tasneem .. on 24/08/2025.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUI


func setupNavigationBarAppearance() {
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundEffect = nil
    appearance.backgroundColor = UIColor(.white)
    appearance.shadowImage = nil
    appearance.shadowColor = nil
    appearance.titleTextAttributes      = [.foregroundColor: UIColor(resource: .text) ]
    appearance.largeTitleTextAttributes = [.font           : UIFont(name: "Jali-Arabic-Bold", size: 18)!,.foregroundColor: UIColor(resource: .text)]
    appearance.titleTextAttributes      = [.font           : UIFont(name: "Jali-Arabic-Bold", size: 18)!,.foregroundColor: UIColor(resource: .text)]


    let barButtonAppearance = UIBarButtonItemAppearance()
     barButtonAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.clear ]

   appearance.backButtonAppearance = barButtonAppearance
    let backImage = UIImage(systemName: "arrow.left")?.withRenderingMode(.alwaysTemplate).withTintColor(UIColor(resource: .text))
    appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().compactAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
    UINavigationBar.appearance().compactScrollEdgeAppearance = appearance
    UINavigationBar.appearance().tintColor = UIColor(resource: .text)


}
