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
        let data = ["😀", "😍", "😎"]
        return MemoGameModel<String>(cardContents: data)
    }

    var cards: [MemoGameModel<String>.Card] {
        model.cards
    }

    func choose(card: MemoGameModel<String>.Card) {
        model.choose(card: card)
    }
}
