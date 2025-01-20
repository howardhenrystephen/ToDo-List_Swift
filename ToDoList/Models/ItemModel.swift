//
//  ItemModel.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/16.
//
import Foundation

// Immutable Struct
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isComplete: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplete: Bool) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplete: !isComplete)
    }
}


