//
//  AddView.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/15.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("add some texts here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 60)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    
                } label: {
                    Text("save".uppercased())
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

            }
            .padding(16)
                
        }
        .navigationTitle("Add an Item 📝")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
