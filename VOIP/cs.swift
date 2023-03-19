//
//  cs.swift
//  VOIP
//
//  Created by Lube on 2023/3/19.
//

import SwiftUI

struct cs: View {
    var body: some View {
        VStack{
            
            Form(){
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
        .background(Color.red)
        
    }
}

struct cs_Previews: PreviewProvider {
    static var previews: some View {
        cs()
    }
}
