//
//  ListView.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/6.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This my first title!",
        "This my second!",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(DefaultListStyle())
    }
}

#Preview {
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
