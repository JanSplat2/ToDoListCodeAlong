//
//  TodoDetailView.swift
//  ToDoListCodeAlong
//
//  Created by Dittrich, Jan - Student on 11/3/25.
//

import SwiftUI

struct TodoDetailView: View {
    @Bindable var item: TodoItem
    
    var body: some View {
        Form {
            TextField("Title", text: $item.title)
            
            Toggle("Completed", isOn: $item.isCompleted)
            
            Picker("Priority", selection: $item.priority) {
                ForEach(Priority.allCases) { level in
                    Text(level.rawValue)
                        .tag(level)
                }
            }
        }
        .navigationTitle("Task Details")
    }
}


#Preview {
    @Previewable @State var mockItem = TodoItem(title: "Preview",isCompleted: false)
    TodoDetailView(item: mockItem)
}
