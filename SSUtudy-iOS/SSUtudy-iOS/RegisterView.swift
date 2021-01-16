//
//  RegisterView.swift
//  SSUtudy-iOS
//
//  Created by 허예은 on 2021/01/15.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var major = ""
    @State var id = ""
    @State var password = ""
    @State var passswordCheck = ""
    
    
    var body: some View {
        VStack {
            HStack {
                Text("회원가입")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(Colors.primary)
                Spacer()
            }.padding(.leading, 25)
            
            Spacer().frame(height: 37)
            
            VStack {
                HStack {
                    TextField("이름", text: $name)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(height: 40)
                        .textFieldStyle(OvalTextFieldStyle())
                        .padding([.leading, .trailing], 4)
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Colors.secondary))
                        .padding([.leading, .trailing], 24)
                }
                
                HStack {
                    TextField("전공", text: $major)
                        .frame(height: 40)
                        .textFieldStyle(OvalTextFieldStyle())
                        .padding([.leading, .trailing], 4)
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Colors.secondary))
                        .padding([.leading, .trailing], 24)
                }
                
                HStack {
                    TextField("아이디", text: $id)
                        .frame(height: 40)
                        .textFieldStyle(OvalTextFieldStyle())
                        .padding([.leading, .trailing], 4)
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Colors.secondary))
                        .padding([.leading, .trailing], 24)
                }
                
                HStack {
                    SecureField("비밀번호", text: $password)
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
                print("Button action")
            }) {
                HStack {
                    Text("학생증 인증")
                }
            }.buttonStyle(PrimaryOutlineButtonStyle()).frame(width: UIScreen.main.bounds.width+50, height: 38)
            
            Spacer().frame(height: 23)
            
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Text("로그인")
                }
            }.buttonStyle(PrimaryButtonStyle()).frame(width: UIScreen.main.bounds.width+50, height: 38)
            
            Spacer().frame(width: (UIScreen.main.bounds.width/2))
        }
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
