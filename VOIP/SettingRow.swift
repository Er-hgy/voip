//
//  SettingRow.swift
//  VOIP
//
//  Created by Lube on 2023/3/11.
//

import SwiftUI

struct SettingRow: View {
    var tittle="设置"
    var body: some View {
        GeometryReader{geo in
            HStack() {
                Text(tittle).frame(maxWidth: .infinity,alignment: .leading)
                    .font(.title3)
                Spacer()
                Image("Vector")
            }
            .padding(.horizontal, 20)
            .padding(.vertical,10)
            .frame(width: geo.size.width-30,height:40 )
            .background(Color.white)
            .cornerRadius(8)
        }
        
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingRow()
    }
}
