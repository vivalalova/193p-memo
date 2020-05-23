//
//  ContentView.swift
//  MemoGame
//
//  Created by Lova on 2020/5/23.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel = EmojiMemoryGame()

    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in

                GeometryReader { geometry in
                    CardView(card: card)
                        .font(.largeTitle)
                        .frame(height: geometry.size.width * 3 / 2)
                        .foregroundColor(.green)
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
    static var previews: some View {
        Group {
            ContentView()

            ContentView()
                .previewDevice(.init(rawValue: "iPhone 11 Pro Max"))

            ContentView()
                .previewDevice(.init(rawValue: "iPhone 8"))
        }
    }
}
