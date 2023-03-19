//
//  ContactsRow.swift
//  VOIP
//
//  Created by Lube on 2023/3/11.
//

import SwiftUI

struct ContactsRow: View {
    
    var name = "蔡文耀"
    var time = "15:16"
    var type = "outgoing"
    
    var body: some View {
        HStack (spacing:10){
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray)
                .frame(width: 52.0, height: 52.0)
                .clipShape(Circle())
                
            
            VStack( alignment: .leading, content: {
                HStack{
                    if(type == "missed"){
                        Text(name)
                            .foregroundColor(Color.red)
                    }else{
                        Text(name)
                            .foregroundColor(Color.black)
                    }
                }
                
                
                HStack {
                    if(type == "outgoing")
                    {
                        Image(systemName: "phone.arrow.up.right.fill")
                            .foregroundColor(Color.green)
                    }
                    else if(type == "incoming")
                    {
                        Image(systemName: "phone.fill.arrow.down.left")
                            .foregroundColor(Color.gray)
                    }
                    else if(type == "missed")
                    {
                        Image(systemName: "phone.fill.arrow.down.left")
                            .foregroundColor(Color.red)
                    }
                    Text(time)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                
                
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "info.circle.fill")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray)
                .frame(width: 24.0, height: 24.0)
                .clipShape(Circle())
           
            
        }
       
    }
}

struct ContactsRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactsRow()
    }
}
