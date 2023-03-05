//
//  BottomSheetView.swift
//  VOIP
//
//  Created by 侯冠宇 on 2023/3/5.
//

import SwiftUI

struct BottomSheetView: View {
    
    @State var translation: CGSize = .zero
    @State var offsetY: CGFloat = 0
    @Binding var show: Bool
    
    
    var body: some View {
        
        ZStack {
            GeometryReader { proxy in
                VStack {
                    BottomSheetContentView()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .offset(y: translation.height + offsetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            translation = value.translation
                        }
                        .onEnded { value in
                            withAnimation(.interactiveSpring()) {
                                let snap = translation.height + offsetY
                                let quarter = proxy.size.height / 4

                                if snap > quarter && snap < quarter*3 {
                                    offsetY = quarter*2
                                } else if snap > quarter*3 {
                                    offsetY = quarter*4 - 100
                                } else {
                                    offsetY = 0
                                }

                                translation = .zero
                            }
                        }
                )
                .ignoresSafeArea(edges: .bottom)
                
                Button {
                    withAnimation {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(12)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
                
                
                
            }
            
            
            
        }
        
        
        
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView(show: .constant(true))
            .background(.blue)
    }
}
