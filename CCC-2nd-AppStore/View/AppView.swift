//
//  AppView.swift
//  CCC-2nd-AppStore
//
//  Created by 송시원 on 2022/06/25.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    Divider()
                        .padding()

                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 8) {
                            ForEach(0..<4) { idx in
                                NavigationLink(destination: AppDetailView()) {
                                    // 백그라운드 이미지로 설정하기.
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text("건강한 삶")
                                            .font(.caption2)
                                            .padding(.bottom, 4)
                                        Text("사운드짐 - 운동하는 사람들의 피트니스 커뮤니티")
                                            .font(.title2)
                                            .font(.title)
                                            .lineLimit(2)
                                            .padding(.bottom, 12)
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(.black)

                                        ZStack(alignment: .bottom) {
                                            AsyncImage(url: URL(string: "https://picsum.photos/225/350")) { image in
                                                image.resizable()
                                            } placeholder: {
                                                Color.brown
                                            }
                                            .frame(maxWidth: .infinity)
                                            .clipShape(RoundedRectangle(cornerRadius: 6))
                                            HStack {
                                                RoundedRectangle(cornerRadius: 8)
                                                    .frame(width: 36, height: 36)
                                                VStack(alignment: .leading, spacing: 2 ) {
                                                    Text("사운드짐 - 운동하는사람들의"     )
                                                        .font(.subheadline)
                                                        .foregroundColor(.white)
                                                    Text("전문가의 운동가이드, 운동기록과")
                                                        .font(.caption)
                                                        .foregroundColor(.gray)
                                                }
                                                Spacer()
                                                Button {
                                                    // 받기버튼
                                                }label: {
                                                    ZStack {
                                                        Capsule().frame(width: 72, height: 28)
                                                            .foregroundColor(.white.opacity(0.4))

                                                        Text("받기")
                                                            .foregroundColor(.white)
                                                    }
                                                }
                                            }
                                            .padding()
                                        }
                                        .frame(width: 350, height: 225)
                                    }
    //                                .background(.gray)
                                }
                                .frame(width: 350)
                                .padding(.leading)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("앱")
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
