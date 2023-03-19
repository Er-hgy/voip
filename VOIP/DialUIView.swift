//
//  DialUIView.swift
//  VOIP
//
//  Created by Lube on 2023/2/19.
//

import SwiftUI
import UIKit

struct DialPadView: View {
    @State public var phoneNumber = ""
    @FocusState private var amountIsfocused : Bool
    var body: some View {
        
        VStack {
            Spacer()
            HStack(alignment:.center) {
                TextField("",text:$phoneNumber)
                    .font(.largeTitle)
                    .focused($amountIsfocused)
            }
            .padding(.vertical)
            .padding(.horizontal)
            .frame(width: 300, height: 100.0)
            Spacer()
            
            VStack(spacing: 18) {
                           HStack(spacing: 20) {
                               DialerButton(number: "1", letters: "", action: { self.phoneNumber += "1" })
                               DialerButton(number: "2", letters: "ABC", action: { self.phoneNumber += "2" })
                               DialerButton(number: "3", letters: "DEF", action: { self.phoneNumber += "3" })
                           }
                HStack(spacing: 20) {
                    DialerButton(number: "4", letters: "GHI", action: { self.phoneNumber += "4" })
                    DialerButton(number: "5", letters: "JKL", action: { self.phoneNumber += "5" })
                    DialerButton(number: "6", letters: "MNO", action: { self.phoneNumber += "6" })
                }
                
                HStack(spacing: 20) {
                    DialerButton(number: "7", letters: "PQRS", action: { self.phoneNumber += "7" })
                    DialerButton(number: "8", letters: "TUV", action: { self.phoneNumber += "8" })
                    DialerButton(number: "9", letters: "WXYZ", action: { self.phoneNumber += "9" })
                }
                HStack(spacing: 20) {
                    DialerButton(number: "*", letters: "", action: { self.phoneNumber += "*" })
                    DialerButton(number: "0", letters: "+", action: { self.phoneNumber += "0" })
                    DialerButton(number: "#", letters: "", action: { self.phoneNumber += "#" })
                }
                HStack {
                    Button(action: {
                        // KeyboardAppear
                        amountIsfocused = true
                            
                    }) {
                        Image("Keyboardup")
                            .font(.title)
                            .frame(width: 31,height: 25)
                            
                    }
                    .padding()
                    Button(action: {
                        // Call the phone number
                        
                    }) {
                        Image(systemName: "phone.fill")
                            .resizable()
                            .frame(width: 24,height: 24)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("CallButtonColor"))
                            .clipShape(Circle())
                            .frame(width: 68,height: 68)
                    }
                    .padding()
                    Button(action: {
                        if !self.phoneNumber.isEmpty {
                            self.phoneNumber.removeLast()
                        }
                    }) {
                        Image("DeleteButton")
                            .font(.title)
                            .frame(width: 29.67,height: 18.67)
                    }
                    .padding()
                    
                    
                }
            }
            .padding(.bottom,35)
            
          
        }
    }
}
struct DialerButton: View {
    let number: String
    let letters: String
    let action: () -> Void

    var body: some View {
        Button(action: {
            self.action()
        }) {
            VStack {
                Text(number)
                    .font(.title)
                    .foregroundColor(.black)
                Text(letters)
                    .font(.footnote)
                    .foregroundColor(.black)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .frame(width: 68,height: 68)
        }
    }
}
struct DialPadView_Previews: PreviewProvider {
    static var previews: some View {
        DialPadView()
    }
}
