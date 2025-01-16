//
//  ListRowView.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/6.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is first title")
}
