//
//  memorizeApp.swift
//  memorize
//
//  Created by rrli  on 2021/3/9.
//

import SwiftUI

@main
struct memorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
