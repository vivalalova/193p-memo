//
//  EmojiMemoGame.swift
//  MemoGame
//
//  Created by Lova on 2020/5/23.
//  Copyright © 2020 taxigo. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model = EmojiMemoryGame.createModel()

    private static func createModel() -> MemoGameModel<String> {
        MemoGameModel<String>(cardContents: EmojiMemoryGame.data())
    }

    private static func data() -> [String] {
        let data = ["😀", "😍", "😎", "🧑‍🔬", "🥥", "🧄", "🥰", "😇"].shuffled()

        let from = data.count - 5
        let to = data.count - 2
        let random = Int.random(in: from...to)
        return Array(data.dropFirst(random))
    }

    var cards: [MemoGameModel<String>.Card] {
        model.cards
    }

    func choose(card: MemoGameModel<String>.Card) {
        model.choose(card: card)
    }
}
