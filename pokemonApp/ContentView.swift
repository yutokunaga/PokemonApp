//
//  ContentView.swift
//  pokemonApp
//
//  Created by Yu Tokunaga on 2024/12/04.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, spacing: 10){
                ForEach(0...150, id: \.self) { index in
                    ZStack {
                        
                        //背景白
                        Color.white
                            .ignoresSafeArea()
                        // 上半分（赤）
                        Circle()
                            .fill(Color.red)
                            .frame(width: 200, height: 200)
                        
                        // 下半分（白）
                        Circle()
                            .fill(Color.white)
                            .frame(width: 200, height: 200)
                            .clipShape(Rectangle().offset(y: 100)) // 下半分のみ表示
                            .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: 4) // 外枠を追加
                            )
                            .overlay(
                                //テキスト
                                Text("\(index + 1)")
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            )
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
