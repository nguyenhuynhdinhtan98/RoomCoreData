//
//  CoreDataManager.swift
//  Rooms
//
//  Created by Tân Nguyễn on 28/11/2022.
//

import Foundation
import CoreData

class CoreDataManager {
    static let shared = CoreDataManager()
    let nSPersistentContainer: NSPersistentContainer
    
    private init() {
        self.nSPersistentContainer = NSPersistentContainer(name: "RoomModel")
        self.nSPersistentContainer.loadPersistentStores { descriptions, errors  in
            if let error = errors {
                fatalError("Load persistent fail \(error)")
            }
        }
    }
    
    public func save() {
        do {
            try self.nSPersistentContainer.viewContext.save()
        }catch {
            self.nSPersistentContainer.viewContext.rollback()
            print("Save fail")
        }
    }
}
