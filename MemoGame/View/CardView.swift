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
        GeometryReader { geometry in
            ZStack {
                if self.card.isFaceUp || self.card.isMatched {
                    RoundedRectangle(cornerRadius: 6).fill(Color.green)
                    RoundedRectangle(cornerRadius: 6).stroke(lineWidth: 3)

                    Text(self.card.content)
                        .foregroundColor(.white)
                } else {
                    RoundedRectangle(cornerRadius: 6).fill(Color.white)
                    RoundedRectangle(cornerRadius: 6).stroke(lineWidth: 3)
                }
            }
            .frame(height: geometry.size.width * 3 / 2)
        }
        .font(.largeTitle)
        .minimumScaleFactor(0.5)
        .lineLimit(1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoGameModel.Card(content: "hi", id: 0))
    }
}
