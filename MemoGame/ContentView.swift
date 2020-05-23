//
//  ContentView.swift
//  MemoGame
//
//  Created by Lova on 2020/5/23.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame

    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
            }
        }
    }
}

struct CardView: View {
    var card: MemoGame<String>.Card

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.green)

            Text(card.content)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}

class EmojiMemoryGame {
    private var model = EmojiMemoryGame.createModel()

    private static func createModel() -> MemoGame<String> {
        let data = ["1", "2"]
        return MemoGame(cardContents: data)
    }

    var cards: [MemoGame<String>.Card] {
        model.cards
    }

    func choose(card: MemoGame<String>.Card) {
        model.choose(card: card)
    }
}

struct MemoGame<CardContent> {
    var cards: [Card] = []

    func choose(card: Card) {
        print(card)
    }

    init(cardContents: [CardContent]) {
        for (i, content) in cardContents.enumerated() {
            cards.append(contentsOf: [
                Card(content: content, id: i * 2),
                Card(content: content, id: i * 2 + 1)
            ])
        }
    }

    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent

        var id: Int
    }
}
