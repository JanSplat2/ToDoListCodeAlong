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
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
                // MARK: - Task Counters
                HStack(spacing: 20) {
                    Text("Total: \(manager.items.count)")
                    Text("Completed: \(manager.items.filter { $0.isCompleted }.count)")
                    Text("Incomplete: \(manager.items.filter { !$0.isCompleted }.count)")
                }
                .font(.headline)
                .padding(.horizontal)
                
                // MARK: - List
                List {
                    ForEach(manager.items, id: \.id) { item in
                        NavigationLink {
                            TodoDetailView(item: item)
                        } label: {
                            HStack {
                                
                                Circle()
                                    .fill(item.priority.color)
                                    .frame(width: 12, height: 12)
                                
                                
                                Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                                
                                Text(item.title)
                                    .strikethrough(item.isCompleted)
                            }
                        }
                    }
                    .onDelete(perform: manager.deleteItem)
                }
            }
            .navigationTitle(Text("To-Do List"))
            .toolbar {
                EditButton()
                Button("Add") {
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
