//
//  TodoDetailView.swift
//  ToDoListCodeAlong
//
//  Created by Dittrich, Jan - Student on 11/3/25.
//

import SwiftUI

struct TodoDetailView: View {
    var item: TodoItem
    var body: some View {
        Form{
            @Bindable var item = item
            
            TextField("Task Name", text: $item.title)
            
            Toggle("Completed", isOn: $item.isCompleted)
        }
        .padding()
        .navigationTitle(item.title)
    }
}

#Preview {
    @Previewable @State var mockItem = TodoItem(title: "Preview",isCompleted: false)
    TodoDetailView(item: mockItem)
}
