//
//  ContactRow.swift
//  VOIP
//
//  Created by Lube on 2023/3/11.
//

import SwiftUI

struct ContactRow: View {
    var tittle="类型"
    var subtittle="联系信息"
    var body: some View {
        GeometryReader{geo in
            HStack(spacing: 20)
            {
                VStack(alignment:.leading, spacing: 3) {
                    Text(tittle)
                    .fontWeight(.medium)
                    .font(.subheadline)
                    
                    Text(subtittle).frame(maxWidth: .infinity,alignment: .leading)
                    .fontWeight(.medium)
                    .font(.subheadline)
                }
                Spacer()
            }
            .cornerRadius(8)
            .padding(.horizontal,20)
            .frame(width: geo.size.width, height: 60)
            .background(Color.white)
            
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow()
    }
}
