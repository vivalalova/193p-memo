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
    }

    init(cardContents: [CardContent]) {
        cards = cardContents.enumerated().map { i, content in
            [
                Card(content: content, id: i * 2),
                Card(content: content, id: i * 2 + 1)
            ]
        }
        .reduce([], +)
        .shuffled()
    }

    struct Card: Identifiable {
        var isFaceUp = true
        var isMatched = false
        var content: CardContent

        var id: Int
    }
}
