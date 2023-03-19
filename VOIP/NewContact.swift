//
//  NewContact.swift
//  VOIP
//
//  Created by Lube on 2023/3/19.
//

import SwiftUI

struct NewContact: View {
    var body: some View {
        NavigationView{
            
            VStack{
                Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray)
                .frame(width: 150.0, height: 150.0)
                .clipShape(Circle())
                .padding(.bottom, 40)
                
                Form{
                    Section{
                        Text("蔡文耀")
                    }header: {
                        Text("姓名")
                            .font(.subheadline)
                            .foregroundColor(Color.black)
                           
                    }
                    
                    Section{
                        Text("15025241437")
                    }header: {
                        Text("手机号")
                            .font(.subheadline)
                            .foregroundColor(Color.black)
                           
                    }
                    
                    Section{
                        Text("15025241437@sip.xxx.com")
                    }header: {
                        Text("SIP地址")
                            .font(.subheadline)
                            .foregroundColor(Color.black)
                            
                    }
                }
                
            }
           
           
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Text("取消")
                            .font(.title2)
                            .foregroundColor(Color.black)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing){
                        Text("完成")
                            .font(.title2)
                            .foregroundColor(Color.black)
                    }
                    
                }
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    struct NewContact_Previews: PreviewProvider {
        static var previews: some View {
            NewContact()
        }
    }
    
}
