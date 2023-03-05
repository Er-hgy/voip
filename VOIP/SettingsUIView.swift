///
//  SettingsUIView.swift
//  Voip
//
//  Created by Lube on 2023/2/19.
//

import SwiftUI

struct SettingsUIView: View {
    var body: some View {
        GeometryReader{geo in
            VStack(spacing: 15) {
                HStack{
                    Text("设置")
                        .fontWeight(.semibold)
                        .font(.title2)
                }
                .padding(.top,0)
                Divider()
                ScrollView(){
                    VStack(spacing: 8) {
                        Text("账户").frame(maxWidth: .infinity,alignment: .leading)
                            .font(.subheadline)
                        
                        HStack(spacing: 220) {
                            Text("我的账户").frame(maxWidth: .infinity,alignment: .leading)
                                .font(.title3)
                            Image("Vector")
                            
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                        .frame(width: geo.size.width - 30, height: 51)
                        .background(Color.white)
                    }
                    .frame(width: 375, height: 80)
                    VStack(spacing: 8) {
                        Text("通知").frame(maxWidth: .infinity,alignment: .leading)
                            .font(.subheadline)
                        
                        HStack(spacing: 220) {
                            Text("设置1").frame(maxWidth: .infinity,alignment: .leading)
                                .font(.title3)
                            Image("Vector")
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                        .frame(width: geo.size.width - 30, height: 51)
                        .background(Color.white)
                        
                        HStack(spacing: 220) {
                            Text("设置2").frame(maxWidth: .infinity,alignment: .leading)
                                .font(.title3)
                            Image("Vector")
                            
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                        .frame(width: geo.size.width - 30, height: 51)
                        .background(Color.white)
                    }
                    .frame(width: geo.size.width - 30, height: 131)
                    Spacer(minLength: 0)
                }
            }
            .padding(.top, 0)
            .padding(.bottom, 0)
            .frame(width: geo.size.width, height: geo.size.height)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        }
    }
}

struct SettingsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView()
    }
}
