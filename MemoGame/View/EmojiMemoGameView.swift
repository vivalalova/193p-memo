//
//  ContentView.swift
//  MemoGame
//
//  Created by Lova on 2020/5/23.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct EmojiMemoGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame

    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in

                GeometryReader { geometry in
                    CardView(card: card)
                        .font(.largeTitle)
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .frame(height: geometry.size.width * 3 / 2)
                        .onTapGesture {
                            self.viewModel.choose(card: card)
                        }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var model = EmojiMemoryGame()
    static var previews: some View {
        Group {
            EmojiMemoGameView(viewModel: model)

            EmojiMemoGameView(viewModel: model)
                .previewDevice(.init(rawValue: "iPhone 11 Pro Max"))

            EmojiMemoGameView(viewModel: model)
                .previewDevice(.init(rawValue: "iPhone 8"))
        }
    }
}
