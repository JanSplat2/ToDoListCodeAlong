//
//  ContentView.swift
//  ToDoListCodeAlong
//
//  Created by Dittrich, Jan - Student on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(TodoListManager.self) var manager
    var body: some View {
        
        NavigationStack{
            List {
                ForEach(manager.items, id: \.id) { item in
                    NavigationLink{
                        TodoDetailView(item: item)
                    } label: {
                        HStack{
                            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                            Text(item.title)
                                .strikethrough(item.isCompleted, pattern: .solid)
                        }
                    }
                }
                .onDelete(perform: manager.deleteItem)
            }
            .navigationTitle(Text("To-Do List"))
            .toolbar {
                EditButton()
                Button("Add"){
                    manager.addItem(title: "New Item")
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var MockManager = TodoListManager()
    ContentView()
        .environment(MockManager)
}
