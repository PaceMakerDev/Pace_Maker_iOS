//
//  ButtonStyles.swift
//  SSUtudy-iOS
//
//  Created by 허예은 on 2021/01/15.
//

import SwiftUI

struct CustomButtonStyles: View {
    var body: some View {
        VStack {
            
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Text("로그인")
                }
            }.buttonStyle(PrimaryButtonStyle()).frame(width: UIScreen.main.bounds.width, height: 63)
            
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Text("회원가입")
                }
            }.buttonStyle(PrimaryOutlineButtonStyle()).frame(width: UIScreen.main.bounds.width, height: 63)
        }
    }
}

struct CustomButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonStyles()
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(Color(red: 14/255, green: 190/255, blue: 175/255))
            .cornerRadius(40.0)
            .padding(.horizontal, 47)
        
    }
}

struct PrimaryOutlineButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(Color(red: 14/255, green: 190/255, blue: 175/255))
            .overlay(
                RoundedRectangle(cornerRadius: 40) .stroke(Color(red: 14/255, green: 190/255, blue: 175/255), lineWidth: 3)
            )
            .padding(.horizontal, 47)
    }
}

