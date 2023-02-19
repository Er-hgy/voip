//
//  ContentView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/2/6.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
/*
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
        .edgesIgnoringSafeArea(.all)
 
 */
        
        
        
        
        VStack {
            Image("Tel-logo")
                .padding([.top, .leading])
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)
            
            Spacer() // 添加一个Spacer以使下面的ZStack保持在底部
            
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(red: 0.22, green: 0.22, blue: 0.22))
                    .frame(width: 0.7 * UIScreen.main.bounds.width, height: 54) // 使用UIScreen.main.bounds.width计算宽度，让其在不同设备上自适应
                Text("创建账户")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            }
            .padding(.bottom, 150) // 添加底部间距
        }
        .background(Color("WelcomeColor"))
        .edgesIgnoringSafeArea(.all)
        
        
        
        //测试修改
        
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
