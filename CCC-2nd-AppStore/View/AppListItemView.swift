//
//  AppListItemView.swift
//  CCC-2nd-AppStore
//
//  Created by 송시원 on 2022/06/27.
//

import SwiftUI

struct AppListItemView: View {
    let count: Int
    var body: some View {
        HStack {
                RoundedRectangle(cornerRadius: 14)
                    .frame(width: 62, height: 62)
            HStack(alignment: .top) {
                Text("\(count)")
                    .fontWeight(.bold)
                    .frame(width: 20, alignment: .leading)
                VStack(alignment: .leading, spacing: 2) {
                    Text("쿠팡플레이")
                    Text("와우회원을 위한 무제한 스트리밍 서비스")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            Button {
                // 받기버튼
            }label: {
                ZStack {
                    Capsule().frame(width: 72, height: 28)
                        .foregroundColor(.gray.opacity(0.2))
                    Text("받기")
                }
            }
        }
        .frame(width: 350)
    }
}

struct AppListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AppListItemView(count: 15)
    }
}
