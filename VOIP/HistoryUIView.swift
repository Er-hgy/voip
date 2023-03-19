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
        GeometryReader{geo in
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
                    .frame(width: geo.size.width-10, height: 36.0)
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
                        VStack(spacing:0){
                            ForEach(text == "" ? contacts : updatedContacts){
                                contact in
                                Button(action: goToHomeSecond, label: {
                                    ContactsRow(name:contact.name, time:contact.time, type: contact.type)
                                        .padding(.horizontal)
                                        .padding(.vertical,5)
                                    
                                })
                                
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
                           
func goToHomeSecond(){
    if let window = UIApplication.shared.windows.first
    {
        window.rootViewController = UIHostingController(rootView: RecentCallContactUIView())
        window.makeKeyAndVisible()
    }
}
                           
