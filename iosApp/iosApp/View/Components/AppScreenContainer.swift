//
//  AppScreenContainers.swift
//  iosApp
//
//  Created by tasneem .. on 04/09/2025.
//

import Foundation
import SwiftUI

struct AppScreenContainer<Content:View>: View {
    @EnvironmentObject var appCoordinator:AppCoordinatorImpl
    private let title:String
    private let content:Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title              = title
        self.content            = content()
    }

    var body: some View {
        VStack(alignment: .center ,spacing: 0 ) {
            content
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity )
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.white, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(LocalizedStringKey(title))
                        .modifier(BoldLargeText())
                        .foregroundColor(.text)
                }
//            if appCoordinator.canPopBack() {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button {
//                        appCoordinator.pop()
//                    } label: {
//                        Image(systemName: "arrow.left")
//                            .foregroundColor(.text)
//                    }
//                }
//            }
        }
      //  .navigationBarBackButtonHidden(true)



    }
}
