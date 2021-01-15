//
//  ContentView.swift
//  SSUtudy-iOS
//
//  Created by 허예은 on 2021/01/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 20)
                
                Spacer().frame(height: 120)
                
                HStack {
                    Button(action: {
                        print("Login View")
                    }) {
                        HStack {
                            Text("로그인")
                        }
                    }.buttonStyle(PrimaryButtonStyle())
                    .frame(width: UIScreen.main.bounds.width, height: 63)
                }
                
                HStack {
                    Button(action: {
                        print("Login View")
                    }) {
                        HStack {
                            Text("회원가입")
                        }
                    }.buttonStyle(PrimaryOutlineButtonStyle())
                        .frame(width: UIScreen.main.bounds.width, height: 63)
                }
                
                HStack {
                    Button(action: {
                        print("Missing ID or Password")
                    }) {
                        HStack {
                            Text("아이디 혹은 비밀번호를 잊으셨나요?").font(.system(size:15, weight: .light)).foregroundColor(Color(red: 142/255, green: 142/255, blue: 147/255))
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
