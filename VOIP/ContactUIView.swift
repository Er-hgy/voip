//
//  ContactUIView.swift
//  VOIP
//
//  Created by Lube on 2023/2/19.
//

import SwiftUI

struct ContactUIView: View {
    var body: some View {
        GeometryReader{geo in
            VStack(spacing: 22.59) {
                HStack(spacing:190) {
                    HStack(spacing:10){
                        Image("LVector")
                        Text("通讯录")
                        .fontWeight(.medium)
                        .font(.title3)
                        .frame(width: 85, alignment: .topLeading)
                    }
                        Text("编辑")
                        .fontWeight(.medium)
                        .font(.title3)
                }
                .frame(width: geo.size.width - 30, height: 28)
                ZStack {
                    Image(systemName: "person.circle.fill")
                        .resizable(resizingMode: .stretch)
                        .foregroundColor(Color.gray)
                        .frame(width: 95.0, height: 90)
                }
                .frame(width: 96)

                Text("蔡文耀")
                .font(.title)
                .multilineTextAlignment(.center)
                .frame(width: 96, height: 34)

                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color.blue)
                    .cornerRadius(100)
                    .frame(width: 88, height: 42)
                    Image(systemName: "phone.fill")
                        .resizable(resizingMode: .stretch)
                        .foregroundColor(Color.white)
                        .frame(width: 25.0, height: 25.0)
                }
                ScrollView{
                    VStack( spacing: 65) {
                        ContactRow(tittle: "手机",subtittle: "15025241437")
                        ContactRow(tittle: "SIP",subtittle: "15025241437@sip.xxx.com")
                    }
                }
                .frame(width: geo.size.width-30)
            }
            .frame(width: geo.size.width)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        }
    }
}

struct ContactUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContactUIView()
    }
}
