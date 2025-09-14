//
//  AppScreens.swift
//  UGO Rider
//
//  Created by tasneem .. on 24/08/2025.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUICore

protocol Screen : Identifiable, Hashable{
    var id: Self { get }

}


protocol Sheet : Identifiable, Hashable{
    var id: Self { get }

}

protocol FullScreenCover : Identifiable, Hashable{
    var id: Self { get }

}


enum AppScreen: Screen {
    case mainPath(HomeScreens)
    var id: AppScreen { return self }
}


enum AppSheet: Sheet {
    case home(HomeSheets)
    var id: AppSheet { return self }
}


enum AppCovers: FullScreenCover {
    case home(HomeCovers)
    var id: AppCovers { return self }
}

extension AppCoordinatorImpl {
    @ViewBuilder
    func build(_ screen: AppScreen) -> some View {
        switch screen {
        case .mainPath(let home):
            buildHome(home)
        }
    }

    @ViewBuilder
    func build(_ sheet: AppSheet) -> some View {
        switch sheet {
        case .home(let home): buildHomeSheets(home)
        }
    }

    @ViewBuilder
    func build(_ cover: AppCovers) -> some View {
        switch cover {
        case .home(let home): buildHomeCover(home)
        }
    }
}
