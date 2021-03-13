//
//  GridView.swift
//  memorize
//
//  Created by rrli  on 2021/3/13.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item)->ItemView

    init(items: [Item],  viewForItem: @escaping (Item)-> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
        print("count \(self.items.count)")
    }

    var body: some View {
        GeometryReader { geometry in
            let layout = GridLayout(itemCount: self.items.count, in: geometry.size)
            ForEach(self.items) { item in
                let index = self.firstIndex(of: item)

                self.viewForItem(item)
                    .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                    .position(layout.location(ofItemAt: index))
            }
        }
    }

    func firstIndex(of item: Item) -> Int {
        for index in 0..<items.count {
            if item.id == items[index].id {
                return index
            }
        }
        return 0 // TODO: bogus
    }
}
