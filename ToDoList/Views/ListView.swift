//
//  ListView.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/6.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                 ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel
                                .updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.ItemDelete)
            .onMove(perform: listViewModel.MoveItem)
        }
    }
    
    
}

#Preview {
    NavigationStack {
        ListView()
        .navigationTitle("ToDo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton() // 替代原先的 leading 按钮
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
    .environmentObject(ListViewModel())
}
