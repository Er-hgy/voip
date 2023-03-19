//
//  RecentCallContactUIView.swift
//  VOIP
//
//  Created by Lube on 2023/3/4.
//

import SwiftUI

struct RecentCallContactUIView: View {
    var body: some View {
        GeometryReader{geo in
            VStack(spacing: 22.59) {
                HStack(spacing:190) {
                    HStack(spacing:10){
                       
                        Button(action: goToHistoryView, label: {
                            Image("LVector")
                            Text("最近通话")
                            .fontWeight(.medium)
                            .font(.title3)
                            .foregroundColor( Color.black)
                            .frame(width: 85, alignment: .topLeading)
                        })
                        

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
                        .frame(width: 95.0, height: 85.0)
                }
                .frame(width: 96, height: 94.03)

                Text("蔡文耀")
                .font(.title)
                .multilineTextAlignment(.center)
                .frame(width: 96, height: 34, alignment: .top)

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
                ZStack (){
                    Text("15:16")
                    .fontWeight(.medium)
                    .font(.caption)
                    .offset(x: -131, y: 3.50)

                    Text("去电")
                    .fontWeight(.medium)
                    .font(.caption)
                    .offset(x: -96.50, y: 3.50)

                    Text("2分20秒")
                    .foregroundColor(.gray)
                    .fontWeight(.medium)
                    .font(.caption)
                    .offset(x: -86, y: 23.50)

                    Text("2023年1月26日")
                    .fontWeight(.medium)
                    .font(.subheadline)
                    .tracking(1)
                    .offset(x: -87, y: -18.50)
                }
                .frame(width: geo.size.width - 30, height: 80)
                .background(Color.white)
                .cornerRadius(8)
                ScrollView
                {
                    VStack( spacing:65) {
                        ContactRow(tittle: "手机",subtittle: "15025241437")
                        ContactRow(tittle: "SIP",subtittle: "15025241437@sip.xxx.com")
                    }
                }
                .frame(width: geo.size.width - 30)
            }
            .frame(width: geo.size.width,height: geo.size.height)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        }

    }
}

struct RecentCallContactUIView_Previews: PreviewProvider {
    static var previews: some View {
        RecentCallContactUIView()
    }
}

func goToHistoryView(){
    if let window = UIApplication.shared.windows.first
    {
        window.rootViewController = UIHostingController(rootView: ContentView())
        window.makeKeyAndVisible()
    }
}
