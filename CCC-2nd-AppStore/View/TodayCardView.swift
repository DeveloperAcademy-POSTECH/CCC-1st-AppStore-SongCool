//
//  TodayCardView.swift
//  CCC-2nd-AppStore
//
//  Created by 송시원 on 2022/06/27.
//

import SwiftUI

struct TodayCardView: View {
    var body: some View {
        VStack(spacing: 0){
            ZStack(alignment: .topLeading){
                AsyncImage(url: URL(string: "https://picsum.photos/225/350")) { image in
                    image.resizable()
                } placeholder: {
                    Color.brown
                }
                .frame(height: 350)
                
                VStack(alignment: .leading, spacing: 6){
                    Text("새로운 게임")
                        .font(.subheadline)
                    Text("정통 무협의 시작")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.vertical, 16)
                .padding(.horizontal, 20)
                
            }
            HStack( spacing: 14){
                RoundedRectangle(cornerRadius: 11)
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 2){
                    Text("천애명월도 M")
                        .font(.subheadline)
                    Text("롤플레잉")
                        .font(.caption)
                }
                Spacer()
                Button{
                    
                }label: {
                    VStack{
                        ZStack{
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
            .background(.white)
        }
        .clipShape(RoundedRectangle(cornerRadius: 14))
            .frame(maxWidth: .infinity)
            .shadow(color: .black.opacity(0.15), radius: 20, y: 10)
        
    }
}

struct TodayCardView_Previews: PreviewProvider {
    static var previews: some View {
        TodayCardView()
    }
}
