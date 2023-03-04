//
//  BottomSheetView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/2/26.
//

import SwiftUI

struct BottomSheetView: View {
    
    @Binding var isPresented: Bool
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationView {
                VStack {
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    Spacer()
                    
                    

                    Button(action: {
                        self.isPresented = false
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                    })
                    .padding()
                }
                .navigationTitle("Login")
                
            }
            
        }
        
            
        }
}
