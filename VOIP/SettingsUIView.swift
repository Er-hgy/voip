///
//  SettingsUIView.swift
//  Voip
//
//  Created by Lube on 2023/2/19.
//

import SwiftUI

struct SettingsUIView: View {
    struct NavagationItem:Identifiable,Hashable{
        var id=UUID()
        var title:String
        var icon:String
        var menu:Menu
    }
    var navigationItems=[
        NavagationItem(title: "设置1", icon: "Vector",menu: .Setting1),
        NavagationItem(title: "设置2", icon: "LVector", menu: .Setting2),
    ]
    enum Menu:String{
        case Setting1
        case Setting2
    }
    var body: some View {
        NavigationView{
            NavigationStack{
                /*VStack {
                    Text("账户").frame(maxWidth: .infinity,alignment: .leading)
                        .font(.subheadline)
                    .padding(.leading,20)
                    
                }*/
                   

                List(navigationItems){item in
                    NavigationLink(value:item){
                        Label(item.title,systemImage:item.icon)
                            .foregroundColor(.primary)
                    }
                    .listStyle(.plain)
                    .navigationDestination(for: NavagationItem.self){item in
                        switch item.menu{
                        case.Setting1:
                            //setting1view()
                            ContactUIView()
                        case .Setting2:
                            ContactUIView()
                        }
                    }
                }
                .toolbar{
                    ToolbarItem(placement: .principal){
                        Text("设置")
                            .fontWeight(.semibold)
                            .font(.title2)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            /*GeometryReader{geo in
                VStack(spacing: 15) {
                        ScrollView(){
                            Text("账户").frame(maxWidth: .infinity,alignment: .leading)
                                .font(.subheadline)
                                .padding(.leading,20)
                            VStack(spacing: 35) {
                                SettingRow(tittle:"我的账户")
                            }
                            .frame(width:geo.size.width - 30)
                            Text("设置").frame(maxWidth: .infinity,alignment: .leading)
                                .font(.subheadline)
                                .padding(.leading)
                                .padding(.top,30)
                            VStack(spacing:35) {
                                SettingRow(tittle:"设置1.0")
                                SettingRow(tittle:"设置2.0")
                                SettingRow(tittle:"设置2.0")
                                SettingRow(tittle:"设置2.0")
                            }
                            .frame(width: geo.size.width - 30)
                        }
                        .toolbar{
                            ToolbarItem(placement: .principal){
                                Text("设置")
                                    .fontWeight(.semibold)
                                    .font(.title2)
                                
                            }
                        }
                        .navigationBarTitleDisplayMode(.inline)
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                .navigationBarTitle("设置",displayMode:.inline)
                
            }*/
        }
    }
}

struct SettingsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView()
    }
}
