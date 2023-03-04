//
//  test.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/2/26.
//

import SwiftUI

struct test: View {
    var body: some View {
        
        
        VStack {
                   Button(action: {
                       self.showSheet = true
                   }, label: {
                       Text("Show Bottom Sheet")
                   })

                   Spacer()
               }
               .sheet(isPresented: $showSheet, content: {
                   BottomSheetView(isPresented: self.$showSheet)
               })
        
        
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
