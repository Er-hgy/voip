//
//  ContentView.swift
//  Voip
//
//  Created by Lube on 2023/2/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            HistoryUIView().tabItem{
                Image(systemName: "clock.fill")
            }
            ContactUIView().tabItem{
                Image(systemName: "person.fill")
            }
            
            DialPadView().tabItem{
                Image(systemName: "circle.grid.3x3.fill")
            }
            SettingsUIView().tabItem{
                Image(systemName: "gearshape.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
