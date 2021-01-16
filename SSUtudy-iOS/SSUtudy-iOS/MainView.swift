//
//  MainView.swift
//  SSUtudy-iOS
//
//  Created by 허예은 on 2021/01/16.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }.tag(0)
                    
            StudyView()
                .tabItem {
                Image(systemName: "book")
                Text("내 스터디")
                }.tag(1)
        
            SettingView()
                .tabItem {
                Image(systemName: "gear")
                Text("설정")
                }.tag(2)
        }.accentColor(Colors.primary)
    }
}

struct MainView: View {
    
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer().frame(width: (UIScreen.main.bounds.height)/2)
        }
       
        
        
    }
}

struct HeaderView: View {
    @State var selection: Int? = nil
    var body: some View {
        HStack {
            NavigationLink(
                destination: MainView(),
                tag: 1,
                selection: self.$selection){
                Text("")
            }.navigationTitle(Text(""))
            
            Image("logo").resizable().frame(width: 123, height: 35, alignment: .trailing)
            Spacer()
            Button(action: {
                self.selection = 1
            }) {
                HStack {
                    Image(systemName: "magnifyingglass").resizable().frame(width: 15, height: 15, alignment: .trailing).foregroundColor(Color(red: 14/255, green: 190/255, blue: 175/255))
                }
            }
        }
        .padding(.trailing, 20).padding(.leading, 5).padding(.vertical, 10)
        .navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
