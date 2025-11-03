//
//  TodoListManager.swift
//  ToDoListCodeAlong
//
//  Created by Dittrich, Jan - Student on 11/3/25.
//

import Foundation
import SwiftUI

@Observable
class TodoListManager {
    var items: [TodoItem] = [
        TodoItem(title: "Buy Milk", priority: .low),
        TodoItem(title: "Go to the Gym", priority: .medium),
        TodoItem(title: "Learn SwiftUI", priority: .high),
        TodoItem(title: "Read a Book", priority: .low)
    ]
    
    func addItem(title: String) {
        items.append(TodoItem(title: title))
    }
    
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
