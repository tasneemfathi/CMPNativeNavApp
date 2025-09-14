//
//  WalletNavigationPath.swift
//  iosApp
//
//  Created by tasneem .. on 09/01/2025.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUICore
import CoreLocation


    enum HomeScreens: Screen {
        case welcome
        case homeDetails
        case main

        var id: Self { return self }
    }

    enum HomeSheets: Sheet {
        case main


        var id: Self { return self }
    }
    enum HomeCovers: FullScreenCover {
        case main
        var id: Self { return self }
    }


    @ViewBuilder
    func buildHome(_ screen: HomeScreens) -> some View {
        switch screen {
        case .welcome:
            WelcomeScreen()
        case .homeDetails:
            HomeDetialsScreen()
        case .main:
            MainScreen()
        }
    }

    @ViewBuilder
    func buildHomeSheets(_ sheet: HomeSheets) -> some View {
        switch sheet {
        case .main: ZStack{}
        }
    }

    @ViewBuilder
    func buildHomeCover(_ sheet: HomeCovers) -> some View {
        switch sheet {
        case .main: ZStack{}

        }

    }



    extension HomeScreens {
        // Conform to Hashable
        func hash(into hasher: inout Hasher) {
            switch self {
            case .main:
                hasher.combine("home")


            default : hasher.combine("")
            }
        }

        // Conform to Equatable
        static func == (lhs: HomeScreens, rhs: HomeScreens) -> Bool {
            switch (lhs, rhs) {
            case (.main, .main):
                return true

            default : return true
            }
        }
    }

    extension HomeSheets {
        // Conform to Hashable
        func hash(into hasher: inout Hasher) {
            switch self {
            case .main:
                hasher.combine("home")
            default : hasher.combine("")
            }
        }

        // Conform to Equatable
        static func == (lhs: HomeSheets, rhs: HomeSheets) -> Bool {
            switch (lhs, rhs) {
            case (.main, .main):
                return true
            default : return true

            }
        }
    }

    extension HomeCovers {
        // Conform to Hashable
        func hash(into hasher: inout Hasher) {
            switch self {
            case .main:
                hasher.combine("home")
            default : hasher.combine("")
            }
        }

        // Conform to Equatable
        static func == (lhs: HomeCovers, rhs: HomeCovers) -> Bool {
            switch (lhs, rhs) {
            case (.main, .main):
                return true
            default : return true

            }
        }
    }
