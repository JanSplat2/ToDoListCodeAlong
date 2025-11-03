//
//  TodoItem.swift
//  ToDoListCodeAlong
//
//  Created by Dittrich, Jan - Student on 11/3/25.
//

import Foundation
import SwiftUI

@Observable
class TodoItem: Identifiable{
    let id = UUID()
    var title: String
    var isCompleted: Bool
    
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
    
    
}
