//
//  ToDoListCodeAlongApp.swift
//  ToDoListCodeAlong
//
//  Created by Dittrich, Jan - Student on 11/3/25.
//

import SwiftUI

@main
struct ToDoListCodeAlongApp: App {
    @State private var manager = TodoListManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(manager)
        }
    }
}
