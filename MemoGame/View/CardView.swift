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
            self.body(for: geometry.size)
        }
    }

    private func body(for size: CGSize) -> some View {
        ZStack {
            if self.card.isFaceUp || self.card.isMatched {
                RoundedRectangle(cornerRadius: self.cornerRadius).fill(Color.green)
                RoundedRectangle(cornerRadius: self.cornerRadius).stroke(lineWidth: self.lineWidth)

                Text(self.card.content)
                    .foregroundColor(.white)
            } else {
                RoundedRectangle(cornerRadius: self.cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: self.cornerRadius).stroke(lineWidth: self.lineWidth)
            }
        }
        .frame(height: size.width * self.radio)
        // .font(.largeTitle)
        .font(self.font(for: size))
//        .minimumScaleFactor(self.minimumScaleFactor)
//        .lineLimit(1)
    }

    // MARK: -

    let cornerRadius: CGFloat = 10
    let lineWidth: CGFloat = 3
    let radio: CGFloat = 3 / 2
    private func font(for size: CGSize) -> Font {
        .system(size: min(size.width, size.height) * 0.75)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoGameModel.Card(content: "hi", id: 0))
    }
}
