//
//  ContentView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/2/6.
//

import SwiftUI

struct WelcomeView: View {
    

    @State private var showSheet = false

    
    
    var body: some View {
        

        
        VStack {
            Image("Tel-logo")
                .padding([.top, .leading])
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)


            Spacer() // 添加一个Spacer以使下面的ZStack保持在底部


            Button(action: {
                self.showSheet = true
            }) {

                ZStack{

                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color(red: 0.22, green: 0.22, blue: 0.22))
                        .frame(width: 0.7 * UIScreen.main.bounds.width, height: 54) // 使用UIScreen.main.bounds.width计算宽度，让其在不同设备上自适应
                    Text("创建账户")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)

                }
            }
            .padding(.bottom, 150) // 添加底部间距


        }
        .background(Color("WelcomeColor"))
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $showSheet, content: {
            BottomSheetView(isPresented: self.$showSheet)
                .frame(width: 300, height: 400)
        })
        
        
        
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
