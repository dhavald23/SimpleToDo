//
//  SimpleToDoApp.swift
//  SimpleToDo
//
//  Created by Dhaval Desai on 9/18/22.
//

import SwiftUI

@main
struct SimpleToDoApp: App {
    
    let persistenceContainer = CoreDataManager.shared.persistentContainer
    
    

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContainer.viewContext)
        }
    }
}
