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
        TodoItem(title: "Buy Milk"),
        TodoItem(title:"Go to the Gym"),
        TodoItem(title:"Learn SwiftUI"),
        TodoItem(title:"Read a Book")
    ]
    func addItem(title: String) {
        items.append(TodoItem(title: title))
    }
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
