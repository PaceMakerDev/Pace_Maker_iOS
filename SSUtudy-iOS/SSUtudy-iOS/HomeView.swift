//
//  ContentView.swift
//  SSUtudy-iOS
//
//  Created by 허예은 on 2021/01/15.
//

import SwiftUI

struct HomeView: View {
    @State private var selection: Int? = nil
    
    init(){
        UINavigationBar.appearance().backgroundColor = .clear
        UINavigationBar.appearance().tintColor = UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1)    }
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: LoginView(),
                    tag: 1,
                    selection: self.$selection){
                    Text("")
                }.navigationTitle(Text(""))
                
                NavigationLink(
                    destination: RegisterView(),
                    tag: 2,
                    selection: self.$selection){
                    Text("")
                }.navigationTitle(Text(""))
                
                .navigationBarHidden(true)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 20)
                
                Spacer().frame(height: 120)
                
                HStack {
                    Button(action: {
                        self.selection = 1

                    }) {
                        HStack {
                            Text("로그인")
                        }
                    }.buttonStyle(PrimaryButtonStyle())
                    .frame(width: UIScreen.main.bounds.width, height: 63)
                }
                
                HStack {
                    Button(action: {
                        self.selection = 2
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
                            Text("아이디 혹은 비밀번호를 잊으셨나요?").font(.system(size:15, weight: .light)).foregroundColor(Colors.secondary)
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
