//
//  HistoryUIView.swift
//  VOIP
//
//  Created by Lube on 2023/2/19.
//

import SwiftUI

struct HistoryUIView: View {
    @State private var text = ""
    @State private var updatedContacts: [Contact] = []
    var body: some View {
        NavigationView{
            
            VStack{
                HStack(spacing: 15){
                    
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 23, weight: .bold))
                        .foregroundColor(.gray)
                    TextField("搜索最近通话", text: $text)
                }
                .padding(.vertical)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.1))
                .frame(width: 380, height: 36.0)
                .cornerRadius(8)
                .onChange(of: text) { searchValue in
                    updatedContacts = contacts.filter { $0.name.contains(searchValue)}
                }
                
                HStack{
                    Rectangle()
                        .fill(Color.gray.opacity(0.6))
                        .frame(height: 0.5)
                }
                
                
                ScrollView(.vertical, showsIndicators: false, content:{
                    VStack(spacing:15){
                        ForEach(text == "" ? contacts : updatedContacts){
                            contact in
                            HStack (spacing:15){
                                Image(systemName: "person.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(Color.gray)
                                    .padding(.leading)
                                    .frame(width: 52.0, height: 52.0)
                                
                                VStack( alignment: .leading, spacing:8, content: {
                                    HStack{
                                        if(contact.type == "missed"){
                                            Text(contact.name)
                                                .foregroundColor(Color.red)
                                        }else{
                                            Text(contact.name)
                                        }
                                    }
                                    
                                    
                                    HStack {
                                        if(contact.type == "outgoing")
                                        {
                                            Image(systemName: "phone.arrow.up.right.fill")
                                                .foregroundColor(Color.green)
                                        }
                                        else if(contact.type == "incoming")
                                        {
                                            Image(systemName: "phone.fill.arrow.down.left")
                                                .foregroundColor(Color.gray)
                                        }
                                        else if(contact.type == "missed")
                                        {
                                            Image(systemName: "phone.fill.arrow.down.left")
                                                .foregroundColor(Color.red)
                                        }
                                        Text(contact.time)
                                            .font(.subheadline)
                                            .foregroundColor(Color.gray)
                                    }
                                    
                                    
                                })
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Image(systemName: "info.circle.fill")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(Color.gray)
                                
                                    .padding(.trailing)
                                    .frame(width: 24.0, height: 24.0)
                                
                                
                            }
                            .padding(.horizontal)
                        }
                        
                    }
                    .toolbar{
                        ToolbarItem(placement: .principal){
                            Text("最近通话")
                                .fontWeight(.semibold)
                                .font(.title2)
                            
                        }
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    
                    
                })
            }
            
            
        }
           
          
            
            
        }
        }
    
        


struct HistoryUIView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryUIView()
    }
}

struct Contact: Identifiable {
    let name: String
    let time: String
    let type: String
    let id = UUID()
}

private var contacts = [
    Contact(name: "蔡文耀", time: "15:16", type:"outgoing"),
    Contact(name: "15830983268", time: "昨天", type:"incoming"),
    Contact(name: "15512345678", time: "星期一", type:"incoming"),
    Contact(name: "17244669855", time: "2023/1/15", type:"missed"),
    Contact(name: "18725992087@sip.xxx.com", time: "2023/1/11", type:"outgoing"),
    Contact(name: "13509179086", time: "2023/1/10", type:"incoming"),
    Contact(name: "15860578441", time: "2023/1/09", type:"outgoing"),
    Contact(name: "18763937894", time: "2023/1/09", type:"missed"),
]
