//
//  LoginView.swift
//  SSUtudy-iOS
//
//  Created by 허예은 on 2021/01/15.
//

import SwiftUI

struct LoginView: View {
    @State var id = ""
    @State var password = ""
    @State var selection: Int? = nil
   
    var body: some View {
        VStack {
            NavigationLink(
                destination: TabBarView(),
                tag: 1,
                selection: self.$selection){
                Text("")
            }.navigationTitle(Text(""))
            
            HStack {
                Text("로그인")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(Colors.primary)
                Spacer()
            }.padding(.leading, 25)
            
            Spacer().frame(height: 37)
            VStack {
                HStack {
                    TextField("아이디", text: $id)
    
                        .frame(height: 40)
                        .textFieldStyle(OvalTextFieldStyle())
                        .padding([.leading, .trailing], 4)
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.secondary))
                        .padding([.leading, .trailing], 24)
                }
                
                HStack {
                    SecureField("비밀번호", text: $password).foregroundColor(Color.secondary)
                        .frame(height: 40)
                        .textFieldStyle(OvalTextFieldStyle())
                        .padding([.leading, .trailing], 4)
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.secondary))
                        .padding([.leading, .trailing], 24)
                        
                }
            }
            
            Spacer().frame(height: 37)
            
            Button(action: {
                self.selection = 1
            }) {
                HStack {
                    Text("로그인")
                }
            }.buttonStyle(PrimaryButtonStyle()).frame(width: UIScreen.main.bounds.width+50, height: 38)
            
            Spacer().frame(width: (UIScreen.main.bounds.width/2))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

