//
//  ContentView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/2/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            
            Image("Tel-logo")
                .padding([.top, .leading])
                .frame(width: 200, height: 400, alignment:.center)
                
                
            
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                .fill(Color(red: 0.22, green: 0.22, blue: 0.22))
                .frame(width: 243.69, height: 54)

                Text("创建账户")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .frame(width: 244, height: 54)
            }
            
            
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("WelcomeColor"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
