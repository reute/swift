//
//  CoreDataManager.swift
//  ToDoApp
//
//  Created by carmen 1 on 20.03.19.
//

import Foundation
import CoreData

class CoreDataManager {
    
    // Context
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    static func createObj(name: String) {
        let todo = NSEntityDescription.insertNewObject(forEntityName: "Todo", into: context) as! Todo
        todo.name = name
        todo.completed = false
        
        saveContext()
        print("Obj erstellt")
    }
    // Obj erstellen
    
    // Obj laden
    
    // Context speichern
    class func saveContext() {
        do  {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
}
