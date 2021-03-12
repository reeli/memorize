//
//  ContentView.swift
//  memorize
//
//  Created by rrli  on 2021/3/9.
//

import SwiftUI

struct EmojiMemoryGameView: View {
   @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            Text("hello").font(.headline)
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .padding() // 为 ZStack 增加修饰，表示：在 ZStack 内的 所有 View，都增加 paddin
        .foregroundColor(Color.orange) // // 为 ZStack 增加修饰，表示：在 ZStack 内的 所有 View，color 都变为 blue
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    var viewModel: EmojiMemoryGame
    
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3).foregroundColor(Color.orange)
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}
