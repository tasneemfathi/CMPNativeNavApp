//
//  TextModifer.swift
//  iosApp
//
//  Created by tasneem .. on 01/01/2025.
//  Copyright © 2025 orgName. All rights reserved.
//

import Foundation
import SwiftUI


struct BoldXLargeText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.Xlarge
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppBoldFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}
struct BoldLargeText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.large
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppBoldFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}

struct BoldMediumText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.medium
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppBoldFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}

struct BoldSmallText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.small
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppBoldFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}
struct BoldXSmallText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.XSmall
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppBoldFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}
struct MediumXLargeText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.Xlarge
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppMediunFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}
struct MediumLargeText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.large
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppMediunFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}
struct MediumMediumText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.medium
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppMediunFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
          //  .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}
struct RegularLargeText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.large
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppRegularFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
          //  .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}

struct RegularMediumText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.medium
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppRegularFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
       //     .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}

struct RegularSmallText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.small
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppRegularFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
        //    .baselineOffset(5)
            .fixedSize(horizontal: false, vertical: true)
     }
}


struct RegularXSmallText:ViewModifier {
    var size:AppFontSizes = AppFontSizes.XSmall
    var color: ColorResource = .text

    func body(content: Content) -> some View {
        content
            .font(.AppRegularFont(size: size.rawValue))
            .foregroundStyle(Color(color))
            .lineSpacing(-7)
            .fixedSize(horizontal: false, vertical: true)
     }
}
