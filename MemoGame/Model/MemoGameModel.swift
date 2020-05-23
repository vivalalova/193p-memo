//
//  Memo.swift
//  MemoGame
//
//  Created by Lova on 2020/5/23.
//  Copyright © 2020 taxigo. All rights reserved.
//

import Foundation

struct MemoGameModel<CardContent> {
    var cards: [Card] = []

    mutating func choose(card: Card) {
        print(card)
    }

    init(cardContents: [CardContent]) {
        for i in 0 ..< cardContents.count {
            let content = cardContents[i]

            cards.append(Card(content: content, id: i * 2))
            cards.append(Card(content: content, id: i * 2 + 1))
        }
    }

    struct Card: Identifiable {
        var isFaceUp = true
        var isMatched = false
        var content: CardContent

        var id: Int
    }
}
