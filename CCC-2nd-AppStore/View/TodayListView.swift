//
//  TodayListView.swift
//  CCC-2nd-AppStore
//
//  Created by 송시원 on 2022/06/27.
//

import SwiftUI

struct TodayListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 6) {
                Text("고르고 골랐어요")
                    .font(.subheadline)
                Text("볼까, 들을까, 읽을까?")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 20)
            VStack(spacing: 0) {
                ForEach(0..<4) { idx in
                    if idx != 0 {
                        Divider()
                            .padding(.trailing, 20)
                            .padding(.leading, 20 + 48 + 14)

                    }
                    HStack( spacing: 14) {
                        RoundedRectangle(cornerRadius: 11)
                            .frame(width: 48, height: 48)
                        VStack(alignment: .leading, spacing: 2) {
                            Text("천애명월도 M")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("롤플레잉")
                                .font(.caption)
                        }
                        Spacer()
                        Button {
                        }label: {
                            VStack {
                                ZStack {
                                    Capsule().frame(width: 72, height: 28)
                                        .foregroundColor(.gray.opacity(0.3))
                                    Text("받기")
                                        .fontWeight(.bold)
                                }
                            }
                        }
                    }
                    .padding(.vertical, 16)
                    .padding(.horizontal, 20)
                }
            }
            .padding(.vertical, 28)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 14))
            .frame(maxWidth: .infinity)
            .shadow(color: .black.opacity(0.15), radius: 20, y: 10)
    }
}

struct TodayListView_Previews: PreviewProvider {
    static var previews: some View {
        TodayListView()
    }
}
