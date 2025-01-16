//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/6.
//

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manage Models for view
 
 */

import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
                .navigationTitle("ToDo List")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton() // 替代原先的 leading 按钮
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink("Add", destination: AddView())
                    }
                }
            }
        }
    }
}
