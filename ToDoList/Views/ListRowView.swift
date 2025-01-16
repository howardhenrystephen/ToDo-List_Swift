//
//  ListRowView.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/6.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isComplete ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isComplete ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.headline)
        .padding(.vertical, 8)
    }
}

#Preview {
    Group {
        ListRowView(item: ItemModel(title: "This is my first title!", isComplete: true))
        ListRowView(item: ItemModel(title: "This is my second title!", isComplete: false))
    }
}
