//
//  AppFont.swift
//  BaseSwiftUI2022
//
//  Created by i mac on 19/09/2022.
//

import Foundation
import SwiftUI

struct AppFontName {
    static let Regular      = "Jali-Arabic-Regular"
    static let Medium       = "Jali-Arabic-Medium"
    static let Bold         = "Jali-Arabic-Bold"
    static let Light        = "Jali-Arabic-Light"
    static let Black        = "Jali-Arabic-Black"

}

extension Font {
    static func AppBlackFont(size: CGFloat) -> Font {
        return .custom(AppFontName.Black, size: size)
    }
    static func AppBoldFont(size: CGFloat) -> Font {
        return .custom(AppFontName.Bold, size: size)
    }
    static func AppMediunFont(size: CGFloat) -> Font {
        return .custom(AppFontName.Medium, size: size)
    }
    static func AppRegularFont(size: CGFloat) -> Font {
        return .custom(AppFontName.Regular, size: size)
    }
    static func AppLightFont(size: CGFloat) -> Font {
        return .custom(AppFontName.Light, size: size)
    }
}

extension UIFont {
    static func appBoldFont(size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.Medium, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func appMediumFont(size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.Medium, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
