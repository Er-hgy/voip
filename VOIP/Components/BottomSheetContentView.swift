//
//  BottomSheetContentView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/3/5.
//

import SwiftUI

struct BottomSheetContentView: View {
    @State private var phoneNumber: String = ""
    @State private var userName: String = ""
    
    
    
    var body: some View {
        VStack {
            Text("创建账户")
                .font(.largeTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,24)
                .padding(.bottom,74)
                
            
            
            
            VStack {
                TextField(
                            "手机号",
                            text: $phoneNumber
                        )
                        .disableAutocorrection(true)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .underlineTextField()
                        .padding(.horizontal,24)
                
                TextField(
                            "用户名",
                            text: $userName
                        )
                        .disableAutocorrection(true)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .underlineTextField()
                        .padding(.horizontal,24)
            }
            .padding(.bottom,94)
            
            Button {
                //action
            } label: {
                Text("下一步")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 0.4 * UIScreen.main.bounds.width, height: 60)
//                    .padding(.vertical,5)
//                    .padding(.horizontal, 25)
            }
            .background(Color(red: 0.22, green: 0.22, blue: 0.22))
            .cornerRadius(50)
            
            
        }
    }
}

struct BottomSheetContentView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetContentView()
    }
}
