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
                CardView(card: card)
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .onTapGesture {
                        self.viewModel.choose(card: card)
                    }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
