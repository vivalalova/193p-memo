//
//  Memo.swift
//  MemoGame
//
//  Created by Lova on 2020/5/23.
//  Copyright © 2020 taxigo. All rights reserved.
//

import Foundation

struct MemoGameModel<CardContent: StringProtocol> {
    var cards: [Card] = []

    mutating func choose(card: Card) {
        print(card)
        guard let i = index(of: card) else {
            return
        }
        cards[i].isFaceUp.toggle()
    }

    func index(of card: Card) -> Int? {
        cards.firstIndex { $0.id == card.id }
    }

    init(cardContents: [CardContent]) {
        self.cards = cardContents.enumerated().map { i, content in
            [
                Card(content: content, id: i * 2),
                Card(content: content, id: i * 2 + 1)
            ]
        }
        .reduce([], +)
        .shuffled()
    }

    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent

        var id: Int
    }
}
