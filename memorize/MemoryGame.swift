//
//  MemoryGame.swift
//  memorize
//
//  Created by rrli  on 2021/3/9.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card)  {
        print("card chosen \(card)")
    }
    
    init(numberOfPairsCards:Int, cardContentFactory: (Int)->CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card :Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = true
        var content: CardContent
        var id: Int
    }
}
