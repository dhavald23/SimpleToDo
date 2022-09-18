//
//  CoreDataManager.swift
//  SimpleToDo
//
//  Created by Dhaval Desai on 9/18/22.
//

import Foundation
import CoreData

class CoreDataManager{
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init(){
        persistentContainer = NSPersistentContainer(name: "SimpleToDo")
        persistentContainer.loadPersistentStores{desscription , error in
            if let error = error {
                fatalError("Unable to initialize core Data \(error)")
            }
        }
    }
}
