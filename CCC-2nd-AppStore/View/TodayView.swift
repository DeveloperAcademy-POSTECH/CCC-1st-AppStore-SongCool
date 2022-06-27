//
//  TodayView.swift
//  CCC-2nd-AppStore
//
//  Created by 송시원 on 2022/06/24.
//

// 데이터는 이 뷰에 들어올때 사용해야함.
import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 0) {
                Text("6월 28일 화요일")
                    .font(.footnote)
                    .padding(.top, 25)
                HStack {
                    Text("투데이")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Circle()
                        .frame(width: 36, height: 36)
                }                        .padding(.bottom, 8)

                TodayCardView()
                    .padding(.bottom, 20)
                TodayListView()
                    .padding(.bottom, 20)
                TodayCardView()
                    .padding(.bottom, 20)

            }
            .padding(20)
        }

    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
