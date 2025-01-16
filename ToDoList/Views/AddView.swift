//
//  AddView.swift
//  ToDoList
//
//  Created by Henry Stephen on 2025/1/15.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("add some texts here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 60)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button(action: saveButtonPress, label: {
                    Text("save".uppercased())
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            .padding(16)
        }
        .navigationTitle("Add an Item 📝")
        .alert("WRONG", isPresented: $showAlert) {
            Button("OK", role: .cancel) {
                // Alert 消失的行为
            }
        } message: {
            Text(alertTitle)
                .font(.headline)
        }
    }
    
    func saveButtonPress()  {
        if isTextAppropriate() {
            listViewModel.addItem(title: textFieldText)
            dismiss()
        }
    }
    
    func isTextAppropriate() -> Bool {
        if textFieldText.isEmpty {
            alertTitle = "Your new item is empty!"
            showAlert.toggle()
            return false
        }
        return true
    }
}

#Preview {
    NavigationView {
        AddView()
            .environmentObject(ListViewModel())
    }
}
