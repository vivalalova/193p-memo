//
//  CardView.swift
//  MemoGame
//
//  Created by Lova on 2020/5/23.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card: MemoGameModel<String>.Card

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)

            if card.isFaceUp || card.isMatched {
                Text(card.content)
                    .foregroundColor(.white)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoGameModel.Card(content: "hi", id: 0))
    }
}
