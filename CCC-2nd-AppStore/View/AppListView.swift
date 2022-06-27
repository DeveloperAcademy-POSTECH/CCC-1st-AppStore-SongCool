//
//  AppListView.swift
//  CCC-2nd-AppStore
//
//  Created by 송시원 on 2022/06/27.
//

import SwiftUI

struct AppListView: View {
    let isRanking: Bool
    let title: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Button {}label: {
                    Text("모두 보기")
                }
            }
            .padding(.horizontal, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<5) { col in
                        VStack {
                            ForEach(0..<3) { row in
                                AppListItemView(isRanking: isRanking, count: row + 1 + col * 3)
                            }
                        }
                        .padding(.leading, 20)
                    }
                }
            }
            Divider()
                .padding(.horizontal, 20)
                .padding(.top, 32)
        }
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        AppListView(isRanking: true, title: "무료 앱 순위")
    }
}
