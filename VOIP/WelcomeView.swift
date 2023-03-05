//
//  ContentView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/2/6.
//

import SwiftUI

struct WelcomeView: View {
    
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Image("Tel-logo")
                .padding([.top, .leading])
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)
//                .background(Color.blue)


            Spacer() // 添加一个Spacer以使下面的ZStack保持在底部



            Button {
                self.show = true
            } label: {
                Text("创建账户")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 0.7 * UIScreen.main.bounds.width, height: 60)

            }
            .background(Color(red: 0.22, green: 0.22, blue: 0.22))
            .cornerRadius(50)
            .padding(.bottom, 10) // 添加底部间距
            
            HStack {
                Text("已经有账户了？")
                Button {
                    //action
                } label: {
                    Text("登陆")
                        .bold()
                        .foregroundColor(Color(red: 0.22, green: 0.22, blue: 0.22))
                }

                
            }
            .padding(.bottom, 150)


        }
        .background(Color("WelcomeColor"))
        .edgesIgnoringSafeArea(.all)
        
    }
}





struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

