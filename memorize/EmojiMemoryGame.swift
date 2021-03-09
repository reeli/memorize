//
//  EmojMemoryGame.swift
//  memorize
//
//  Created by rrli  on 2021/3/9.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🤡"]
        return MemoryGame<String>(numberOfPairsCards: 2) {pairIndex in emojis[pairIndex]}
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
