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
                        .padding(.horizontal, 20)
                    ExtractedView()
                    Divider()
                        .padding(.horizontal, 20)
                        .padding(.top, 32)
                    AppListView(isRanking: true, title: "무료 앱 순위")
                    AppListView(isRanking: false, title: "iPhone 필수 앱")
                    AppListView(isRanking: false, title: "인기 앱")
                    AppListView(isRanking: false, title: "요즘 뜨는 앱")
                    AppListView(isRanking: false, title: "볼까, 들을까, 읽을까?")
                    AppListView(isRanking: false, title: "스타트업 앱으로 스타트하기")
                    AppListView(isRanking: false, title: "스타트업 앱으로 스타트하기")
                    
                }
            }
            .navigationBarTitle("앱")
            .toolbar {
                // Home 화면인 경우: 소리 ON/OFF
                // ItemList 화면의 경우: 뒤로가기 버튼
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: {
//                    }) {
//                        Circle()
//                            .frame(width: 36, height: 36)
//                    }
//                }
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

struct ExtractedView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 8) {
                ForEach(0..<4) { idx in
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
                                NavigationLink(destination: AppDetailView()) {
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
                                }
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
                    .frame(width: 350)
                    .padding(.leading, 20)
                }
            }
//            .onAppear {
//                UIScrollView.appearance().isPagingEnabled = true
//            }
        }
    }
}
