//
//  ListViewModels.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/16.
//

import Foundation

/*
 CRUD FUNCTIONS
 
 C - R - U - D: Create - Read - Update - Delete
 */

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is my first title!", isComplete: true),
            ItemModel(title: "This is my second title!", isComplete: false),
            ItemModel(title: "This is my third title!", isComplete: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func ItemDelete(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func MoveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isComplete: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
//        if let index = items.firstIndex { (exsitingItem) -> Bool in
//            return exsitingItem.id == item.id
//        } {
//            // run this code
//        }
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
        
    }
}