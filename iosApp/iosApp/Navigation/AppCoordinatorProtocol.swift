//
//  AppCoordinatorProtocol.swift
//  iosApp
//
//  Created by tasneem .. on 09/01/2025.
//  Copyright © 2025 orgName. All rights reserved.
//

import Combine
import SwiftUI

protocol AppCoordinatorProtocol: ObservableObject {
    associatedtype ScreenType: Identifiable
    associatedtype SheetType: Identifiable
    associatedtype FullSheetType: Identifiable

    var path: NavigationPath { get set }
    var sheet: SheetType? { get set }
    var fullScreenCover: FullSheetType? { get set }

    func push(_ screen:  ScreenType)
    func presentSheet(_ sheet: SheetType,_ dismissable:Bool)
    func presentFullScreenCover(_ fullScreenCover: FullSheetType)
    func pop()
    func popToRoot()
    func dismissSheet()
    func dismissFullScreenCover()
}
