//
//  CaloriesApp.swift
//  Calories
//
//  Created by viktor on 01.07.2022.
//

import SwiftUI

@main
struct CaloriesApp: App {
    @StateObject private var dataController = DataController()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
