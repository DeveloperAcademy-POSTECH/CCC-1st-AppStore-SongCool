//
//  ContentView.swift
//  CCC-2nd-AppStore
//
//  Created by 송시원 on 2022/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TodayView()
                .tabItem {
                    Label("투데이", systemImage: "doc.text.image")
                }
            Text("게임뷰")
                .tabItem {
                    Label("게임", systemImage: "gamecontroller")
                }
            AppView()
                .tabItem {
                    Label("앱", systemImage: "square.stack.3d.up.fill")
                }
            Text("아케이드뷰")
                .tabItem {
                    Label("Arcade", systemImage: "bolt.fill")
                }
            Text("검색뷰")
                .tabItem {
                    Label("검색", systemImage: "magnifyingglass")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
