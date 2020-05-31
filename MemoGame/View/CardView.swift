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
            if card.isFaceUp || card.isMatched {
                RoundedRectangle(cornerRadius: 6).fill(Color.green)
                RoundedRectangle(cornerRadius: 6).stroke(lineWidth: 3)

                Text(card.content)
                    .foregroundColor(.white)
            } else {
                RoundedRectangle(cornerRadius: 6).fill(Color.white)
                RoundedRectangle(cornerRadius: 6).stroke(lineWidth: 3)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoGameModel.Card(content: "hi", id: 0))
    }
}
