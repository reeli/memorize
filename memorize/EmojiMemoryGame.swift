//
//  EmojMemoryGame.swift
//  memorize
//
//  Created by rrli  on 2021/3/9.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🍇", "👻", "🤡"]
        return MemoryGame<String>(numberOfPairsCards: emojis.count) {pairIndex in emojis[pairIndex]}
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

