//
//  Underlined_style_TextField.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/3/5.
//

import SwiftUI

extension Color {
    static let darkPink = Color(red: 0.77, green: 0.77, blue: 0.78)
//    Color(red: 0.77, green: 0.77, blue: 0.78)
}


extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.darkPink)
            .padding(10)
    }
}
