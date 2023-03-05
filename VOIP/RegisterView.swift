//
//  RegisterView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/3/5.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var show = false
    
    var body: some View {
        
        ZStack {
            WelcomeView()
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                }
            
            if show {
                Color.black.opacity(0.3).ignoresSafeArea()
                
                BottomSheetView(show: $show)
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
            }
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
