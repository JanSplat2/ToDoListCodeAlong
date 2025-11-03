//
//  TodoItem.swift
//  ToDoListCodeAlong
//
//  Created by Dittrich, Jan - Student on 11/3/25.
//

import Foundation
import SwiftUI

enum Priority: String, CaseIterable, Identifiable, Codable {
    case low = "Low"
    case medium = "Medium"
    case high = "High"
    
    var id: String { rawValue }
    var color: Color {
        switch self {
        case .low: return .green
        case .medium: return .yellow
        case .high: return .red
        }
    }
}

@Observable
class TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var priority: Priority
    
    init(title: String, isCompleted: Bool = false, priority: Priority = .medium) {
        self.title = title
        self.isCompleted = isCompleted
        self.priority = priority
    }
}

